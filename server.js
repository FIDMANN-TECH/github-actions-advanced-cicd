const express = require('express');
const path = require('path');

const app = express();

// Render ALWAYS provides PORT — do NOT set a fallback.
const PORT = process.env.PORT;
if (!PORT) {
  throw new Error("Render did not provide a PORT!");
}

// Serve the frontend folder "app/"
app.use(express.static(path.join(__dirname, 'app')));

// Health check endpoint
app.get('/health', (req, res) => {
  res.json({ status: 'ok', port: PORT, time: new Date().toISOString() });
});

// Always fallback to index.html
app.get('*', (req, res) => {
  res.sendFile(path.join(__dirname, 'app', 'index.html'));
});

app.listen(PORT, () => {
  console.log(`🚀 Server running on Render-assigned port ${PORT}`);
});
