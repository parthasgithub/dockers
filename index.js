const express = require('express');

const app = express();

const path = require('path');
app.get('/', (req, res) => {
  res.send('Hi there');
});

app.listen(8080, () => {
    console.log('Listening on port 8080');
});

