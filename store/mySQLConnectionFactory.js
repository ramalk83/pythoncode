
const HMConstants = require('../config/HMConstants');
const logger = require('../config/HMLogger');
const mySQL = require('mysql');

var con = mySQL.createConnection({
  host: HMConstants.Sql.MS_HOST,
  user: HMConstants.Sql.MS_USER,
  password: HMConstants.Sql.MS_PASS
});

var pool = mySQL.createPool({
  host: HMConstants.Sql.MS_HOST,
  user: HMConstants.Sql.MS_USER,
  password: HMConstants.Sql.MS_PASS,
  database: HMConstants.Sql.MS_DB_SCHEMA
});

exports.getSQLConnection = function (err) {
  //con.connect();
  con.connect(function (err) {
    if (err) {
      logger.error('Error:- ' + err.stack);
      return;
    }
    logger.info('MySQL Connected Id: ' + con.threadId);
  });
  return con;
};

exports.pool = pool;

/*

exports.getSQLConnection = function(callback) {
    pool.getConnection(function(err, connection) {
        callback(err, connection);
    });
};

exports.mySQLCon = con
exports.mySQLPool = pool;


*/

//module.exports = getConnection;
//module.exports = getSQLConnection;
