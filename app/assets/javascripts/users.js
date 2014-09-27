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
    $("a.emailShare").each(function() {
        var href = $(this).attr("href");
        var target = $(this).attr("target");
        var text = $(this).text();
        $(this).click(function(event) { // when someone clicks these links
            event.preventDefault(); // don't open the link yet
            ga('send', 'event', 'Sharing', 'click', 'email'); // create a custom event
            setTimeout(function() { // now wait 300 milliseconds...
                window.open(href,(!target?"_self":target)); // ...and open the link as usual
            },300);
        });
    });

    //GA twitter click event
    $("a.twit").each(function() {
        var href = $(this).attr("href");
        var target = $(this).attr("target");
        var text = $(this).text();
        $(this).click(function(event) { // when someone clicks these links
            event.preventDefault(); // don't open the link yet
            ga('send', 'event', 'Sharing', 'click', 'twitter'); // create a custom event
            setTimeout(function() { // now wait 300 milliseconds...
                window.open(href,(!target?"_self":target)); // ...and open the link as usual
            },300);
        });
    });

    //GA facebook click event
    $("a.fb").each(function() {
        var href = $(this).attr("href");
        var target = $(this).attr("target");
        var text = $(this).text();
        $(this).click(function(event) { // when someone clicks these links
            event.preventDefault(); // don't open the link yet
            ga('send', 'event', 'Sharing', 'click', 'facebook'); // create a custom event
            setTimeout(function() { // now wait 300 milliseconds...
                window.open(href,(!target?"_self":target)); // ...and open the link as usual
            },300);
        });
    });

})