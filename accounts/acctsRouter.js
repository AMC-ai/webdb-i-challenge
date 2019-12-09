const express = require("express");

// database access using knex
const knex = require("../data/db-config.js"); // <<< renamed to knex from db

const router = express.Router();

// CRUD app for db

router.get("/", (req, res) => {

});

router.get("/:id", (req, res) => {

});

router.post("/", (req, res) => {

});

router.put("/:id", (req, res) => {

});

router.delete("/:id", (req, res) => {

});

module.exports = router;