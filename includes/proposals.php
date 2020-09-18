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
            <a href="#"><?= $seller_user_name; ?></a>
            <span class="level hint--top level-one-seller">
            <?= $seller_level; ?>
            </span>
            </span>
         </div>
         <h3><?= $proposal_title; ?></h3>
         <?php if(check_status($proposal_seller_id) == "Online"){ ?>
         <div class="is-online float-right">
            <i class="fa fa-circle"></i> 
            <?= $lang['proposals']['online']; ?>
         </div>
         <?php } ?>
         <div class="content-info">
            <div class="rating-wrapper">
               <span class="gig-rating text-body-2">
                  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1792 1792" width="15" height="15">
                     <path fill="currentColor"
                        d="M1728 647q0 22-26 48l-363 354 86 500q1 7 1 20 0 21-10.5 35.5t-30.5 14.5q-19 0-40-12l-449-236-449 236q-22 12-40 12-21 0-31.5-14.5t-10.5-35.5q0-6 2-20l86-500-364-354q-25-27-25-48 0-37 56-46l502-73 225-455q19-41 49-41t49 41l225 455 502 73q56 9 56 46z">
                     </path>
                  </svg>
                  <strong><?php if($proposal_rating == "0"){ echo "0.0 "; }else{ printf("%.1f", $average_rating); } ?> </strong> (<?= $count_reviews; ?>)
               </span>
            </div>
         </div>
         <div class="footer">
            <div class="favoriteIcon">
               <?php if(isset($_SESSION['seller_user_name'])){ ?>
               <?php if($proposal_seller_id != $login_seller_id){ ?>
               <i data-id="<?= $proposal_id; ?>" href="#" class="fa fa-heart <?= $show_favorite_class; ?>" data-toggle="tooltip" data-placement="top" title="Favorite"></i>
               <?php } ?>
               <?php }else{ ?>
               <a href="#" data-toggle="modal" data-target="#login-modal">
               <i class="fa fa-heart proposal-favorite" data-toggle="tooltip" data-placement="top" title="Favorite"></i>
               </a>
               <?php } ?>
            </div>
            <div class="price">
               <a href="<?= $site_url; ?>/proposals/<?= $seller_user_name; ?>/<?= $proposal_url; ?>">
               <?= $lang['proposals']['starting_at']; ?> <span> <?= showPrice($proposal_price); ?></span>
               </a>
            </div>
         </div>
      </div>
   </div>
</div>
<footer class="proposal-card-footer" style="display: none">
   <div class="proposal-fav">
      <?php if($proposal_enable_referrals == "yes" & $enable_referrals == "yes"){ ?>
      <?php if(isset($_SESSION['seller_user_name'])){ ?>
      <?php if($proposal_seller_id != $login_seller_id){ ?>
      <a class="icn-list proposal-offer" data-id="<?= $proposal_id; ?>">
      <?php require("$dir/images/affiliate.svg"); ?>
      </a>
      <?php } ?>
      <?php }else{ ?>
      <a class="icn-list" data-toggle="modal" data-target="#login-modal">
      <?php require("$dir/images/affiliate.svg"); ?>
      </a>
      <?php } ?>
      <?php } ?>
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
</footer>