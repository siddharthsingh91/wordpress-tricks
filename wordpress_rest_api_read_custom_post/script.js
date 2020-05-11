$.getJSON('https://liveradio.club/wp-json/wp/v2/radio/21949', function(radio) {
console.log(radio['link']);
$('#radio-player').append('<p> Title: ' + radio['title'].rendered + '</p>');
$('#radio-player').append('<p>Content : ' + radio['content'].rendered + '</p>');
$('#radio-player').append('<p> Title: ' + radio['title'].rendered+ '</p>');
$('#radio-player').append('<p> Link: ' + radio['link']+ '</p>');
radio['link']
});