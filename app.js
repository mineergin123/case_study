const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('Hello World!');
});

if (require.main === module) {
  app.listen(port, () => {
    console.log(`Uygulama http://localhost:${port} adresinde çalışıyor`);
  });
}

module.exports = app;
