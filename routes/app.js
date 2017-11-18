var express = require('express');
var router = express.Router();
var SQL = require('../models/sql');
var sql = new SQL();

/* APP Interface */
router.get('/getGuideNotes', function(req, res, next) {
  var condition = ' where status=1 ';
  if (req.query.id) {
    condition += 'and id=' + req.query.id + ' order by page_view desc';
  } else {
    condition += ' order by page_view desc';
  }
  sql.select("guideNotes", "*", condition, function(data) {
    res.send(data);
  });
});

router.get('/getTravelNotes', function(req, res, next) {
  var condition = ' where status=1 ';
  if (req.query.id) {
    condition += 'and id=' + req.query.id + ' order by page_view desc';
  } else {
    condition += ' order by page_view desc';
  }
  sql.select("travelNotes", "*", condition, function(data) {
    res.send(data);
  });
});

router.get('/getDestination', function(req, res, next) {
  var condition = ' where status=1 ';
  if (req.query.id) {
    condition += 'and id=' + req.query.id ;
  }
  sql.select("destination", "*", condition, function(data) {
    res.send(data);
  });
});

module.exports = router;
