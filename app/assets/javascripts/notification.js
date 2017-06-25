$(document).ready(function(){
	setTimeout(function(){
		$('div#success').fadeOut("slow", function() {
			$(this).remove();
		}) 
	}, 4500);
});

$(document).ready(function(){
	setTimeout(function(){
		$('div#danger').fadeOut("slow", function() {
			$(this).remove();
		}) 
	}, 4500);
});