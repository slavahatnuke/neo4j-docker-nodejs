var express = require('express');
var app = express();

var neo4j = require('node-neo4j');
var db = new neo4j('http://neo4j:test@neo4j:7474');

app.get('/load', function (req, res, next) {
    db.insertNode({
        name: 'Darth Vader',
        sex: 'male'
    }, ['Person'], function (err, node) {
        if (err) return next(err);

        res.json(node);
    });
});

app.get('/drop', function (req, res, next) {
    db.cypherQuery("MATCH (n) DETACH DELETE n", function (err, result) {
        if (err) return next(err);
        res.json(result);
    });
});

app.get('/', function (req, res, next) {
    db.cypherQuery("MATCH (person:Person) RETURN person", function (err, result) {
        if (err) return next(err);
        res.json(result.data);
    });
});

app.listen(3000, function () {
    console.log('started');
});