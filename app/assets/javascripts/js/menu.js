function Smenu(f)
{
	$('#m'+f).find('p').stop().animate({backgroundColor:'#04892D'});

     if(f==3)
	 {$('#tonav3').show();}
	 else if(f==4)
	 {$('#tonav4').show();}
	 else if (f==2) {$('#tonav2').show();}
	 else
	 {}

}
function Omenu(f)
{$('#m'+f).find('p').stop().animate({backgroundColor:'#ffffff'});$('#tonav1').hide();$('#tonav2').hide();$('#tonav3').hide();$('#tonav4').hide();$('#tonav5').hide();
     
     //if(f==3)
	 //{$('#m3').find('p').stop().animate({backgroundColor:'#04892D'});}
	 //else if(f==4)
	 //{$('#m4').find('p').stop().animate({backgroundColor:'#04892D'});}
	// else
	// {}
}

$(document).ready(function(){
  $(".Pw").hover(function(){
		$(this).stop().animate({backgroundColor:'#04892D'});
	},function(){
		$(this).stop().animate({backgroundColor:'#68B881'});
	});	
  
  $(".p8").hover(function(){
		$(this).find('img').animate({opacity:'0.6'});
	},function(){
		$(this).find('img').animate({opacity:'1'});
	});	
  
  $(".p3").hover(function(){
		$(this).find('img').animate({opacity:'0.6'});
	},function(){
		$(this).find('img').animate({opacity:'1'});
	});	
  
 //  $(".ul1 #m3").hover(function(){
	// 	$('#tonav1').show();
	// },function(){
	// 	$('#tonav1').hide();
	// });	
 //  $(".ul1 #m4").hover(function(){
	// 	$('#tonav2').show();
	// },function(){
	// 	$('#tonav2').hide();
	// });	
  
  //$("#tonav2").hover(function(){
		//$("#m4").find('a').addClass("on");
		//$('#m4').find('em').stop().animate({color:'#04892D'});
	//},function(){
    //    $('#m4').find('em').stop().animate({color:'#535353'});
   // });	
  
  
});
function Snews(f)
{
   for(i=1;i<=2;i++)
   {$("#N"+i).hide();$("#Hnews"+i).removeClass("on");$("#H"+i).removeClass("on");}
   
   $("#N"+f).show();$("#Hnews"+f).addClass("on");$("#H"+f).addClass("on");
}