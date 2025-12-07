// Production-ready Express server for Render

const express = require("express");
const path = require("path");

const app = express();

// Render **must** provide the PORT. Do not use fallback.
const PORT = process.env.PORT;
if (!PORT) {
  console.error("❌ ERROR: Render did not provide a PORT environment variable.");
  process.exit(1);
}

// Serve static frontend files
app.use(express.static(path.join(__dirname, "app")));

// Health check endpoint
app.get("/health", (req, res) => {
  res.json({
    status: "healthy",
    timestamp: new Date().toISOString(),
  });
});

// Serve index.html for all other routes (SPA fallback)
app.get("*", (req, res) => {
  res.sendFile(path.join(__dirname, "app", "index.html"));
});

// Start the server
app.listen(PORT, () => {
  console.log(`🚀 Server running on Render-assigned port ${PORT}`);
});
