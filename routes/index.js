var express = require('express');
var router = express.Router();
var SQL = require('../models/sql');
var sql = new SQL();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.post('/getUser', function(req, res, next) {
  var condition = null;
  if (req.body.id) {
    condition = "id=" + req.body.id;
  }
  sql.select("users", "*", condition, function(data) {
    res.send(data);
  })
});



module.exports = router;
