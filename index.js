const express = require('express');
const app = express();
const port = 3000;

app.set('view engine', 'ejs');

app.get('/', (req, res) => {
  res.render('index');
});

// Only start the server if this file is run directly (e.g., not in tests)
if (require.main === module) {
    const server = app.listen(port, () => {
        console.log(`Example app listening on port ${port}`);
    });

    // For testing purposes, export the server too
    module.exports = server;
} else {
    // Export the app for testing
    module.exports = app;
}
