<?php 
   $get_delivery = $db->select("instant_deliveries",['proposal_id'=>$proposal_id]);
   $row_delivery = $get_delivery->fetch();
   $enable_delivery = $row_delivery->enable;
   
      if($videoPlugin == 1){
        $proposal_videosettings =  $db->select("proposal_videosettings",array('proposal_id'=>$proposal_id))->fetch();
        $enableVideo = $proposal_videosettings->enable;
      }else{
        $enableVideo = 0;
      }
?>
   <div>
      <a href="<?= $site_url; ?>/proposals/<?= $seller_user_name; ?>/<?= $proposal_url; ?>">
         <img class="img-fluid" src="<?= $proposal_img1; ?>" />
      </a>
      <div class="inner-slider">
         <div class="inner-wrapper">
            <div class="d-flex align-items-center">
               <span class="seller-image">
               <img class="img-fluid"
                  src="<?= $seller_image; ?>"
                  alt='' />
               </span>
               <span class="seller-name">
               <a href="<?= $site_url; ?>/<?= $seller_user_name; ?>" class="seller-name"><?= $seller_user_name; ?> </a>
               <span class="level hint--top level-one-seller">
               <?= $seller_level; ?>
               </span>
               </span>
            </div>
            <h3><?= $proposal_title; ?></h3>
            <div class="content-info">
               <div class="rating-wrapper">
                  <span class="proposal-rating gig-rating">
                     <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1792 1792" width="15" height="15">
                        <path fill="currentColor"
                           d="M1728 647q0 22-26 48l-363 354 86 500q1 7 1 20 0 21-10.5 35.5t-30.5 14.5q-19 0-40-12l-449-236-449 236q-22 12-40 12-21 0-31.5-14.5t-10.5-35.5q0-6 2-20l86-500-364-354q-25-27-25-48 0-37 56-46l502-73 225-455q19-41 49-41t49 41l225 455 502 73q56 9 56 46z">
                        </path>
                     </svg>
                     <span>
                     <?php if($proposal_rating == "0"){ echo "0.0"; }else{ printf("%.1f", $average_rating); } ?>
                     (<?= $count_reviews; ?>)
                     </span>
                  </span>
               </div>
            </div>
            <div class="footer">
               <div class="proposal-fav">
                  <?php if($enableVideo == 1){ ?>
                  <a class="icn-list" data-toggle="tooltip" data-placement="top" title="<?= $lang['proposals']['video']; ?>">
                  <?php require("$dir/images/camera.svg"); ?>
                  </a>
                  <?php } ?>
                  <?php if($enable_delivery == 1){ ?>
                  <a class="icn-list" data-toggle="tooltip" data-placement="top" title="<?= $lang['proposals']['instant_delivery']; ?>">
                  <?php require("$dir/images/flash.svg"); ?>
                  </a>
                  <?php } ?>
               </div>
               <div class="price">
                  <a href="#">
                  Starting At <span> <?= showPrice($proposal_price); ?></span>
                  </a>
               </div>
            </div>
         </div>
      </div>
   </div>