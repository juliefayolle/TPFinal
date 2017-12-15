$(document).ready(function(){
  var k = [38, 38, 40, 40, 37, 39, 37, 39, 66, 65],
  esc = 27;
	n = 0;

	$(document).keydown(function (e) {
	    if (e.keyCode === k[n++]) {
	        if (n === k.length) {
		        $('main').append('<img id="konami" src="https://media.giphy.com/media/F9hQLAVhWnL56/giphy.gif"><audio src="../audio/musique.mp3" loop autoplay></audio>')
              n = 0;
	            return false;
	        }
	    }
	    else {
	        n = 0;
	    }
	});


});
