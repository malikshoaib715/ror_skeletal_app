// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
// require("jquery");

//
// window.jQuery = $;
// window.$ = $;
// import {} from 'jquery-ujs'
// import "./semantic.min"
// require('datatables.net-se')();
// require('datatables.net-autofill-se')();


// window.$ = window.$ || require('jquery');
// window.jQuery = window.$;
// import 'jquery-ujs'
// import "./semantic.min"
// require('datatables.net-se')( window.$ );  // Updated
// require('datatables.net-autofill-se')( window.$ ); // Updated
// require("@rails/activestorage").start();
// require("channels");

Rails.start()
Turbolinks.start()
ActiveStorage.start()
import "bootstrap"
import $ from "jquery"
global.$ = jQuery

// var dt = require("datatables.net")(window, $);
require('datatables.net-dt')();

