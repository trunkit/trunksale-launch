$(document).ready(function(){
	/*var myVideo = document.getElementById('video');
	console.log(myVideo);
	if(myVideo){
		if (typeof myVideo.loop == 'boolean') { // loop supported
		    myVideo.loop = true;
		} else { // loop property not supported
		    myVideo.on('ended', function () {
		    this.currentTime = 0;
		    this.play();
		    }, false);
		}
	}
    $('li.product:last-child > .circle').replaceWith("?");*/

    //GA email click event
    $('.emailShare').click(function() {
        ga('send', 'event', 'Sharing', 'click', 'email');
    });

    //GA twitter click event
    $('.twit').click(function() {
        ga('send', 'event', 'Sharing', 'click', 'twitter');
    });

    //GA facebook click event
    $('.fb').click(function() {
        ga('send', 'event', 'Sharing', 'click', 'facebook');
    });

})