const logger = require('../config/Logger');
const mscf = require('./mySQLConnectionFactory');



exports.createMessage = function (messageObj) {
  logger.debug("################### Entered SQLDataStore ################################");
  logger.debug(messageObj.name, messageObj.email,messageObj.message)
  let SQL = "INSERT into codepannu.messages (name, email, message, created_on) values (?)";
  let DATA = [[String(messageObj.name), String(messageObj.email),String(messageObj.message),new Date()]];

  return new Promise(function (resolve, reject) {
    // var con = mscf.getSQLConnection();
    mscf.pool.getConnection(function (err, con) {
      if (err) {
        logger.error('Error:- ' + err.stack);
        reject(new Error('Ooops, something broke!'));
      } else {
        var x = con.query(SQL, DATA, function (err, result, fields) {
          logger.debug("################### Entered SQL ################################");
          logger.debug(x.sql);
          if (err) {
            logger.error('Error:- ' + err.stack);
            reject(new Error('There is an error'));
          } else {
            logger.debug(result.affectedRows);
            logger.debug("################### Exited SQLDataStore ################################");
            resolve(true);
          }
        });
      }
    });
  });
};



exports.createAssignment = function (assignmentObj) {
  logger.debug("################### Entered SQLDataStore ################################");
  logger.debug(assignmentObj.name, assignmentObj.email,assignmentObj.level, assignmentObj.day, assignmentObj.answer1)
  let SQL = "INSERT into codepannu.assignments (name, email, level, day, answer1, created_on) values (?)";
  let DATA = [[String(assignmentObj.name), String(assignmentObj.email),String(assignmentObj.level),assignmentObj.day,String(assignmentObj.answer1), new Date()]];

  return new Promise(function (resolve, reject) {
    // var con = mscf.getSQLConnection();
    mscf.pool.getConnection(function (err, con) {
      if (err) {
        logger.error('Error:- ' + err.stack);
        reject(new Error('Ooops, something broke!'));
      } else {
        var x = con.query(SQL, DATA, function (err, result, fields) {
          logger.debug("################### Entered SQL ################################");
          logger.debug(x.sql);
          if (err) {
            logger.error('Error:- ' + err.stack);
            reject(new Error('There is an error'));
          } else {
            logger.debug(result.affectedRows);
            logger.debug("################### Exited SQLDataStore ################################");
            resolve(true);
          }
        });
      }
    });
  });
};


