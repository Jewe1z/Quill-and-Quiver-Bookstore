const express = require('express');
const routes = require('./routes');
const app = express();
const path = require('path');
const session = require('express-session');
require('dotenv').config();

const port = process.env.PORT || 3000;

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.set('trust proxy', 1); 
app.use(session({
    secret: process.env.SESSION_CODE,
    resave: false,
    saveUninitialized: false,
    cookie: {
        secure: process.env.NODE_ENV === 'production',
        sameSite: 'lax',
        maxAge: 1000 * 60 * 60 * 24
    }
}));

app.use(express.static('pages'));

// Static folders for images
app.use('/frontCovers', express.static(path.join(__dirname, 'FrontCovers')));
app.use('/backCovers', express.static(path.join(__dirname, 'BackCovers')));

// Use routes file
app.use('/', routes);

// Local host
app.listen(port, () => {
    console.log(`Server running at http://localhost:${port}`);
});