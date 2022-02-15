const http = require('http')
const { load } = require('./Lab10.js');
const express = require('express')
const app = express();
const port = require('cors');
app.use(cors({
    orgin: "*",
}))
const port = 5000;
app.listen(port, () => console.log("Server is Running.."));
app.get('/user', (req, res) => {
    res.send(load())
});