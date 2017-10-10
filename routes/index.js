var express = require('express');
var router = express.Router();
var SQL = require('../models/sql');
var sql = new SQL();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.post('/getUser', function(req, res, next) {
  var _filter = "id=" + req.body.id;
  sql.select("users", "*", _filter, function(data) {
    res.send(data);
  })
});

module.exports = router;
