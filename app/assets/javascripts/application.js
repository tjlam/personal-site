// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require snapsvg
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .

$(document).ready(function () {
	var line1 = Snap.select('#line1');
	line1.select('#P1').animate({d: "M80,227 L182.5,227"}, 1500, mina.easeinout);
	console.log('hello world');

	var line2 = Snap.select('#line2');
	line2.select('#P2').animate({d: "M80,886 L182.5,886"}, 1500, mina.easeinout);


});