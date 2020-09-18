<?php
   $get_section = $db->select("home_section",array("language_id" => $siteLanguage));
   $row_section = $get_section->fetch();
   $count_section = $get_section->rowCount();
   @$section_heading = $row_section->section_heading;
   @$section_short_heading = $row_section->section_short_heading;
   
   $get_slides = $db->query("select * from home_section_slider LIMIT 0,1");
   $row_slides = $get_slides->fetch();
   $slide_id = $row_slides->slide_id; 
   $slide_image = $row_slides->slide_image; 
   ?>
<!-- Begin Page Content -->
<section class="py-5 homepage-search-block position-relative">
   <div class="container">
      <div class="row py-lg-5">
         <div class="col-lg-7">
            <div class="homepage-search-title">
               <h1 class="mb-3 text-shadow text-gray-900 font-weight-bold">Find The Perfect Freelance Services For Your Business</h1>
               <h5 class="mb-5 text-shadow text-gray-800 font-weight-normal">Millions of people use miver to turn their ideas into reality.
               </h5>
            </div>
            <div class="homepage-search-form">
               <form action="" method="post" class="form-noborder">
                  <div class="form-row">
                     <div class="col-lg-7 col-md-7 col-sm-12 form-group">
                        <input type="text" name="search_query" class="form-control border-0 form-control-lg shadow-sm" value="<?= @$_SESSION["search_query"]; ?>" placeholder="<?= $lang['search']['placeholder']; ?>">
                     </div>
                     <div class="col-lg-2 col-md-2 col-sm-12 form-group">
                        <button name="search" type="submit" class="btn btn-success btn-block btn-lg btn-gradient shadow-sm">
                        <i class="fa fa-search"></i>
                        </button>
                     </div>
                  </div>
               </form>
            </div>
            <div class="popular">
               <span class="text-body-2">Popular</span>
               <ul>
                  <li><a href="#" class="text-body-2">Voice over</a></li>
                  <li><a href="#" class="text-body-2">translation</a></li>
                  <li><a href="#" class="text-body-2">logo design</a></li>
                  <li><a href="#" class="text-body-2">Articles &amp; Blog Posts</a></li>
               </ul>
            </div>
         </div>
         <div class="col-lg-5">
            <img class="img-fluid" src="images/banner.svg" alt='' />
         </div>
      </div>
   </div>
</section>
      
<!-- start market -->
<div class="freelance-projects bg-white py-5">
   <div class="container">
      <div class="row owl-carousel home-cards-carousel">
         <!--- owl-carousel home-cards-carousel Starts --->
         <?php
            $get_cards = $db->select("home_cards",array("language_id" => $siteLanguage));
            while($row_cards = $get_cards->fetch()){
            $card_id = $row_cards->card_id;
            $card_title = $row_cards->card_title;
            $card_desc = $row_cards->card_desc;
            $card_image = getImageUrl("home_cards",$row_cards->card_image); 
            $card_link = $row_cards->card_link;
            ?>
         <div class="col">
            <div class="freelancer">
               <a href="<?= $card_link; ?>"><img src="<?= $card_image; ?>"></a>
               <div class="freelancer-footer">
                  <img src="<?= $card_image; ?>">
                  <h5><?= $card_desc; ?>
                     <span><?= $card_title; ?></span>
                  </h5>
               </div>
            </div>
         </div>
         <?php } ?>
      </div>
      <!--- owl-carousel home-cards-carousel Ends --->
   </div>
</div>
<!-- start market -->
<!--       recent -->
<section class="py-5">
   <div class="view_slider recommended">
      <div class="container">
         <div class="row">
            <div class="col-lg-12">
              <div class="title-row">
                <h3><?= $lang['home']['proposals']['title']; ?></h3>
               
               <?php 
                  $get_proposals = $db->query("select * from proposals where proposal_featured='yes' AND proposal_status='active'");
                  $count_proposals = $get_proposals->rowCount();
                  if($count_proposals > 1){
                  ?>
                  <a href="featured_proposals" class="btn button-gradient" style="color: white;" >
               View More               </a>
            
              </div>
               <?php } ?>
               <div class="mt-5">
                  <!--- home-featured-carousel Starts --->
                  <div class="row">
                     <!--- row Starts -->
                     <?php
                        $get_proposals = $db->query("select * from proposals where proposal_featured='yes' AND proposal_status='active' LIMIT 0,10");
                        while($row_proposals = $get_proposals->fetch()){
                        $proposal_id = $row_proposals->proposal_id;
                        $proposal_title = $row_proposals->proposal_title;
                        $proposal_price = $row_proposals->proposal_price;
                        if($proposal_price == 0){
                        $get_p_1 = $db->select("proposal_packages",array("proposal_id" => $proposal_id,"package_name" => "Basic"));
                        $proposal_price = $get_p_1->fetch()->price;
                        }
                        $proposal_img1 = getImageUrl2("proposals","proposal_img1",$row_proposals->proposal_img1);
                        $proposal_video = $row_proposals->proposal_video;
                        $proposal_seller_id = $row_proposals->proposal_seller_id;
                        $proposal_rating = $row_proposals->proposal_rating;
                        $proposal_url = $row_proposals->proposal_url;
                        $proposal_featured = $row_proposals->proposal_featured;
                        $proposal_enable_referrals = $row_proposals->proposal_enable_referrals;
                        $proposal_referral_money = $row_proposals->proposal_referral_money;
                        if(empty($proposal_video)){
                        $video_class = "";
                        }else{
                        $video_class = "video-img";
                        }
                        $get_seller = $db->select("sellers",array("seller_id" => $proposal_seller_id));
                        $row_seller = $get_seller->fetch();
                        $seller_user_name = $row_seller->seller_user_name;
                        $seller_image = getImageUrl2("sellers","seller_image",$row_seller->seller_image);
                        $seller_level = $row_seller->seller_level;
                        $seller_status = $row_seller->seller_status;
                        if(empty($seller_image)){
                        $seller_image = "empty-image.png";
                        }
                        // Select Proposal Seller Level
                        @$seller_level = $db->select("seller_levels_meta",array("level_id"=>$seller_level,"language_id"=>$siteLanguage))->fetch()->title;
                        $proposal_reviews = array();
                        $select_buyer_reviews = $db->select("buyer_reviews",array("proposal_id" => $proposal_id));
                        $count_reviews = $select_buyer_reviews->rowCount();
                        while($row_buyer_reviews = $select_buyer_reviews->fetch()){
                          $proposal_buyer_rating = $row_buyer_reviews->buyer_rating;
                          array_push($proposal_reviews,$proposal_buyer_rating);
                        }
                        $total = array_sum($proposal_reviews);
                        @$average_rating = $total/count($proposal_reviews);
                        ?>
                     <div class="col-xl-2dot4 col-lg-3 col-md-4 col-sm-6 col-xs-12 mb-4">
                        <?php require("includes/proposals.php"); ?>
                     </div>
                     <?php } ?>
                  </div>
                  <!--- row Ends -->
               </div>
               <!--- home-featured-carousel Ends --->
            </div>
         </div>
      </div>
   </div>
</section>
<!-- start main -->
<!--<div id="demo1" class="main carousel">
   <ul class="carousel-indicators">
     <li data-target="#demo1" data-slide-to="0" class="active"></li>
     <?php
      $count_slides = $db->count("home_section_slider");
      $i = 0;
      $get_slides = $db->query("select * from home_section_slider LIMIT 1,$count_slides");
      while($row_slides = $get_slides->fetch()){
        $i++;
      ?>
     <li data-target="#demo1" data-slide-to="<?= $i; ?>"></li>
     <?php } ?>
   </ul>
   <div class="carousel-inner">
     <div class="carousel-caption">
       <h1><?= $section_heading; ?></h1>
       <h5><?= $section_short_heading; ?></h5>
       <div class="row justify-content-center">
         <div class="col-md-5 col-11">
           <form action="" method="post">
             <div class="input-group space20">
               <input type="text" name="search_query" class="form-control" value="<?= @$_SESSION["search_query"]; ?>" placeholder="<?= $lang['search']['placeholder']; ?>">
               <div class="input-group-append move-icon-up">
                 <button name="search" type="submit" class="search_button">
                     <img src="images/srch2.png" class="srch2">
                 </button>
               </div>
             </div>
           </form>
         </div>
       </div>
     </div>
     <?php
      $i = 0;
      $get_slides = $db->query("select * from home_section_slider");
      while($row_slides = $get_slides->fetch()){
      $slide_image = getImageUrl("home_section_slider",$row_slides->slide_image);
      $s_extension = pathinfo($slide_image, PATHINFO_EXTENSION);
      $i++;
      ?>
     <div class="carousel-item <?= ($i == 1 ? "active" : "") ?>">
       <img src="<?= $slide_image; ?>"> 
         <?php if($s_extension == "mp4" or $s_extension == "webm" or $s_extension == "ogg"){ ?>
           <video class="img-fluid w-100" controls muted <?= ($i == 1 ? "autoplay" : "") ?>>
             <source src="<?= $slide_image; ?>" type="video/mp4">
           </video>
         <?php }else{ ?>
             <img src="<?= $slide_image; ?>">
         <?php } ?>
   
     </div>
     <?php } ?>
   </div>
   
   <a class="carousel-control-prev" href="#demo1" data-slide="prev" style="width: 6%; opacity: 1;">
     <i class="fa fa-arrow-circle-o-left fa-3x"></i>
   </a>
   
   <a class="carousel-control-next" href="#demo1" data-slide="next" style="width: 6%; opacity: 1;">
     <i class="fa fa-arrow-circle-o-right fa-3x"></i>
   </a>
   
   </div> -->
<!-- end main -->
<!--<section class="market">
   <div class="container" style="max-width: 1360px !important;">
     <div class="row">
       <div class="col-md-12">
         <h2><?= $lang['home']['categories']['title']; ?></h2>
         <h4><?= $lang['home']['categories']['desc']; ?></h4>
         <div class="row space80">
           <?php
      $get_categories = $db->query("select * from categories where cat_featured='yes' ".($lang_dir == "right" ? 'order by 1 DESC LIMIT 4,4':' LIMIT 0,4')."");
      while($row_categories = $get_categories->fetch()){
      $cat_id = $row_categories->cat_id;
      $cat_image = getImageUrl("categories",$row_categories->cat_image); 
      $cat_url = $row_categories->cat_url;
      
      $get_meta = $db->select("cats_meta",array("cat_id" => $cat_id, "language_id" => $siteLanguage));
      $row_meta = $get_meta->fetch();
      $cat_title = $row_meta->cat_title;
      ?>
           <div class="col-md-3 col-6">
             <a href="categories/<?= $cat_url; ?>">
               <div class="grn_box">
                 <img src="<?= $cat_image; ?>" class="mx-auto d-block">
                 <p><?= $cat_title; ?></p>
               </div>
             </a>
           </div>
           <?php } ?>
         </div>
         <div class="space80 hidden-xs"></div>
         <div class="space20 visible-xs"></div>
         <div class="row space80">
           <?php
      $get_categories = $db->query("select * from categories where cat_featured='yes' ".($lang_dir == "right" ? 'order by 1 DESC LIMIT 0,4':' LIMIT 4,4')."");
      while($row_categories = $get_categories->fetch()){
      $cat_id = $row_categories->cat_id;
      $cat_image = getImageUrl("categories",$row_categories->cat_image);
      $cat_url = $row_categories->cat_url;
      
      $get_meta = $db->select("cats_meta",array("cat_id" => $cat_id, "language_id" => $siteLanguage));
      $row_meta = $get_meta->fetch();
      $cat_title = $row_meta->cat_title;
      ?>
           <div class="col-md-3 col-6">
             <a href="categories/<?= $cat_url; ?>">
               <div class="grn_box">
                 <img src="<?= $cat_image; ?>" class="mx-auto d-block" />
                 <p><?= $cat_title; ?></p>
               </div>
             </a>
           </div>
           <?php } ?>
         </div>
       </div>
     </div>
   </div>
   </section>-->
<!-- end market -->
<!-- start timer -->
<!--<section class="timer">
   <div class="container" style="max-width: 1335px !important;">
     <div class="row">
       <?php
      $get_boxes = $db->query("select * from section_boxes where language_id='$siteLanguage' LIMIT 0,1");
      while($row_boxes = $get_boxes->fetch()){
      $box_id = $row_boxes->box_id;
      $box_title = $row_boxes->box_title;
      $box_desc = $row_boxes->box_desc;
      $box_image = getImageUrl("section_boxes",$row_boxes->box_image);
      ?>
       <div class="col-md-4 pad0">
         <div class="box">
           <h5><?= $box_title; ?></h5>
           <p><?= $box_desc; ?></p>
         </div>
       </div>
       <div class="col-md-4 pad0">
         <div class="blu_box">
           <img src="<?= $box_image; ?>" class="img-fluid mx-auto d-block">
         </div>
       </div>
       <?php } ?>
       <?php
      $get_boxes = $db->query("select * from section_boxes where language_id='$siteLanguage' LIMIT 1,100");
      while($row_boxes = $get_boxes->fetch()){
      $box_id = $row_boxes->box_id;
      $box_title = $row_boxes->box_title;
      $box_desc = $row_boxes->box_desc;
      $box_image = getImageUrl("section_boxes",$row_boxes->box_image);
      ?>
       <div class="col-md-4 pad0">
         <div class="box">
           <h5><?= $box_title; ?></h5>
           <p><?= $box_desc; ?></p>
         </div>
       </div>
       <div class="col-md-4 pad0">
         <div class="blu_box1">
           <img src="<?= $box_image; ?>" class="img-fluid mx-auto d-block">
         </div>
       </div>
       <?php } ?>
     </div>
   </div>
   </section>-->
<!-- end timer -->
<!-- start top -->
<script>
   $(document).ready(function(){
   
     var slider = $('#demo1').carousel({
       interval: 4000
     });
   
     var active = $(".carousel-item.active").find("video");
     var active_length = active.length;
   
     if(active_length == 1){
       slider.carousel('pause');
       console.log('paused');
       $(".carousel-indicators").css({"bottom": "90px"});
     }
   
     $("#demo1").on('slide.bs.carousel', function(event){
       var eq = event.to;
       // console.log(event.from);
       // console.log(event.to);
       var video = $(event.relatedTarget).find("video");
       if(video.length == 1){
           slider.carousel('pause');
           console.log('paused');
           $(".carousel-indicators").css({"bottom": "90px"});
           video.trigger('play');
       }else{
         $(".carousel-indicators").css({"bottom": "20px"});
       }
     });
   
     $('video').on('ended',function(){
       slider.carousel({'pause': false});
       console.log('started');
     });
   
   });
   
</script>