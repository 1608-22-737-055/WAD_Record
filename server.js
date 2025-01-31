const express = require('express');
const bodyParser = require('body-parser');
const path = require('path');
const app = express();
const port = 3000;

app.use(bodyParser.json());

// Serve static files from the "public" directory
app.use(express.static(path.join(__dirname, 'public')));

app.post('/api/submit', (req, res) => {
    console.log(req.body);
    res.send({ message: 'Form submitted successfully!' });
});

app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
});