$(document).ready(function(){
	setTimeout(function(){
		$('div#success').fadeOut("slow", function() {
			$(this).remove();
		}) 
	}, 3500);
});

$(document).ready(function(){
	setTimeout(function(){
		$('div#danger').fadeOut("slow", function() {
			$(this).remove();
		}) 
	}, 3500);
});

$(document).ready(function(){
	setTimeout(function(){
		$('div#notice').fadeOut("slow", function() {
			$(this).remove();
		}) 
	}, 3500);
});
