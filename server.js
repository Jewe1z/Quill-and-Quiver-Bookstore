const express = require('express');
const routes = require('./routes');
const app = express();
const path = require('path');
const session = require('express-session');
require('dotenv').config();

const port = process.env.PORT || 3000;

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(session({
    secret: 'your_secret_key',
    resave: false,
    saveUninitialized: true,
    cookieq: { secure: false } // If I decide to use HTTPS in the future, set this to true
}));

app.use(express.static('pages'));

// Static folders for images
app.use('/frontCovers', express.static(path.join(__dirname, 'FrontCovers')));
app.use('/backCovers', express.static(path.join(__dirname, 'BackCovers')));

// Use routes file
app.use('/', routes);

app.listen(port, () => {
    console.log(`Server running at http://localhost:${port}`);
});