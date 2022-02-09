// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
// ActiveStorage.start()



import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import $ from 'jquery'
window.jQuery = $;
window.$ = $;


Rails.start()
Turbolinks.start()
ActiveStorage.start()

$(function() {
    $('#back a').on('click',function(event){
        $('body, html').animate({
            scrollTop:0
        }, 700);
        event.preventDefault();
    });
});


$(document).ready(function(){
    $('.dropdown-toggle').dropdown();
});

require("trix")
require("@rails/actiontext")