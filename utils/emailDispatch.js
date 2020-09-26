const nodemailer = require('nodemailer')
const Constants = require('../config/Constants')
const logger = require('../config/Logger');

const transporter = nodemailer.createTransport({
  service: 'Gmail',
  secure: false,
  port: 25,
  tls: {
    rejectUnauthorized: false
  },
  auth: {
    user: Constants.Email.USER,
    pass: Constants.Email.PASS,
  },
});

logger.debug(transporter)

exports.dispatchEmail = function (assignmentObj) {
  logger.debug("################### Entering Email Dispatcher ################################");
  logger.debug(assignmentObj.name, assignmentObj.email, assignmentObj.level, assignmentObj.day, assignmentObj.answer1)

  return new Promise(function (resolve, reject) {

    const mailOptions = {
      from: 'codepannu@gmail.com', // sender address
      to: 'anitha.calibre@gmail.com', // list of receivers
      subject: 'Your hardworking student has submitted an assignment', // Subject line
      html: `Here is the content of the assignment: Name: ${assignmentObj.name}
        Email: ${assignmentObj.email}
        Level: ${assignmentObj.level}
        Day: ${assignmentObj.day}
        Code: ${assignmentObj.answer1} `
    };

    transporter.sendMail(mailOptions, function (err, info) {
      if (err) {
        logger.error('Error:- ' + err.stack);
        reject(new Error('Ooops, something broke!'));
      }
      else {
        logger.debug(info);
        logger.debug('************exiting email dispatcher successfully****************');
        resolve(true);
      }
    });
  });
}





