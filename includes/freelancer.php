<div class="col-md-12">
   <div class="bg-white b-xs-1 card-body mb-4 freelancerBox">
      <div>
         <div class="row">
            <div class="col-lg-9 col-md-12">
               <figure class="wt-userlistingimg">
                  <?php if(!empty($seller_image)){ ?>
                  <img src="<?= $seller_image; ?>" width="100" class="rounded img-fluid">
                  <?php }else{ ?>
                  <img src="user_images/empty-image.png" width="100" class="rounded img-fluid">
                  <?php } ?>
                  <small class="text-muted mt-1">
                  <?= (check_status($seller_id) == "Online" ? "<i class='fa fa-circle online'></i>" : "<i class='fa fa-circle text-danger'></i>") ?>
                  <?= check_status($seller_id); ?>
                  </small>
                  <div class="wt-userdropdown wt-away template-content tipso_style wt-tipso">
                     <?php if($seller_level == 2){ ?>
                     <img src="images/level_badge_1.png" class="level_badge">
                     <?php }elseif($seller_level == 3){ ?>
                     <img src="images/level_badge_2.png" class="level_badge">
                     <?php }elseif($seller_level == 4){ ?>
                     <img src="images/level_badge_3.png" class="level_badge">
                     <?php } ?>
                  </div>
               </figure>
               <a href="<?= $seller_user_name; ?>">
                  <h6 class="font-weight-normal"><i class="fa fa-user-circle-o" aria-hidden="true" style="
                     color: #014049;
                     font-size: 16px;
                     vertical-align: middle;
                     "></i> <?= $seller_user_name; ?> </h6>
                  <h5> <?= $seller_headline; ?> </h5>
               </a>
               <ul class="tagline mb-2 p-0">
                  <li>
                     <i class="fa fa-user"></i>
                     <strong>Member Since: </strong> <?= $seller_register_date; ?>
                  </li>
                  <?php if($seller_recent_delivery != "none"){ ?>
                  <li>
                     <i class="fa fa-truck fa-flip-horizontal"></i>
                     <strong>Recent Delivery: </strong> <?= $seller_recent_delivery; ?>
                  </li>
                  <?php } ?>
                  <li>
                     <i class="fa fa-map-marker"></i>
                     <strong>Country: </strong> <?= $seller_country; ?>
                  </li>
                  <li>
                     <a href="conversations/message.php?seller_id=<?= $seller_id; ?>"><i class="fa fa-comments-o"></i> <strong>Contact:</strong> <?= $seller_user_name; ?> </a>
                  </li>
               </ul>
            </div>
            <div class="col-lg-3 col-md-12">
               <div class="star-rating">
                  <?php
                     for($seller_i=0; $seller_i<$average_rating; $seller_i++){
                       echo " <i class='fa fa-star'></i> ";
                     }
                     for($seller_i=$average_rating; $seller_i<5; $seller_i++){
                       echo " <i class='fa fa-star-o'></i> ";
                     }
                     ?>
                  <h4 class="mb-1"><?php printf("%.1f", $average); ?>/<small class="text-muted font-weight-normal">5</small></h4>
                  <a>(<?= $count_reviews; ?> Reviews)</a>
               </div>
               <a id="chatBtn" data-toggle="tooltip" data-placement="top" title="Chat With Me" href="conversations/message.php?seller_id=<?= $seller_id; ?>" class="button-gradient text-white mt-2"><i class="fa fa-comments-o" aria-hidden="true"></i> Chat</a>
            </div>
         </div>
         <?php if($seller_about != "") {
            ?>
         <p class="about-bg lead mb-2 mt-2"><?= $seller_about; ?></p>
         <?php }?>
         <div class="skills">
            <?php
               $select_skills_relation = $db->select("skills_relation",array("seller_id" => $seller_id));
               $countSkills = $select_skills_relation->rowCount();
               $i = 0;
               while($row_skills_relation = $select_skills_relation->fetch()){
               	$i++;
               	$relation_id = $row_skills_relation->relation_id;
               	$skill_id = $row_skills_relation->skill_id;
               	$skill_level = $row_skills_relation->skill_level;
               	$get_skill = $db->select("seller_skills",array("skill_id" => $skill_id));
               	$row_skill = $get_skill->fetch();
               	$skill_title = $row_skill->skill_title;
               	$dNone = "";
               	if($i > 5){
               		$dNone = "d-none";
               	}
               ?>
            <button class="btn btn-light tags-<?= $seller_id; ?> <?= $dNone; ?>"><?= $skill_title; ?></button>
            <?php } ?>
            <?php if($countSkills > 5){ ?>
            <button class="btn btn-light showMore" data-id="<?= $seller_id; ?>">More..</button>
            <?php } ?>
         </div>
      </div>
   </div>
   <script>
      $(".showMore").click(function(){
      	var id = $(this).data("id");
      	$(".tags-"+id).removeClass("d-none");
      	$(this).addClass("d-none");
      });
   </script>
</div>