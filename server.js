const express = require('express');

const acctsRouter = require('./accounts/acctsRouter');

const server = express();

server.use(express.json());

server.use("/api/accounts", acctsRouter);

module.exports = server;