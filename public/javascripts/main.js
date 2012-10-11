$(function(){
	$('.card').addClass('animate');
	$('.language-toggle .en').click(function(){
		$('body').removeClass('jp').addClass('en');
	});
	$('.language-toggle .jp').click(function(){
		$('body').removeClass('en').addClass('jp');
	});	
});
