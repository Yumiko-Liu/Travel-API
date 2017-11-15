var express = require('express');
var router = express.Router();
var SQL = require('../models/sql');
var sql = new SQL();

/* APP Interface */
router.get('/getGuideNotes', function(req, res, next) {
  var condition = ' order by page_view desc';
  if (req.query.id) {
    condition = "id=" + req.query.id;
  }
  sql.select("guideNotes", "*", condition, function(data) {
    res.send(data);
  });
});

router.get('/getTravelNotes', function(req, res, next) {
  var condition = ' order by page_view desc';
  if (req.query.id) {
    condition = "id=" + req.query.id;
  }
  sql.select("travelNotes", "*", condition, function(data) {
    res.send(data);
  });
});

module.exports = router;
