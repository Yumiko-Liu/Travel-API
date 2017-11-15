var mysql = require('mysql');
var db = require('./db');
var connection = mysql.createConnection(db.config);

function SQL() {}

SQL.prototype.select = function(tableName, field, condition, callback) {
  if (condition.indexOf("id=") !== -1) {
    var sql = 'select ' + field + ' from ' + tableName + ' where ' + condition;
  } else if (condition.indexOf("order by") !== -1) {
    var sql = 'select ' + field + ' from ' + tableName + condition;
  } else {
    var sql = 'select ' + field + ' from ' + tableName;
  }
  query(sql, callback);
}

SQL.prototype.insert = function(tableName, field, values, callback) {
  var insert_field = field[0];
  var insert_values = "'" + values[0] + "'";
  for (var i = 1; i < field.length; i++) {
    insert_field += ',' + field[i];
    insert_values += ", '" + values[i] + "'";
  }
  insert_field = '(' + insert_field + ')';
  insert_values = '(' + insert_values + ')';
  var sql = 'insert into ' + tableName + ' ' + insert_field + ' values ' + insert_values;
  query(sql, callback);
}

SQL.prototype.update = function(tableName, _params, id, callback) {
  var params = '';
  for (var i in _params) {
    if (_params.hasOwnProperty(i)) {
      params += (i + '="' + _params[i] + '",');
    }
  }
  params = params.slice(0, -1);
  var sql = 'update ' + tableName + ' set ' + params  + ' where id="' + id + '"';
  query(sql, callback);
}

SQL.prototype.delete = function(tableName, id, callback) {
  var sql = 'delete from ' + tableName + ' where id="' + id + '"';
  query(sql, callback);
}

function query(_sql, callback) {
  connection.query(_sql, function(err, res) {
    if (res) {
      res = JSON.stringify(res);
      res = JSON.parse(res);
      callback(res);
    } else if (err) {
      console.log(err);
    }
  });
}

module.exports = SQL;
