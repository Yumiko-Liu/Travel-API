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
  })
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
    })
  });
});

module.exports = router;
