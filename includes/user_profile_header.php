<?php
$select_seller = $db->select("sellers",array("seller_user_name" => $get_seller_user_name)); 
$row_seller = $select_seller->fetch();
$seller_id = $row_seller->seller_id;
$seller_user_name = $row_seller->seller_user_name;
$seller_image = getImageUrl2("sellers","seller_image",$row_seller->seller_image);
$seller_cover_image = $row_seller->seller_cover_image;
if(empty($seller_cover_image)){ 
  $seller_cover_image = "images/user-background.jpg";
}else{
  $seller_cover_image = getImageUrl2("sellers","seller_cover_image",rawurlencode($seller_cover_image));
}
$seller_country = $row_seller->seller_country;
$seller_headline = $row_seller->seller_headline;
$seller_about = $row_seller->seller_about;
$seller_level = $row_seller->seller_level;
$seller_rating = $row_seller->seller_rating;
$seller_register_date = $row_seller->seller_register_date;
$seller_recent_delivery = $row_seller->seller_recent_delivery;

$seller_status = $row_seller->seller_status;
$select_buyer_reviews = $db->select("buyer_reviews",array("review_seller_id"=>$seller_id)); 
$count_reviews = $select_buyer_reviews->rowCount();
if(!$count_reviews == 0){
  $rattings = array();
  while($row_buyer_reviews = $select_buyer_reviews->fetch()){
    $buyer_rating = $row_buyer_reviews->buyer_rating; 
    array_push($rattings,$buyer_rating);
  }
  $total = array_sum($rattings);
  @$average = $total/count($rattings);
  $average_rating = substr($average ,0,1);
}else{
  $average = "0";  
  $average_rating = "0";
}

$level_title = $db->select("seller_levels_meta",["level_id"=>$seller_level,"language_id"=>$siteLanguage])->fetch()->title;
$count_proposals = $db->count("proposals",["proposal_seller_id" => $seller_id,"proposal_status" => 'active']);

?>


