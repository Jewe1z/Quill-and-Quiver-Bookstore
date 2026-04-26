// Express setup
const express = require('express');
const path = require('path');
const rout = express.Router();
require('dotenv').config();

// Nodemailer setup for emailing receipt
const nodemailer = require('nodemailer');
const transporter = nodemailer.createTransport({
    service: 'gmail',
    auth: {
        user: process.env.EMAIL_USER,
        pass: process.env.EMAIL_PASSWORD
    }
});

// Import DB
const pool = require('./database');

// Import bcrypt for password hashing
const bcrypt = require('bcrypt');
const saltRounds = 10;

// Creating Routes

rout.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'pages', 'index.html'));
});

// Featured Books
rout.get('/api/featured-books', async (req, res) => {
    try {
        // These book Ids can be changed based on what books I want to feature
        const featuredBooks = await pool.query(
            'SELECT * FROM books WHERE book_id IN (5, 16, 19)'
        );
        res.json(featuredBooks.rows);
    } catch (err) {
        console.error(err.message);
        res.status(500).send('Database Error');
    }
});

// Select all Books
rout.get('/api/books', async (req, res) => {
    try {
        const books = await pool.query('SELECT * FROM books WHERE quantity > 0');
        res.json(books.rows);
    } catch (err) {
        console.error(err.message);
        res.status(500).send('Database Error');
    }
});

// Books By Genre
rout.get('/api/genres/:genre_id/books', async (req, res) => {
    const genreId = req.params.genre_id;
    try {
        // Join books with book genres so we can search for books by genres
        const books = await pool.query(
            'SELECT b.* FROM books b JOIN book_genres bg ON b.book_id = bg.book_id WHERE bg.genre_id = $1 AND b.quantity > 0',
            [genreId]
        );
        if (books.rows.length === 0) {
            return res.status(404).send('No books found for this genre');
        }
        res.json(books.rows);
    } catch (err) {
        console.error(err.message);
        res.status(500).send('Database Error');
    }
});

// Book By ID for Book Details Page
rout.get('/api/books/:id', async (req, res) => {
    const bookId = req.params.id;
    try {
        const book = await pool.query(
            'SELECT * FROM books WHERE book_id = $1',
            [bookId]
        );
        if (book.rows.length === 0) {
            return res.status(404).send('Book not found');
        }
        res.json(book.rows[0]);
    } catch (err) {
        console.error(err.message);
        res.status(500).send('Database Error');
    }
});

// Search Books By Title / Author
rout.get('/api/search', async (req, res) => {
    const query = req.query.q;
    try {
        // Join authors and books so we can search for both
        const books = await pool.query(
            'SELECT DISTINCT b. * FROM books b LEFT JOIN book_authors ba ON b.book_id = ba.book_id LEFT JOIN authors a ON ba.author_id = a.author_id WHERE (b.title ILIKE $1 OR a.author_name ILIKE $1) AND b.quantity > 0',
            [`%${query}%`]
        );
        res.json(books.rows);
    } catch (err) {
        console.error(err.message);
        res.status(500).send('Database Error');
    }
});

// Check if user is logged in
rout.get('/api/user', (req, res) => {
    if (!req.session.userId) {
        return res.json({ loggedIn: false });
    }
    res.json({ loggedIn: true, username: req.session.userId.username });
});

// User Registration
rout.post('/api/register', async (req, res) => {
    const { username, email, password } = req.body;
    try {
        // Does username or email exist?
        const existingUser = await pool.query(
            'SELECT * FROM users WHERE username = $1 OR email = $2',
            [username, email]
        );
        // If exists
        if (existingUser.rows.length > 0) {
            return res.status(400).send('Username or email already exists');
        }
        // Hash password
        const hashedPassword = await bcrypt.hash(password, saltRounds);
        // Insert user information if user does not exist
        const result = await pool.query(
            'INSERT INTO users (username, email, password) VALUES ($1, $2, $3) RETURNING *',
            [username, email, hashedPassword]
        );
        res.json(result.rows[0]);
    } catch (err) {
        console.error(err.message);
        res.status(500).send('Database Error');
    }
});

// User Login
rout.post('/api/login', async (req, res) => {
    const { username, password } = req.body;  
    try {
        // Does user exist?
        const user = await pool.query(
            'SELECT * FROM users WHERE username = $1',
            [username]
        );
        // If no user by that username
        if (user.rows.length === 0) {
            return res.status(401).send('Invalid credentials');
        }
        // Compare password entered with password matched with the username in the DB
        const isPasswordValid = await bcrypt.compare(password, user.rows[0].password);
        // If no match
        if (!isPasswordValid) {
            return res.status(401).send('Invalid credentials');
        }
        // Create session for user once logged in
        req.session.userId = {
            user_id: user.rows[0].user_id,
            username: user.rows[0].username
        };
        res.json({ message: 'Login successful', user: req.session.userId });
    } catch (err) {
        console.error(err.message);
        res.status(500).send('Database Error');
    }
});

// Logout / destroy session
rout.get('/api/logout', (req, res) => {
    req.session.destroy((err) => {
        if (err) {
            console.error(err);
            return res.status(500).send('Logout failed');
        }
        res.json({ message: 'Logout successful' });
    });
});

// Get cart from database / cart saves for each user
rout.get('/api/cart', async (req, res) => {
    if (!req.session.userId) {
        return res.status(401).send('Please Log In');
    }
    try {
        const cart = await pool.query(
            'SELECT c.cart_id, b.book_id,b.title, b.price, b.front_cover, b.back_cover, c.quantity FROM cart c JOIN books b ON c.book_id = b.book_id WHERE c.user_id = $1',
            [req.session.userId.user_id]
        );
        res.json(cart.rows);
    } catch (err) {
        console.error(err.message);
        res.status(500).send('Database Error');
    }
});

// Post book to cart in DB
rout.post('/api/cart', async (req, res) => {
    if (!req.session.userId) {
        return res.status(401).send('Please Log In');
    }
    const { book_id, quantity } = req.body;
    try {
        // Find available stock
        const stock = await pool.query('SELECT quantity FROM books WHERE book_id = $1', [book_id]);
        const availableStock = stock.rows[0].quantity;

        // Check if book is already in cart
        const existingCartItem = await pool.query(
            'SELECT * FROM cart WHERE user_id = $1 AND book_id = $2',
            [req.session.userId.user_id, book_id]
        );
        // If book is in cart, set currentQuantity to amount of that book in cart, otherwise = 0
        const currentQuantity = existingCartItem.rows.length > 0 ? existingCartItem.rows[0].quantity : 0;

        if (currentQuantity + quantity > availableStock) {
            return res.status(400).send('Not enough stock available');
        }
        // If book is in cart already, update quantity
        if (existingCartItem.rows.length > 0) {
            await pool.query(
                'UPDATE cart SET quantity = quantity + $1 WHERE user_id = $2 AND book_id = $3',
                [quantity, req.session.userId.user_id, book_id]
            );
        // Otherwise insert book into cart
        } else {
            await pool.query(
                'INSERT INTO cart (user_id, book_id, quantity) VALUES ($1, $2, $3)',
                [req.session.userId.user_id, book_id, quantity]
            );
        }
        res.json({ message: 'Book(s) added to cart' });
    } catch (err) {
        console.error(err.message);
        res.status(500).send('Database Error');
    }
});

// Remove book from cart
rout.delete('/api/cart/:book_id', async (req, res) => {
    if (!req.session.userId) {
        return res.status(401).send('Please Log In');
    }
    const { book_id } = req.params;
    try {
        await pool.query(
            'DELETE FROM cart WHERE user_id = $1 AND book_id = $2',
            [req.session.userId.user_id, book_id]
        );
        res.json({ message: 'Item removed from cart' });
    } catch (err) {
        console.error(err.message);
        res.status(500).send('Database Error');
    }
});

// Get reviews for Book Details Page
rout.get('/api/books/:id/reviews', async (req, res) => {
    const bookId = req.params.id;
    try {
        const reviews = await pool.query(
            'SELECT r.review_id, r.rating, r.review_text, r.review_date, u.username FROM reviews r JOIN users u ON r.user_id = u.user_id WHERE r.book_id = $1 ORDER BY r.review_date DESC',
            [bookId]
        );
        res.json(reviews.rows);
    } catch (err) {
        console.error(err.message);
        res.status(500).send('Database Error');
    }
});

// Post Review for Book Details Page To DB
rout.post('/api/books/:id/reviews', async (req, res) => {
    if (!req.session.userId) {
        return res.status(401).send('Please Log In');
    }
    const bookId = req.params.id;
    const { rating, review_text } = req.body;
    const userId = req.session.userId.user_id;
    try {
        await pool.query(
            'INSERT INTO reviews (book_id, user_id, rating, review_text, review_date) VALUES ($1, $2, $3, $4, NOW())',
            [bookId, userId, rating, review_text]
        );
        res.json({ message: 'Review submitted' });
    } catch (err) {
        console.error(err.message);
        res.status(500).send('Database Error');
    }
}); 

// Stripe Payment
// Import Stripe
const stripe = require('stripe')(process.env.STRIPE_SECRET_KEY);
rout.get('/api/config', (req, res) => {
    res.json({ stripePublishKey: process.env.STRIPE_PUBLISH_KEY });
});
// Payment
rout.post('/api/create-payment-intent', async (req, res) => {
// Total from cart
    const { amount } = req.body;

// console.log("Received amount for Stripe:", amount);

    // Create transaction through stripe
    try {
        const paymentIntent = await stripe.paymentIntents.create({
            amount,
            currency: 'usd',
            automatic_payment_methods: { enabled: true }
        });
        res.json({ clientSecret: paymentIntent.client_secret });
    } catch (error) {
        console.error('Error creating payment intent:', error);
        res.status(500).send('Internal Server Error');
    }
});

// Payment transaction
rout.post('/api/order', async (req, res) => {
    if (!req.session.userId) {
        return res.status(401).send('Please Log In');
    }
    const { items, total, shipping } = req.body;
    const userId = req.session.userId.user_id;
    try {
        // Begin Transaction
        await pool.query('BEGIN');

        // Make sure itmes are still in stock
        for (const item of items) {
            const stock = await pool.query('SELECT quantity FROM books WHERE book_id = $1', [item.book_id]);
            // If the stock is less than the amount in the cart, rollback the transaction
            if (stock.rows[0].quantity < item.quantity) {
                await pool.query('ROLLBACK');
                return res.status(400).json({ error: `"${item.title}" no longer has enough stock.` });
            }
        }

        // Get buyer's email from the database
        const userResult = await pool.query(
            'SELECT email, username FROM users WHERE user_id = $1',
            [userId]
        );
        const { email, username } = userResult.rows[0];

        // Update stock of books in database
        for (const item of items) {
            await pool.query('UPDATE books SET quantity = quantity - $1 WHERE book_id = $2',
                [item.quantity, item.book_id]
            );
        }
 
        // Clear the cart
        await pool.query('DELETE FROM cart WHERE user_id = $1', [userId]);
        
        // Save transaction
        await pool.query('COMMIT');

        // Create the email receipt
        const itemsHtml = items.map(item =>
            `<tr>
                <td style="padding: 6px 16px 6px 0;">${item.title}</td>
                <td style="padding: 6px 16px 6px 0;">x${item.quantity}</td>
                <td style="padding: 6px 0;">$${(item.price * item.quantity).toFixed(2)}</td>
            </tr>`
        ).join('');
 
        // Format email
        await transporter.sendMail({
            from: '"The Quill and Quiver" <quillandquiver2593@gmail.com>',
            to: email,
            subject: 'Your Order Receipt — The Quill and Quiver',
            html: `
                <div style="font-family: Georgia, serif; max-width: 600px; margin: 0 auto; color: #333;">
                    <h2 style="color: #5c0d76;">The Quill and Quiver</h2>
                    <p>Hi <strong>${username}</strong>, thank you for your order!</p>
 
                    <table style="width: 100%; border-collapse: collapse; margin-bottom: 16px;">
                        <thead>
                            <tr style="border-bottom: 2px solid #7a5a9e;">
                                <th style="text-align:left; padding: 6px 16px 6px 0;">Title</th>
                                <th style="text-align:left; padding: 6px 16px 6px 0;">Qty</th>
                                <th style="text-align:left; padding: 6px 0;">Price</th>
                            </tr>
                        </thead>
                        <tbody>${itemsHtml}</tbody>
                    </table>
 
                    <p style="font-size: 1.1em;"><strong>Total: $${total}</strong></p>
                    <hr style="border-color: #7a5a9e;">
 
                    <p>
                        <strong>Shipping to:</strong><br>
                        ${shipping.name}<br>
                        ${shipping.address}<br>
                        ${shipping.city}, ${shipping.state} ${shipping.zip}
                    </p>
 
                    <p style="color: #5c0d76;">We hope you enjoy your books!</p>
                </div>
            `
        });
 
        // Return the email so the receipt page can display it
        res.json({ email });

        } catch (err) {
        // If any errors, rollback transaction
        await pool.query('ROLLBACK');

        console.error('Order error:', err.message);
        res.status(500).send('Order processing failed');
    }
});

// Export routs
module.exports = rout;
