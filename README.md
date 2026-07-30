# Quill & Quiver Bookstore

A full-stack bookstore web application built as a senior capstone project. Handles book inventory browsing, user accounts, and order processing, backed by a PostgreSQL database.

**Live demo:** [quill-and-quiver-bookstore.onrender.com](https://quill-and-quiver-bookstore.onrender.com/)
> Note: the demo's database was hosted on Render but has since been taken down to avoid ongoing hosting costs, so live functionality is limited. See the walkthrough below for the app in action, or run it locally (instructions below).

<!-- Demo walkthrough -->
<video src="./docs/demo.mp4" controls width="600"></video>

If the embedded player doesn't load, you can view it directly: [`docs/demo.mp4`](./docs/demo.mp4)

## Features

- Browse book inventory with front/back cover images
- User account creation and management
- Shopping cart and Stripe-powered checkout
- Book reviews and ratings
- Order placement and order history
- RESTful API routes for dynamic content delivery
- Relational database schema with normalized tables for books, users, and orders

## Tech Stack

- **Backend:** Node.js, Express
- **Database:** PostgreSQL
- **Payments:** Stripe
- **Frontend:** HTML, CSS, JavaScript
- **Version Control:** Git / GitHub

## Project Structure

```
├── server.js          # Entry point, server setup, sessions, static file serving
├── routes.js           # API route definitions (books, cart, auth, orders, reviews, Stripe)
├── database.js         # PostgreSQL connection pool
├── schema.sql            # Database table definitions
├── seed.sql               # Sample book/author data
├── package.json         # Dependencies
├── pages/                # Frontend pages
│   ├── index.html         # Home page
│   ├── browse.html         # Browse/search books
│   ├── book.html            # Book details page
│   ├── cart.html             # Shopping cart
│   ├── payment.html           # Stripe checkout
│   ├── receipt.html            # Order receipt
│   ├── login.html                # Login
│   └── register.html              # Registration
├── FrontCovers/          # Book cover images
├── BackCovers/            # Book cover images
└── docs/
    └── demo.mp4            # Screen-recording walkthrough
```

## Running Locally

### Prerequisites

- [Node.js](https://nodejs.org/) (v16 or later recommended) and npm
- [PostgreSQL](https://www.postgresql.org/download/) (running locally or accessible remotely)
- A [Stripe](https://dashboard.stripe.com/register) account (for test API keys)
- A Gmail account with an [App Password](https://support.google.com/accounts/answer/185833) (only needed if you re-enable order receipt emails — see notes below)

### 1. Clone the repo

```bash
git clone https://github.com/Jewe1z/Quill-and-Quiver-Bookstore.git
cd Quill-and-Quiver-Bookstore
```

### 2. Install dependencies

```bash
npm install
```

### 3. Set up the database

1. Create a local PostgreSQL database:

   ```bash
   createdb bookstore
   ```

2. Load the schema, then the seed data:

   ```bash
   psql -d bookstore -f schema.sql
   psql -d bookstore -f seed.sql
   ```

   `schema.sql` creates all the tables the app needs (`users`, `books`, `authors`, `book_authors`, `genres`, `book_genres`, `cart`, `reviews`), along with their primary keys, foreign keys, and constraints.

   `seed.sql` populates `books`, `authors`, `book_authors`, and `book_genres` with the site's actual catalog (102 books, 52 authors) so the app has content to browse right away. It doesn't include any `users`, `cart`, or `reviews` data — you'll create those yourself by registering an account and using the app.

   > The `session` table (used by `connect-pg-simple` to store login sessions) isn't in `schema.sql` — it's created automatically the first time the server runs, or you can create it manually using the [connect-pg-simple table schema](https://github.com/voxpelli/node-connect-pg-simple#table-schema).

3. Note your connection string — you'll need it for the `.env` file below.

### 4. Configure environment variables

Create a `.env` file in the project root (same folder as `server.js`):

```env
# Server
PORT=3000
NODE_ENV=development

# Database
DATABASE_URL=postgresql://username:password@localhost:5432/bookstore

# Sessions
SESSION_CODE=some_long_random_secret_string

# Stripe
STRIPE_SECRET_KEY=sk_test_xxxxxxxxxxxxxxxxxxxx
STRIPE_PUBLISH_KEY=pk_test_xxxxxxxxxxxxxxxxxxxx

# Email (Nodemailer / Gmail) — optional, see notes below
EMAIL_USER=youraddress@gmail.com
EMAIL_PASSWORD=your_gmail_app_password
```

**Notes:**
- `DATABASE_URL` should point to your local Postgres instance while developing. `database.js` currently sets `ssl: { rejectUnauthorized: false }`, which is meant for hosted providers like Render — if your local Postgres doesn't use SSL, you may need to remove/adjust that option for local development.
- `SESSION_CODE` can be any random string — it's used to sign the session cookie.
- Stripe keys are available in your [Stripe Dashboard](https://dashboard.stripe.com/test/apikeys) under test mode.
- The order-receipt email code in `routes.js` is currently commented out, so `EMAIL_USER`/`EMAIL_PASSWORD` aren't required to run the app — only needed if you re-enable that feature.

### 5. Run the server

```bash
node server.js
```

Or with auto-restart during development:

```bash
npm install --save-dev nodemon
npx nodemon server.js
```

Visit `http://localhost:3000` (or whatever port you set in `PORT`).

### 6. Verify it's working

- Registering a new user, browsing books, adding to cart, and checking out with a [Stripe test card](https://docs.stripe.com/testing#cards) (e.g. `4242 4242 4242 4242`, any future expiry, any CVC) is a good end-to-end smoke test.

### Troubleshooting

- **"Database Error" on every request** — check that `DATABASE_URL` is correct and PostgreSQL is running.
- **Session not persisting / getting logged out** — make sure the `session` table exists for `connect-pg-simple`.
- **Stripe checkout fails** — confirm `STRIPE_SECRET_KEY` and `STRIPE_PUBLISH_KEY` are set and from the same Stripe account/mode (test vs. live).
- **Images not loading** — confirm `FrontCovers/` and `BackCovers/` exist and contain the referenced image files.

## What I Learned

Building this project involved designing a normalized relational schema, writing RESTful API routes, and connecting a Node/Express backend to a live PostgreSQL database — from schema design through deployment.

## Author

Jessica Pritchard — [LinkedIn](https://linkedin.com/in/jessica-pritchard-9a35242b0)
