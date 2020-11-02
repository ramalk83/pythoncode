const express = require('express');
const bodyParser = require('body-parser');
const request = require('request');
const Constants = require('./config/Constants');
const logger = require('./config/Logger');
const sqlDS = require('./store/sqlDataStore');
const email = require('./utils/emailDispatch');
const app = express();
var path = require('path')

// const sampleRoutes = require('./routes/sampleRoutes');

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json({ type: 'application/*+json' }));

// app.use(sampleRoutes);

app.use(express.static(path.join(__dirname, 'public')));
app.set('view engine', 'ejs');

app.get('/', function (req, res) {
  res.render(__dirname + '/views/index');
});

app.get('/assignments', function (req, res) {
  res.render(__dirname + '/views/assignments');
});


app.get('/aboutUs', function (req, res) {
  res.render(__dirname + '/views/aboutUs');
});

app.get('/python-courses', function (req, res) {
  res.render(__dirname + '/views/courses');
});


// app.get('/view-course',function (req, res) {
//   try {
//     id=req.query.id
//     logger.debug(id)
//     sqlDS.listTitles().then(
//       function (data) {
//         // logger.debug(data)
//         const key = 'day';
//         function uniqueBy(arr, prop){
//           return arr.reduce((a, d) => {
//             if (!a.includes(d[prop])) { a.push(d[prop]); }
//             return a;
//           }, []);
//         }
//         var uniqueDays=uniqueBy(data, "day");
//         logger.debug("******************* Exited Routes Successfully ********************************");
//         res.render(__dirname + '/views/video_viewer', { id:id, data:data, uniqueDays:uniqueDays.length });
//       }
//     ).catch(function (err) {
//       logger.debug("Promise rejection error: " + err.stack);
//       logger.debug("******************* Exited Routes With Failure ********************************");
//       res.sendStatus(Constants.Response.CODE_INTRNL_SERV_ERR).send(Constants.Response.DESC_INTRNL_SERV_ERR);
//     }
//     );
//   } catch (e) {
//     console.log(e)
//     res.sendStatus(Constants.Response.CODE_INTRNL_SERV_ERR).send(Constants.Response.DESC_INTRNL_SERV_ERR);
//   }
// })


app.route('/view-course')
  .get(function (req, res) {
    logger.debug("******************* Entered Routes ********************************")
  try {
    // id=req.query.id
    // logger.debug(id)
    sqlDS.listTitles().then(
      function (data) {
        // logger.debug(data)
        const key = 'day';
        function uniqueBy(arr, prop){
          return arr.reduce((a, d) => {
            if (!a.includes(d[prop])) { a.push(d[prop]); }
            return a;
          }, []);
        }
        var uniqueDays=uniqueBy(data, "day");
        logger.debug("******************* Exited Routes Successfully ********************************");
        res.render(__dirname + '/views/video_viewer', { data:data, uniqueDays:uniqueDays.length });
      }
    ).catch(function (err) {
      logger.debug("Promise rejection error: " + err.stack);
      logger.debug("******************* Exited Routes With Failure ********************************");
      res.sendStatus(Constants.Response.CODE_INTRNL_SERV_ERR).send(Constants.Response.DESC_INTRNL_SERV_ERR);
    }
    );
  } catch (e) {
    console.log(e)
    res.sendStatus(Constants.Response.CODE_INTRNL_SERV_ERR).send(Constants.Response.DESC_INTRNL_SERV_ERR);
  }
  })
  .post(function (req, res) {
    // app.post('/view-course',function (req, res) {
    logger.debug('post invoked')
    const videoObj = req.body
    // const videoObj = req.query
    logger.debug(videoObj)
    let validationErrors = ''
    logger.debug("validationErrors in route = " + validationErrors)
    if (validationErrors) {
      logger.error("invalid object")
      res.status(Constants.Response.CODE_BAD_REQUEST).send(Constants.Response.DESC_BAD_REQUEST);
    } else {
      logger.debug("valid object")
      try {
        sqlDS.getVideo(videoObj).then(
          function (result) {
            logger.debug(result)
            var id = result[0].id
            var embed_url = result[0].embed_url
            var title=result[0].title
            logger.debug(id, embed_url)
            logger.debug("******************* Exited Routes Successfully ********************************");
            res.send({ id: id, embed_url: embed_url,title:title});
            // res.end();
          }
        ).catch(function (err) {
          logger.error("Promise rejection error: " + err.stack);
          logger.debug("******************* Exited Routes With Failure ********************************");
          res.status(Constants.Response.CODE_INTRNL_SERV_ERR).send(Constants.Response.DESC_INTRNL_SERV_ERR);
        }
        );
      } catch (e) {
        logger.error(e)
        res.status(Constants.Response.CODE_INTRNL_SERV_ERR).send(Constants.Response.DESC_INTRNL_SERV_ERR);
      }
    }
  })


app.get('/recaptcha', function (req, res) {
  res.render(__dirname + '/views/recaptcha');
});

app.get('/thankyou', function (req, res) {
  logger.debug(req.headers.referrer)
  if (req.headers.referer != undefined && req.headers.referer.toLowerCase().indexOf("/assignments") >= 0) {
    logger.debug('thank you page invoked')
    res.render(__dirname + '/views/thankyou');
  }
  else {
    logger.debug(req.headers.referer)
    res.redirect('/');
  }

});


app.post('/subscribe', function (req, res) {
  console.log(req.body.name)

  // console.log(req.body.captcha)
  if (req.body.captcha === undefined || req.body.captcha === '' || req.body.captcha === null) {

    return (res.json({ 'success': false, 'msg': 'Please select capcha' }))
  }
  //secret key
  const secretKey = Constants.Recaptcha.SERVER_KEY

  //verify URL
  const verifyURL = `https://google.com/recaptcha/api/siteverify?secret=${secretKey}&response=${req.body.captcha}&remoteip=${req.connection.remoteAddress}`

  //make request to verify url
  request(verifyURL, (err, response, body) => {
    body = JSON.parse(body)
    // console.log(body)
    if (body.success !== undefined && !body.success) {

      return res.json({ 'success': false, 'msg': 'failed capcha verification' })
    }
    return res.json({ 'success': true, 'msg': 'capcha verified' })
  })

})



app.post('/message', async (req, res) => {
  logger.debug("******************* Entered Routes ********************************");
  const messageObj = req.body
  logger.debug("from static instance is " + messageObj)

  let validationErrors = ''
  // logger.debug("validationErrors in route = " + validationErrors)
  if (validationErrors) {
    logger.error("invalid object")
    res.status(Constants.Response.CODE_BAD_REQUEST).send(Constants.Response.DESC_BAD_REQUEST);
  } else {
    logger.debug("valid object")
    try {
      sqlDS.createMessage(messageObj).then(

        function (result) {
          logger.debug("******************* Exited Routes Successfully ********************************");
          res.status(Constants.Response.CODE_SUCCESS).send(Constants.Response.CODE_SUCCESS);

          // res.sendStatus(Constants.Response.CODE_SUCCESS)
        }
      ).catch(function (err) {
        logger.error("Promise rejection error: " + err.stack);
        logger.debug("******************* Exited Routes With Failure ********************************");
        res.status(Constants.Response.CODE_INTRNL_SERV_ERR).send(Constants.Response.DESC_INTRNL_SERV_ERR);
      }
      );
    } catch (e) {
      logger.error(e)
      res.status(Constants.Response.CODE_INTRNL_SERV_ERR).send(Constants.Response.DESC_INTRNL_SERV_ERR);
    }
  }
});



app.post('/assignments', async (req, res) => {
  logger.debug("******************* Entered Routes ********************************");
  const assignmentObj = req.body
  logger.debug("from static instance is " + assignmentObj.answer1)

  let validationErrors = ''
  // logger.debug("validationErrors in route = " + validationErrors)
  if (validationErrors) {
    logger.error("invalid object")
    res.status(Constants.Response.CODE_BAD_REQUEST).send(Constants.Response.DESC_BAD_REQUEST);
  } else {
    logger.debug("valid object")
    try {
      logger.debug("******************* Dispatch email invoked ********************************");
      email.dispatchEmail(assignmentObj).then(
        function () {
          logger.debug("******************* Email dispatched ********************************");
        }
      ).catch(function (err) {
        logger.error("Promise rejection error: " + err.stack);
        logger.debug("******************* Errors with email dispatch ********************************");
        // res.status(Constants.Response.CODE_INTRNL_SERV_ERR).send(Constants.Response.DESC_INTRNL_SERV_ERR);
      })
      sqlDS.createAssignment(assignmentObj).then(
        function (result) {
          logger.debug("******************* Exited Routes Successfully ********************************");
          return (res.json({ 'status': 200, 'url': '/thankyou' }))
        }
      ).catch(function (err) {
        logger.error("Promise rejection error: " + err.stack);
        logger.debug("******************* Exited Routes With Failure ********************************");
        res.status(Constants.Response.CODE_INTRNL_SERV_ERR).send(Constants.Response.DESC_INTRNL_SERV_ERR);
      });
      //   })
    }
    catch (e) {
      logger.error(e)
      res.status(Constants.Response.CODE_INTRNL_SERV_ERR).send(Constants.Response.DESC_INTRNL_SERV_ERR);
    }
  }
});

app.use(function (req, res) {
  res.render(__dirname + '/views/error');
});

app.listen(Constants.Server.PORT, () => {
  console.log("Node Server started at " + Constants.Server.PORT + ", waiting for requests....");


});
