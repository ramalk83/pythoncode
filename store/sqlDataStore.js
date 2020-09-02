const logger = require('../config/HMLogger');
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


exports.getAssignments = function () {
  logger.debug("################### Entered SQLDataStore ################################");
  var assignments = [];
  var SQL = "SELECT * FROM codePannu.assignments";

  return new Promise(function (resolve, reject) {
    // var con = mscf.getSQLConnection();
    mscf.pool.getConnection(function (err, con) {
      if (err) {
        logger.error('Error:- ' + err.stack);
        reject(new Error('Ooops, something broke!'));
      } else {
        con.query(SQL, function (err, result, fields) {
          logger.debug("################### Entered SQL ################################");
          if (err) {
            logger.error('Error:- ' + err.stack);
            reject(new Error('Ooops, something broke!'));
          } else {
            // logger.debug(result);
            Object.keys(result).forEach(function (key) {
              var row = result[key];
              var assignment = {};
              assignment['id'] = row.id;
              assignment['name'] = row.name;
              assignment['email'] = row.email;
              assignment['level'] = row.level;
              assignment['day'] = row.day;
              assignment['answer1'] = row.answer1;
              assignment['answer2'] = row.answer2;
              assignment['answer3'] = row.answer3;

              assignments.push(assignment);
              // logger.debug(assignments);
            });
            logger.debug("################### Exited SQLDataStore ################################");
            resolve(assignments)
          }
        });
      }
    });
  });
};
