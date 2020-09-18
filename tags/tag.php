<?php
session_start();
include("../includes/db.php");
include("../functions/functions.php");
if(isset($_GET['tag'])){
	$tag = $input->get('tag');
	$tag = str_replace("-"," ",$tag);
	// $tag = filter_var($tag,FILTER_SANITIZE_STRING);
	$_SESSION['tag'] = $tag;
}
?>
<!DOCTYPE html>
<html lang="en" class="ui-toolkit">
<head>
  <?php if(isset($_SESSION['tag'])){ ?>
	<title><?= $site_name; ?> - <?= ucfirst($tag); ?>  </title>
	<?php } ?>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="author" content="<?= $site_author; ?>">
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100" rel="stylesheet">
	<link href="<?= $site_url; ?>/styles/bootstrap.css" rel="stylesheet">
	<link href="<?= $site_url; ?>/styles/custom.css" rel="stylesheet"><link href="<?= $site_url; ?>/styles/styles.css" rel="stylesheet"><link href="<?= $site_url; ?>/styles/css/style.css" rel="stylesheet"><link href="<?= $site_url; ?>/styles/styles.css" rel="stylesheet"><link href="<?= $site_url; ?>/styles/css/style.css" rel="stylesheet">
	<!-- Custom css code from modified in admin panel --->
	<link href="<?= $site_url; ?>/styles/styles.css" rel="stylesheet">
	<link href="<?= $site_url; ?>/styles/categories_nav_styles.css" rel="stylesheet">
	<link href="<?= $site_url; ?>/font_awesome/css/font-awesome.css" rel="stylesheet">
	<link href="<?= $site_url; ?>/styles/sweat_alert.css" rel="stylesheet">
	<!-- Optional: include a polyfill for ES6 Promises for IE11 and Android browser -->
	<script src="<?= $site_url; ?>/js/ie.js"></script>
	<script type="text/javascript" src="<?= $site_url; ?>/js/sweat_alert.js"></script>
	<script type="text/javascript" src="<?= $site_url; ?>/js/jquery.min.js"></script>
	<?php if(!empty($site_favicon)){ ?>
	<link rel="shortcut icon" href="<?= $site_favicon; ?>" type="image/x-icon">
	<?php } ?>
</head>
<body class="is-responsive">
<?php include("../includes/header.php"); ?>
<div class="container-fluid mt-5"> <!-- Container start -->
	<div class="row">
		<div class="col-md-12">
			<center>
			<h1> <?= ucfirst($tag); ?> </h1>
			<p class="lead"><?= str_replace('{tag}',$tag,$lang['tag_proposals']['desc']); ?></p>
			</center>
			<hr class="mt-5 pt-2">
		</div>
	</div>
	<div class="row mt-3">
	<div class="col-lg-3 col-md-4 col-sm-12 <?=($lang_dir == "right" ? 'order-2 order-sm-1':'')?>">
		<?php include("../includes/tag_sidebar.php"); ?>
	</div>
	<div class="col-lg-9 col-md-8 col-sm-12 <?=($lang_dir == "right" ? 'order-1 order-sm-2':'')?>">
		<div class="row proposals" id="tag_proposals">
		  <?php get_tag_proposals(); ?>
		</div>
	  <div id="wait"></div><br>
	  <div class="row justify-content-center mb-5 mt-0"><!-- row justify-content-center Starts -->
			<nav><!-- nav Starts -->
				<ul class="pagination" id="tag_pagination">
				<?php get_tag_pagination(); ?>
				</ul>
			</nav><!-- nav Ends -->
	  </div>
	</div>
	</div>
</div><!-- Container ends -->

<div class="append-modal"></div>
<?php include("../includes/footer.php"); ?>
<script>
function get_tag_proposals(){
	var sPath = ''; 
	var aInputs = $('li').find('.get_online_sellers');
	var aKeys   = Array();
	var aValues = Array();
	iKey = 0;
	$.each(aInputs,function(key,oInput){
	if(oInput.checked){
	aKeys[iKey] =  oInput.value
	};
	iKey++;
	});
	if(aKeys.length>0){
	var sPath = '';
	for(var i = 0; i < aKeys.length; i++){
	sPath = sPath + 'online_sellers[]=' + aKeys[i]+'&';
	}
	}

	var instant_delivery = $('.get_instant_delivery:checked').val();
	sPath = sPath + 'instant_delivery[]=' + instant_delivery +'&'; 

	var order = $('.get_order:checked').val();
	sPath = sPath + 'order[]=' + order +'&';

	var aInputs = $('li').find('.get_seller_country');
	var aKeys   = Array();
	var aValues = Array();
	iKey = 0;
	$.each(aInputs,function(key,oInput){
	 if(oInput.checked){
	 aKeys[iKey] = oInput.value
	 };
	 iKey++;
	});
	if(aKeys.length>0){
	 for(var i = 0; i < aKeys.length; i++){
	 sPath = sPath + 'seller_country[]=' + aKeys[i]+'&';
	 }
	}

	var aInputs = $('li').find('.get_seller_city');
	var aKeys   = Array();
	var aValues = Array();
	iKey = 0;
	$.each(aInputs,function(key,oInput){
	 if(oInput.checked){
	 aKeys[iKey] = oInput.value
	 };
	 iKey++;
	});
	if(aKeys.length>0){
	 for(var i = 0; i < aKeys.length; i++){
	 	sPath = sPath + 'seller_city[]=' + aKeys[i]+'&';
	 }
	}

	var aInputs = Array();
	var aInputs = $('li').find('.get_delivery_time');
	var aKeys   = Array();
	var aValues = Array();
	iKey = 0;
	$.each(aInputs,function(key,oInput){
	if(oInput.checked){
	aKeys[iKey] =  oInput.value
	};
	iKey++;
	});
	if(aKeys.length>0){
	for(var i = 0; i < aKeys.length; i++){
	sPath = sPath + 'delivery_time[]=' + aKeys[i]+'&';
	}
	}
	var aInputs = Array();
	var aInputs = $('li').find('.get_seller_level');
	var aKeys   = Array();
	var aValues = Array();
	iKey = 0;
	$.each(aInputs,function(key,oInput){
	if(oInput.checked){
	aKeys[iKey] =  oInput.value
	};
	iKey++;
	});
	if(aKeys.length>0){
	for(var i = 0; i < aKeys.length; i++){
	sPath = sPath + 'seller_level[]=' + aKeys[i]+'&';
	}
	}
	var aInputs = Array();
	var aInputs = $('li').find('.get_seller_language');
	var aKeys   = Array();
	var aValues = Array();
	iKey = 0;
	$.each(aInputs,function(key,oInput){
	if(oInput.checked){
	aKeys[iKey] =  oInput.value
	};
	iKey++;
	});
	if(aKeys.length>0){
	for(var i = 0; i < aKeys.length; i++){
	sPath = sPath + 'seller_language[]=' + aKeys[i]+'&';
	}
	}		
	$('#wait').addClass("loader");		
	$.ajax({  
	url: "../tag_load",  
	method:"POST",  
	data: sPath+'zAction=get_tag_proposals',
	success:function(data){
	$('#tag_proposals').html('');  
	$('#tag_proposals').html(data);
	$('#wait').removeClass("loader");
	}  
	});							  
	$.ajax({  
	url: "../tag_load",  
	method:"POST",  
	data: sPath+'zAction=get_tag_pagination',  
	success:function(data){  
	$('#tag_pagination').html('');  
	$('#tag_pagination').html(data); 
	}  
	});
}
$('.get_online_sellers').click(function(){ 
	get_tag_proposals(); 
});

$('.get_instant_delivery').click(function(){ 
	get_tag_proposals();
});

$('.get_order').click(function(){ 
  get_tag_proposals();
});

$('.get_seller_country').click(function(){ 
  get_tag_proposals();
});

$('.get_seller_city').click(function(){ 
  get_tag_proposals();
});

$('.get_delivery_time').click(function(){ 
	get_tag_proposals(); 
}); 
$('.get_seller_level').click(function(){ 
	get_tag_proposals(); 
}); 
$('.get_seller_language').click(function(){ 
	get_tag_proposals(); 
});
</script>
<script type="text/javascript">
$(document).ready(function(){

$(".get_seller_country").click(function(){
	 if($(".get_seller_country:checked").length > 0){

	   $(".clear_seller_country").show();
	   $('.seller-cities li').addClass('d-none');

	   var aInputs = $('li').find('.get_seller_country');
	   var cities = Array();
	   iKey = 0;
	   $.each(aInputs,function(key,oInput){
	     if(oInput.checked){
	       var country = oInput.value
	       var city = $('.seller-cities li[data-country="'+country+'"]');
	       var city_name = city.find("label input").val();
	       city.removeClass('d-none');
	       if(city.length){
	         cities[iKey] = city_name;
	         console.log(city_name);
	       }
	       iKey++;
	     };
	   });
	   
	   if(cities.length > 0){
	     $(".seller-cities").removeClass('d-none');
	   }else{
	     $(".seller-cities").addClass('d-none');
	   }

	 }else{
	   $(".seller-cities").addClass('d-none');
	   $(".clear_seller_country").hide();
	   clearCity();
	 }
	});

	$(".get_seller_city").click(function(){
	 if($(".get_seller_city:checked").length > 0 ) {
	   $(".clear_seller_city").show();
	 }else{
	   $(".clear_seller_city").hide();
	 }
	});

	$(".get_cat_id").click(function(){
		if($(".get_cat_id:checked").length > 0 ) {
			$(".clear_cat_id").show();
		}else{
			$(".clear_cat_id").hide();
		}
	});

	$(".get_delivery_time").click(function(){
		if($(".get_delivery_time:checked").length > 0 ) {
			$(".clear_delivery_time").show();
		}else{
			$(".clear_delivery_time").hide();
		}
	});

	$(".get_seller_level").click(function(){
		if($(".get_seller_level:checked").length > 0 ) {
			$(".clear_seller_level").show();
		}else{
			$(".clear_seller_level").hide();
		}
	});

	$(".get_seller_language").click(function(){
		if($(".get_seller_language:checked").length > 0 ) {
			$(".clear_seller_language").show();
		}else{
			$(".clear_seller_language").hide();
		}
	});

	$(".clear_seller_country").click(function(){
	 $(".clear_seller_country").hide();
	});
	$(".clear_seller_city").click(function(){
	 $(".clear_seller_city").hide();
	});

	$(".clear_cat_id").click(function(){
		$(".clear_cat_id").hide();
	});
	$(".clear_delivery_time").click(function(){
		$(".clear_delivery_time").hide();
	});
	$(".clear_seller_level").click(function(){
		$(".clear_seller_level").hide();
	});
	$(".clear_seller_language").click(function(){
		$(".clear_seller_language").hide();
	});

});
  
function clearCountry(){
 $('.get_seller_country').prop('checked',false);
 $('.get_seller_city').prop('checked',false);
 $(".seller-cities").addClass('d-none')
 get_tag_proposals(); 
}
function clearCity(){
 $('.get_seller_city').prop('checked',false);
 get_tag_proposals(); 
}

function clearCat(){
	$('.get_cat_id').prop('checked',false);
	get_tag_proposals();
}

function clearDelivery(){
	$('.get_delivery_time').prop('checked',false);
	get_tag_proposals();
}

function clearLevel(){
	$('.get_seller_level').prop('checked',false);
	get_tag_proposals();
}

function clearLanguage(){
	$('.get_seller_language').prop('checked',false);
	get_tag_proposals();
}

</script>

</body>
</html>