$(document).ready(function() 
{

	$(".class_selectComponents_image_and_description").hover(
	function()
	{	
		$(this).addClass('class_hover');
	},
	function() 
	{ 
		$(this).removeClass('class_hover');
	});

	$(".class_selectComponents_price_range_pc").hover(
	function()
	{	
		$(this).addClass('class_hover');
		//$(this).style.cursor="pointer";
	},
	function() 
	{ 
		$(this).removeClass('class_hover');
	});	

});



//onclick="document.getElementById('id_parent_popup').style.display='block'"
