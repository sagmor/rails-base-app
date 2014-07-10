//= require ./vendor
//= require_tree .

window.ENV = require('frontend/environment')['default'];
window.Frontend = require('frontend/app')['default'].create(window.ENV.APP);
