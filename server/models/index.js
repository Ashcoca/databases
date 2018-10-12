var db = require('../db');
var express = require('express');


module.exports = {
  messages: {
    //look up express get
    get: function () {}, // a function which produces all the messages
    post: function () {} // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function () {},
    post: function () {}
  }
};

