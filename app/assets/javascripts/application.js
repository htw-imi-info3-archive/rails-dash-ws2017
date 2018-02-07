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

function changeTheme() {
    let background = document.getElementById('app-container');
    let table = document.getElementsByTagName('table')[0];
    let headline = document.getElementsByTagName('h1')[0];
    let themeButton = document.getElementById('js-theme-button');

    document.getElementsByTagName('body')[0].style.backgroundColor = 'ainsboro';
    background.style.backgroundColor = '#282828';
    background.style.color = '#ffffff';
    table.style.backgroundColor = '#76B900';
    headline.style.color = '#76B900';

}