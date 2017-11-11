var express = require('express');
var router = express.Router();
var SQL = require('../models/sql');
var sql = new SQL();
var multiparty = require('multiparty');
var util = require('util');
var fs = require('fs');

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
  });
});

router.post('/addUser', function(req, res, next) {
  var fields = ["avatar", "username", "password", "notes_num", "fans_num", "status"];
  var values = [req.body.avatar, req.body.username, req.body.password, 0, 0, req.body.status];
  sql.insert("users", fields, values, function() {
    res.send({
      "result": 1
    });
  });
});

router.post('/modifyUser', function(req, res, next) {
  var params = {};
  params.avatar = req.body.avatar;
  params.username = req.body.username;
  params.password = req.body.password;
  params.status = req.body.status;
  sql.update("users", params, req.body.id, function() {
    res.send({
      "result": 1
    });
  });
});

router.post('/getGuideNotes', function(req, res, next) {
  var condition = null;
  if (req.body.id) {
    condition = "id=" + req.body.id;
  }
  sql.select("guideNotes", "*", condition, function(data) {
    res.send(data);
  });
});

router.post('/addGuideNotes', function(req, res, next) {
  var fields = ["title", "cover", "pubtime", "page_view", "like_num", "city", "content", "status"];
  var values = [req.body.title, req.body.cover, req.body.pubtime, 0, 0, req.body.city, req.body.content, req.body.status];
  sql.insert("guideNotes", fields, values, function() {
    res.send({
      "result": 1
    });
  });
});

router.post('/modifyGuideNotes', function(req, res, next) {
  var params = {};
  params.title = req.body.title;
  params.cover = req.body.cover;
  params.city = req.body.city;
  params.content = req.body.content;
  params.status = req.body.status;
  sql.update("guideNotes", params, req.body.id, function() {
    res.send({
      "result": 1
    });
  });
});

router.post('/getTravelNotes', function(req, res, next) {
  var condition = null;
  if (req.body.id) {
    condition = "id=" + req.body.id;
  }
  sql.select("travelNotes", "*", condition, function(data) {
    res.send(data);
  });
});

router.post('/addTravelNotes', function(req, res, next) {
  var fields = ["title", "cover", "author", "pubtime", "page_view", "like_num", "city", "content", "status"];
  var values = [req.body.title, req.body.cover, req.body.author, req.body.pubtime, 0, 0, req.body.city, req.body.content, req.body.status];
  sql.insert("travelNotes", fields, values, function() {
    res.send({
      "result": 1
    });
  });
});

router.post('/modifyTravelNotes', function(req, res, next) {
  var params = {};
  params.title = req.body.title;
  params.cover = req.body.cover;
  params.author = req.body.author;
  params.city = req.body.city;
  params.content = req.body.content;
  params.status = req.body.status;
  sql.update("travelNotes", params, req.body.id, function() {
    res.send({
      "result": 1
    });
  });
});

router.post('/getDestination', function(req, res, next) {
  var condition = null;
  if (req.body.id) {
    condition = "id=" + req.body.id;
  }
  sql.select("destination", "*", condition, function(data) {
    res.send(data);
  });
});

router.post('/addDestination', function(req, res, next) {
  var fields = ["cover", "name_zh", "name_en", "region", "description", "status"];
  var values = [req.body.cover, req.body.name_zh, req.body.name_en, req.body.region, req.body.description, +req.body.status];
  sql.insert("destination", fields, values, function() {
    res.send({
      "result": 1
    });
  });
});

router.post('/modifyDestination', function(req, res, next) {
  var params = {};
  params.cover = req.body.cover;
  params.name_zh = req.body.name_zh;
  params.name_en = req.body.name_en;
  params.region = req.body.region;
  params.description = req.body.description;
  params.status = req.body.status;
  sql.update("destination", params, req.body.id, function() {
    res.send({
      "result": 1
    });
  });
});

router.post('/uploadImg', function(req, res, next) {
  //生成multiparty对象，并配置上传目标路径
  var form = new multiparty.Form({uploadDir: './public/files/'});
  //上传完成后处理
  form.parse(req, function(err, fields, files) {
    var imgCurr = [];
    for (var i = 0; i < Object.keys(files).length; i++) {
      var img = 'http://localhost:3000/files/' + files[Object.keys(files)[i]][0].path.substring(13);
      imgCurr.push(img);
    }
    res.send({
      errno: 0,
      url: imgCurr
    });
  });
});

module.exports = router;
