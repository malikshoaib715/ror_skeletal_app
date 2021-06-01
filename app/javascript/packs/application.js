// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//= require jquery
//= require jquery_ujs
//= require dataTables/jquery.dataTables
//= require_tree .

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "chartkick/chart.js"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()
require("channels")



import "bootstrap"
import $ from "jquery"
global.$ = jQuery

require('datatables.net-bs4')

