var express = require('express');
var app = express();

var neo4j = require('node-neo4j');
var db = new neo4j('http://neo4j:test@neo4j:7474');

//console.log('insert');
//db.insertNode({
//    name: 'Darth Vader',
//    sex: 'male'
//},function(err, node){
//    if(err) throw err;
//
//    // Output node properties.
//    console.log(node.data);
//
//    // Output node id.
//    console.log(node._id);
//});

app.get('/', function(req, res){
    res.send('hello world');
});

app.listen(3000, function () {
    console.log('started');
});