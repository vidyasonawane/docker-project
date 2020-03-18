const express = require('express');

const app = express();

app.get('/', (eq, res) => {
    res.send("How are you?");
});

app.listen(8080, () => {
    console.log("Listening on port 8080");
})