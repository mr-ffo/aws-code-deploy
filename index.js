// Import Express, a framework for building web servers
const express = require('express');
// Create an Express application
const app = express();
// Define a route for the root URL (/)
app.get('/', (req, res) => {
  res.send('Hello from Node.js! Welcome to the Folarin Favour Olaoluwapo DevOps Challenge!');
});
// Start the server on port 3000
app.listen(3000, () => {
  console.log('Server running on http://localhost:3000');
});