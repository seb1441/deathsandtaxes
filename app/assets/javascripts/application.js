// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .
//= require jquery
//= require tether
//= require bootstrap-sprockets

//
// $( document ).on('turbolinks:load', function() {
//   $('.dropdown-menu a').click(function(){
//      $('#selected').text($(this).text());
//      alert("TEST");
//    });
// })

$(document).on('turbolinks:load', function() {
  $('#headslot .item').click(function() {
    $('#headslot #selected').text($(this).text());
    $('#headGear').val($.trim($(this).text()));
    $('#headslot button img').attr("src", $(this).find('img').attr('src'));
  });
  $('#armorslot .item').click(function() {
    $('#armorslot #selected').text($(this).text());
    $('#armorGear').val($.trim($(this).text()));
    $('#armorslot button img').attr("src", $(this).find('img').attr('src'));
  });
  $('#shoesslot .item').click(function() {
    $('#shoesslot #selected').text($(this).text());
    $('#shoesGear').val($.trim($(this).text()));
    $('#shoesslot button img').attr("src", $(this).find('img').attr('src'));
  });
  $('#mainhandslot .item').click(function() {
    $('#mainhandslot #selected').text($(this).text());
    $('#mainhandGear').val($.trim($(this).text()));
    $('#mainhandslot button img').attr("src", $(this).find('img').attr('src'));
    var onehanded = [
      "Fire Staff",
      "Frost Staff",
      "Arcane Staff",
      "Cursed Staff",
      "Holy Staff",
      "Druidic Staff",
      "Spear",
      "Nature Staff",
      "Dagger",
      "Broadsword",
      "Battle Axe",
      "Mace",
      "Hammer"
    ];
    // alert($('#mainhandslot #selected').text());
    selectedtext = $.trim($('#mainhandslot #selected').text());
    selectedtext = selectedtext.split(' ').slice(1).join(' ');
    if ($.inArray(selectedtext, onehanded) !== -1) {
      $('#offhandslot button').removeClass("hidden-xs-up");
    }
    else {
      $('#offhandslot button').addClass("hidden-xs-up");
    }
  });
  $('#offhandslot .item').click(function() {
    $('#offhandslot #selected').text($(this).text());
    $('#offhandGear').val($.trim($(this).text()));
    $('#offhandslot button img').attr("src", $(this).find('img').attr('src'));
  });
})
