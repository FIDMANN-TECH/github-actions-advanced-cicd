// -------------------------------
// Production Express Server
// Compatible with Render.com
// -------------------------------

const express = require('express');
const path = require('path');

const app = express();

// Render ALWAYS provides the PORT (do not set fallback)
const PORT = process.env.PORT;
if (!PORT) {
  throw new Error("❌ Render did not provide PORT environment variable!");
}

// Serve static files from the 'app' folder
app.use(express.static(path.join(__dirname, 'app')));

// Health check endpoint for Render monitoring
app.get('/health', (req, res) => {
  res.json({
    status: 'ok',
    port: PORT,
    time: new Date().toISOString()
  });
});

// SPA fallback — always return index.html for all other routes
app.get('*', (req, res) => {
  res.sendFile(path.join(__dirname, 'app', 'index.html'));
});

// Start the server
app.listen(PORT, () => {
  console.log(`🚀 Server running on Render-assigned port ${PORT}`);
});
