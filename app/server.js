const express = require("express");
const app = express();
const port = process.env.PORT || 3000;

app.get("/", (req, res) => {
  res.send("Hello from Demo-K8s running on EKS via Helm & GitHub Actions! 🎉");
});

app.listen(port, () => {
  console.log(`Server listening on port ${port}`);
});
