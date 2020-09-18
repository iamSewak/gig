<?php
  $online_sellers = array();
  $cat_id = array();
  $delivery_time = array();
  $seller_level = array();
  $seller_language = array();
  if(isset($_GET['online_sellers'])){
    foreach($_GET['online_sellers'] as $value){
      $online_sellers[$value] = $value;
    }
  }

  if(isset($_REQUEST['instant_delivery'])){
    $instant_delivery = $_REQUEST['instant_delivery'][0];
  }else{
    $instant_delivery = 0;
  }

  if(isset($_REQUEST['order'])){
    $order_by = $_REQUEST['order'][0];
  }else{
    $order_by = "DESC";
  }
  if(isset($_GET['seller_country'])){
    foreach($_GET['seller_country'] as $value){
      $sellerCountry[$value] = $value;
    }
  }
  if(isset($_GET['seller_city'])){
    foreach($_GET['seller_city'] as $value){
      $sellerCity[$value] = $value;
    }
  }


  if(isset($_GET['cat_id'])){
    foreach($_GET['cat_id'] as $value){
      $cat_id[$value] = $value;
    }
  }
  if(isset($_GET['delivery_time'])){
    foreach($_GET['delivery_time'] as $value){
      $delivery_time[$value] = $value;
    }
  }
  if(isset($_GET['seller_language'])){
    foreach($_GET['seller_language'] as $value){
      $seller_language[$value] = $value;
    }
  }
?>

<div id="accordion">
   <div class="px-4">
      <ul class="nav flex-column">
         <li class="nav-item checkbox checkbox-success">
        <label>
        <input type="checkbox" value="1" class="get_online_sellers" <?php if(isset($online_sellers["1"])){ echo "checked"; } ?> >
        <span><?= $lang['sidebar']['online_sellers']; ?></span>
        </label>
      </li>
      </ul>
   </div>
   <div class="px-4">
      <ul class="nav flex-column">
         <li class="nav-item checkbox checkbox-success">
        <label>
        <input type="checkbox" value="1" class="get_instant_delivery" <?php if($instant_delivery == 1){ echo "checked"; } ?> >
        <span><?= $lang['sidebar']['instant_delivery']; ?></span>
        </label>
      </li>
      </ul>
   </div>
   <div class="filters-card border-bottom p-4">
      <div class="filters-card-header" id="headingOne">
         <h6 class="mb-0">
            <a href="#" class="<?=($lang_dir == "right" ? 'float-right-':'float-left-')?> btn-link" data-toggle="collapse" data-target="#collapse_country" aria-expanded="false" aria-controls="collapse_country">
           <?= $lang["sidebar"]["seller_country"]; ?>
            </a>
             <button class="btn btn-secondary btn-sm <?=($lang_dir == "right" ? 'float-left':'float-right')?> clear_seller_country clearlink" onclick="clearCountry()">
      <?= $lang['sidebar']['clear_filter']; ?>
    </button>
         </h6>
      </div>
      <div id="collapse_country" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
         <div class="filters-card-body card-shop-filters">
             <ul class="nav flex-column">
    <?php
    $countries = [];
    $get_proposals = $db->query("select DISTINCT proposal_seller_id from proposals where proposal_featured='yes' AND proposal_status='active'");
    while($row_proposals = $get_proposals->fetch()){
    $seller_id = $row_proposals->proposal_seller_id;

    $seller = $db->query("select DISTINCT seller_id,seller_country from sellers where seller_id='$seller_id'")->fetch();
    $seller_country = $seller->seller_country;
    if(!empty($seller_country) AND @$countries[$seller_country] != $seller_country){
      $countries[$seller_country] = $seller_country;
    ?>
    <li class="nav-item checkbox checkbox-success">
      <label>
      <input type="checkbox" value="<?= $seller_country; ?>" class="get_seller_country"
      <?php if(isset($sellerCountry["$seller_country"])){ echo "checked"; } ?>>
      <span><?= $seller_country; ?></span>
      </label>
    </li>
    <?php }} ?>
    </ul>
         </div>
      </div>
   </div>


   <div class="filters-card border-bottom p-4">
      <div class="filters-card-header" id="headingOne">
         <h6 class="mb-0">
            <a href="#" class="<?=($lang_dir == "right" ? 'float-right-':'float-left-')?> btn-link" data-toggle="collapse" data-target="#collapse_city" aria-expanded="false" aria-controls="collapse_city">
          <?= $lang["sidebar"]["seller_city"]; ?>
            </a>
             <button class="btn btn-secondary btn-sm <?=($lang_dir == "right" ? 'float-left':'float-right')?> clear_seller_city clearlink" onclick="clearCity()">
      <?= $lang['sidebar']['clear_filter']; ?>
    </button>
         </h6>
      </div>
      <div id="collapse_city" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
         <div class="filters-card-body card-shop-filters">
             <ul class="nav flex-column">
    <?php
    $cities = [];
    $get_proposals = $db->query("select DISTINCT proposal_seller_id from proposals where proposal_featured='yes' AND proposal_status='active'");
    while($row_proposals = $get_proposals->fetch()){
    $seller_id = $row_proposals->proposal_seller_id;
    $seller = $db->select("sellers",['seller_id'=>$seller_id])->fetch();
    $seller_country = $seller->seller_country;
    $seller_city = $seller->seller_city;
    if(!empty($seller_city) AND @$cities[$seller_city] != $seller_city){
      $cities[$seller_city] = $seller_city;
    ?>
    <li class="nav-item checkbox checkbox-success" data-country="<?= $seller_country; ?>">
      <label>
      <input type="checkbox" value="<?= $seller_city; ?>" class="get_seller_city" <?php if(isset($sellerCity["$seller_city"])){ echo "checked"; } ?>>
      <span><?= $seller_city; ?></span>
      </label>
    </li>
    <?php }} ?>
    </ul>
         </div>
      </div>
   </div>


<?php include("$dir/includes/comp/currency_converter.php"); ?>


   <div class="filters-card border-bottom p-4">
      <div class="filters-card-header" id="headingOne">
         <h6 class="mb-0">
            <a href="#" class="<?=($lang_dir == "right" ? 'float-right-':'float-left-')?> btn-link" data-toggle="collapse" data-target="#collapse_category" aria-expanded="false" aria-controls="collapse_category">
          <?= $lang['sidebar']['categories']; ?>
            </a>
             <button class="btn btn-secondary btn-sm <?=($lang_dir == "right" ? 'float-left':'float-right')?> clear_cat_id clearlink" onclick="clearCat()">
    <i class="fa fa-times-circle"></i> Clear Filter
    </button>
         </h6>
      </div>
      <div id="collapse_category" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
         <div class="filters-card-body card-shop-filters">
             <ul class="nav flex-column">
      <?php
        $get_proposals = $db->query("select DISTINCT proposal_cat_id from proposals where proposal_featured='yes' AND proposal_status='active'");
        while($row_proposals = $get_proposals->fetch()){
        $proposal_cat_id = $row_proposals->proposal_cat_id;
        $get_meta = $db->select("cats_meta",array("cat_id" => $proposal_cat_id, "language_id" => $siteLanguage));
        $category_title = $get_meta->fetch()->cat_title;
        if(!empty($category_title)){
      ?>
      <li class="nav-item checkbox checkbox-success">
        <label>
        <input type="checkbox" value="<?= $proposal_cat_id; ?>" class="get_cat_id"
          <?php if(isset($cat_id[$proposal_cat_id])){ echo "checked"; } ?>>
        <span><?= $category_title; ?></span>
        </label>
      </li>
      <?php }} ?>
    </ul>
         </div>
      </div>
   </div>

<div class="filters-card border-bottom p-4">
      <div class="filters-card-header" id="headingOne">
         <h6 class="mb-0">
            <a href="#" class="<?=($lang_dir == "right" ? 'float-right-':'float-left-')?> btn-link" data-toggle="collapse" data-target="#collapse_delivery" aria-expanded="false" aria-controls="collapse_delivery">
         <?= $lang['sidebar']['delivery_time']; ?>
            </a>
             <button class="btn btn-secondary btn-sm <?=($lang_dir == "right" ? 'float-left':'float-right')?> clear_delivery_time clearlink" onclick="clearDelivery()">
    <i class="fa fa-times-circle"></i> Clear Filter
    </button>
         </h6>
      </div>
      <div id="collapse_delivery" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
         <div class="filters-card-body card-shop-filters">
            <ul class="nav flex-column">
      <?php
        $get_proposals = $db->query("select DISTINCT delivery_id from proposals where proposal_featured='yes' AND proposal_status='active'");
        while($row_proposals = $get_proposals->fetch()){
        $delivery_id = $row_proposals->delivery_id;
        $select_delivery_time = $db->select("delivery_times",array('delivery_id' => $delivery_id));
        $delivery_title = $select_delivery_time->fetch()->delivery_title;
        if(!empty($delivery_title)){
      ?>
      <li class="nav-item checkbox checkbox-success">
        <label>
        <input type="checkbox" value="<?= $delivery_id; ?>" class="get_delivery_time"
          <?php if(isset($delivery_time[$delivery_id])){ echo "checked"; } ?>>
        <span><?= $delivery_title; ?></span>
        </label>
      </li>
      <?php }} ?>
    </ul>
         </div>
      </div>
   </div>





   <div class="filters-card border-bottom p-4">
      <div class="filters-card-header" id="headingOne">
         <h6 class="mb-0">
            <a href="#" class="<?=($lang_dir == "right" ? 'float-right-':'float-left-')?> btn-link" data-toggle="collapse" data-target="#collapse_level" aria-expanded="false" aria-controls="collapse_level">
         <?= $lang['sidebar']['seller_level']; ?>
            </a>
             <button class="btn btn-secondary btn-sm <?=($lang_dir == "right" ? 'float-left':'float-right')?> clear_seller_level clearlink" onclick="clearLevel()">
    <i class="fa fa-times-circle"></i> Clear Filter
    </button>
         </h6>
      </div>
      <div id="collapse_level" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
         <div class="filters-card-body card-shop-filters">
            <ul class="nav flex-column">
      <?php
        $get_seller_levels = $db->query("select * from seller_levels where level_id='4'");
        while($row_proposals = $get_seller_levels->fetch()){
        $level_id = $row_proposals->level_id;
        $select_seller_levels = $db->select("seller_levels",array('level_id' => $level_id));
        $level_title = $db->select("seller_levels_meta",array("level_id"=>$level_id,"language_id"=>$siteLanguage))->fetch()->title;
        if(!empty($level_title)){
      ?>
      <li class="nav-item checkbox checkbox-success">
        <label>
        <input type="checkbox" value="<?= $level_id; ?>" class="get_seller_level"
          <?php if(isset($seller_level[$level_id])){ echo "checked"; } ?>>
        <span><?= $level_title; ?></span>
        </label>
      </li>
      <?php }} ?>
    </ul>
         </div>
      </div>
   </div>



   <div class="filters-card border-bottom p-4">
      <div class="filters-card-header" id="headingOne">
         <h6 class="mb-0">
            <a href="#" class="<?=($lang_dir == "right" ? 'float-right-':'float-left-')?> btn-link" data-toggle="collapse" data-target="#collapse_language" aria-expanded="false" aria-controls="collapse_language">
         <?= $lang['sidebar']['seller_lang']; ?>
            </a>
             <button class="btn btn-secondary btn-sm <?=($lang_dir == "right" ? 'float-left':'float-right')?> clear_seller_language clearlink" onclick="clearLanguage()">
    <i class="fa fa-times-circle"></i> Clear Filter
    </button>
         </h6>
      </div>
      <div id="collapse_language" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
         <div class="filters-card-body card-shop-filters">
            <ul class="nav flex-column">
      <?php
        $get_proposals = $db->query("select DISTINCT language_id from proposals where not language_id='0' and proposal_featured='yes' AND proposal_status='active'");
        while($row_proposals = $get_proposals->fetch()){
        $language_id = $row_proposals->language_id;
        $select_seller_languges = $db->select("seller_languages",array('language_id' => $language_id));
        $language_title = @$select_seller_languges->fetch()->language_title;
        if(!empty($language_title)){
      ?>
      <li class="nav-item checkbox checkbox-success">
        <label>
        <input type="checkbox" value="<?= $language_id; ?>" class="get_seller_language"
          <?php if(isset($seller_language[$language_id])){ echo "checked"; } ?>>
        <span><?= $language_title; ?></span>
        </label>
      </li>
      <?php }} ?>
    </ul>
         </div>
      </div>
   </div>


 </div>






