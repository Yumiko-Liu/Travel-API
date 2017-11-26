var express = require('express');
var async = require('async');
var router = express.Router();
var SQL = require('../models/sql');
var sql = new SQL();

/* APP Interface */
router.get('/getUsers', function(req, res, next) {
  var condition = ' where status=1 ';
  if (req.query.id) {
    condition += 'and id=' + req.query.id + ' order by fans_num desc';
  }else {
    condition += ' order by fans_num desc';
  }
  sql.select("users", "*", condition, function(data) {
    res.send(data);
  });
});

router.get('/getGuideNotes', function(req, res, next) {
  var condition = ' where status=1 ';
  if (req.query.id) {
    condition += 'and id=' + req.query.id + ' order by page_view desc';
  } else if (req.query.city) {
    condition += 'and city="' + req.query.city + '" order by page_view desc';
  } else {
    condition += ' order by page_view desc';
  }
  sql.select("guidenotes", "*", condition, function(data) {
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
  sql.select("travelnotes", "*", condition, function(data) {
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

router.get('/getAllDestination', function(req, res, next) {

  var getRegions = function(callback) {
    var condition = ' where status=1 group by region';
    sql.select("destination", "region", condition, function(data) {
      callback(data);
    });
  }

  getRegions(function(regions) {
  
    async.mapSeries(regions, function(item, callback) {
      var AllDestination = new Object();
      sql.select("destination", "*", " where status=1 and region='" + item.region + "'", function(data) {
        AllDestination[item.region] = data;
        callback(null, AllDestination); 
      });
    }, function(err, results) {
      res.send(results);
    });

  });

});

router.get('/addGuideNotesPageView', function(req, res, next) {
  var params = {
    plus: "page_view"
  };
  sql.update("guidenotes", params, req.query.id, function() {
    res.send({
      "result": 1
    });
  });
});

router.get('/addTravelNotesPageView', function(req, res, next) {
  var params = {
    plus: "page_view"
  };
  sql.update("travelnotes", params, req.query.id, function() {
    res.send({
      "result": 1
    });
  });
});

router.get('/addGuideNotesLike', function(req, res, next) {
  var params = {
    plus: "like_num"
  };
  sql.update("guidenotes", params, req.query.id, function() {
    res.send({
      "result": 1
    });
  });
});

router.get('/addTravelNotesLike', function(req, res, next) {
  var params = {
    plus: "like_num"
  };
  sql.update("travelnotes", params, req.query.id, function() {
    res.send({
      "result": 1
    });
  });
});

module.exports = router;
