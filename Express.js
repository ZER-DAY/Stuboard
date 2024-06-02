const express = require('express');
const path = require('path');
const bodyParser = require('body-parser');
const mysql = require('mysql');
const app = express();
app.use(bodyParser.json());
app.use(express.static(path.join(__dirname, 'public')));

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'root',
    database: 'students_db'
});

connection.connect(error => {
    if (error) {
        console.error('Error connecting to the database:', error);
    } else {
        console.log('Connected to the database');
    }
});

// Middleware to parse request bodies
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

// Set Content Security Policy headers
app.use((req, res, next) => {
    res.setHeader("Content-Security-Policy", "default-src 'self'; img-src 'self' data:; script-src 'self'; style-src 'self'");
    next();
});

// Serve static files from the public directory
app.use(express.static(path.join(__dirname, 'public')));

// Route to fetch top students
app.get('/topstudents', (req, res) => {
    const numberOfStudents = parseInt(req.query.numberOfStudents, 10);
    const query = `SELECT * FROM students ORDER BY rating DESC LIMIT ?`;
    connection.query(query, [numberOfStudents], (error, results) => {
        if (error) {
            console.error('Error fetching top students:', error);
            res.status(500).json({ success: false, message: 'Database query error' });
        } else {
            res.json(results);
        }
    });
});

// Route to handle login
app.post('/login', (req, res) => {
    const { username, password } = req.body;
    const query = `SELECT * FROM students WHERE username = ? AND password = ?`;
    connection.query(query, [username, password], (error, results) => {
        if (error) {
            console.error('Error during login:', error);
            res.status(500).json({ success: false, message: 'Database query error' });
        } else {
            if (results.length > 0) {
                res.json({ success: true });
            } else {
                res.json({ success: false, message: 'Invalid username or password' });
            }
        }
    });
});

// Route to handle registration
app.post('/register', (req, res) => {
    const { firstName, lastName, gender, phone, email, rating, username, password } = req.body;
    const query = `INSERT INTO students (first_name, last_name, gender, phone, email, rating, username, password) VALUES (?, ?, ?, ?, ?, ?, ?, ?)`;
    connection.query(query, [firstName, lastName, gender, phone, email, rating, username, password], (error, results) => {
        if (error) {
            console.error('Error during registration:', error);
            res.status(500).json({ success: false, message: 'Database query error' });
        } else {
            res.json({ success: true });
        }
    });
});

// Start the server
app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'public', 'index.html'));
});

app.listen(3000, () => {
    console.log('Server is running on port 3000');
});