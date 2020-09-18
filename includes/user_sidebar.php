<div class="col-lg-4 left">
   <div class="profile_info">
      <div class="seller-card">
         <div>
            <?php if(check_status($seller_id) == "Online"){ ?>
            <div class="user-online-indicator is-online " data-user-id="1152855">
               <i class="fa fa-circle"></i><?= check_status($seller_id); ?>
            </div>
            <?php } ?>
         </div>
         <div class="user-profile-info">
            <div>
               <?php if(isset($_SESSION['seller_user_name'])){ ?>
               <?php if($_SESSION['seller_user_name'] == $seller_user_name){ ?>
               <a href="settings?profile_settings" class="ambassadors-badge" ><i class="fa fa-pencil"></i> Edit&nbsp;</a>    
               <?php } ?>
               <?php } ?>
               <div class="user-profile-image">
                  <?php if(!empty($seller_image)){ ?>
                  <label class="user-pict">
                  <img
                     src="<?= $seller_image; ?>"
                     class="img-fluid user-pict-img" alt="Askbootstrap">
                  <a href="#"
                     class="user-badge-round user-badge-round-med locale-en-us top-rated-seller"></a>
                  </label>
                  <?php }else{ ?>
                  <label class="user-pict">
                  <img
                     src="user_images/empty-image.png"
                     class="img-fluid user-pict-img" alt="Askbootstrap">
                  <a href="#"
                     class="user-badge-round user-badge-round-med locale-en-us top-rated-seller"></a>
                  </label>
                  <?php } ?>
                  <?php if($seller_level == 2){ ?>
                  <label class="user-pict">
                  <img
                     src="images/level_badge_1.png"
                     class="img-fluid user-pict-img" alt="Askbootstrap">
                  <a href="#"
                     class="user-badge-round user-badge-round-med locale-en-us top-rated-seller"></a>
                  </label>
                  <?php } ?>
                  <?php if($seller_level == 3){ ?>
                  <label class="user-pict">
                  <img
                     src="images/level_badge_2.png"
                     class="img-fluid user-pict-img" alt="Askbootstrap">
                  <a href="#"
                     class="user-badge-round user-badge-round-med locale-en-us top-rated-seller"></a>
                  </label>
                  <?php } ?>
                  <?php if($seller_level == 4){ ?>
                  <label class="user-pict">
                  <img
                     src="images/level_badge_3.png"
                     class="img-fluid user-pict-img" alt="Askbootstrap">
                  <a href="#"
                     class="user-badge-round user-badge-round-med locale-en-us top-rated-seller"></a>
                  </label>
                  <?php } ?>
               </div>
            </div>
            <div class="user-profile-label">
               <div class="username-line">
                  <a href="#" class="seller-link">Hi, I'm <?= ucfirst($seller_user_name); ?></a>
               </div>
               <div class="oneliner-wrapper">
                  <small class="oneliner"><?= $seller_headline; ?></small>
                  <div class="ratings-wrapper">
                     <?php
                        for($seller_i=0; $seller_i<$average_rating; $seller_i++){
                          echo " <i class='fa fa-star'></i> ";
                        }
                        for($seller_i=$average_rating; $seller_i<5; $seller_i++){
                          echo " <i class='fa fa-star-o'></i> ";
                        }
                        ?>
                     <span class="m-1">
                     <strong><?php printf("%.1f", $average); ?></strong> 
                     (<?= $count_reviews; ?> reviews)
                     </span>
                  </div>
               </div>
            </div>
         </div>
         <div class="buttons-wrapper">
            <?php if($count_proposals != 0){ ?>
            <?php if(!isset($_SESSION['seller_user_name'])){ ?>
            <a class="btn-lrg-standard btn-contact-me js-contact-me js-open-popup-join" href="login.php"> Contact <small>(<?= $seller_user_name; ?>)</small></a>
            <?php }else{ ?>
            <?php if($_SESSION['seller_user_name'] != $seller_user_name){ ?>
            <a class="btn-lrg-standard btn-contact-me js-contact-me js-open-popup-join" href="<?= $site_url; ?>/conversations/message?seller_id=<?= $seller_id ?>"> 
            Contact <small>(<?= $seller_user_name; ?>)</small>
            </a>
            <?php } ?>
            <?php } ?>
            <?php }else{ ?>
            <br><br>
            <?= (empty($seller_headline) AND check_status($seller_id) != "Onliness")?"<br><br>":""; ?>
            <?php } ?>
            <div style="display: none;" class="btn-lrg-standard btn-white btn-custom-order">Get a Quote</div>
         </div>
         <div class="user-stats-desc">
            <ul class="user-stats">
               <li class="location">From
                  <strong>
                  <?php if(!empty($seller_country)){ ?>
                  <?= $seller_country; ?>
                  <?php } ?>
                  </strong>
               </li>
               <li class="member-since"><?= $lang['user_profile']['member_since']; ?><strong><?= $seller_register_date; ?></strong></li>
               <?php if($seller_recent_delivery != "none"){ ?>
               <li class="recent-delivery"><?= $lang['user_profile']['recent_delivery']; ?><strong><?= $seller_recent_delivery; ?> </strong></li>
               <?php } ?>
               <?php if($seller_level != 1){ ?>
               <li class="response-time"><?= $lang['user_profile']['seller_level']; ?><strong><?= $level_title; ?></strong></li>
               <?php } ?>
            </ul>
         </div>
      </div>
   </div>
   <div class="seller-profile">
      <div class="description">
         <h3><?= $lang['user_profile']['description']; ?></h3>
         <p><?= $seller_about; ?></p>
      </div>
       <div class="skills">
         <h3><?= $lang['user_profile']['languages']; ?></h3>
         <?php if(isset($_SESSION['seller_user_name'])){ ?>
         <?php if($login_seller_user_name == $seller_user_name){ ?>
         <ul class="list-unstyled">
            <!-- list-unstyled Starts -->
            <li class="button-li mb-4 clearfix">
               <button data-toggle="collapse" data-target="#language" class="btn btn-success float-right">
               <i class="fa fa-plus-circle" aria-hidden="true"></i> <?= $lang['button']['add_new']; ?>
               </button>
            </li>
            <div id="language" class="collapse form-style mb-2">
               <!-- language collapse form-style mb-2 Starts -->
               <form method="post">
                  <!-- form Starts -->
                  <div class="form-group">
                     <!-- form-group Starts -->
                     <select class="form-control" name="language_id" required="">
                        <option value=""><?= $lang['label']['select_language']; ?></option>
                        <?php 
                           $s_langs = array();
                           
                           $get = $db->select("languages_relation",array("seller_id"=>$login_seller_id));
                           
                           while($row = $get->fetch()){
                           
                           array_push($s_langs,$row->language_id);
                           
                           }
                           
                           $s_langs = implode(",", $s_langs);
                           
                           if(!empty($s_langs)){ $query_where  = "where not language_id IN ($s_langs)"; }else{ $query_where = ""; }
                           
                           $get_languages = $db->query("select * from seller_languages $query_where");
                           
                           while($row_languages = $get_languages->fetch()){
                           
                           $language_id = $row_languages->language_id;
                           $language_title = $row_languages->language_title;
                           
                           ?>
                        <option value="<?= $language_id; ?>"> <?= $language_title; ?> </option>
                        <?php } ?>
                        <option value="custom">Custom Language</option>
                     </select>
                  </div>
                  <!-- form-group Ends -->
                  <div class="form-group language-title d-none">
                     <!-- form-group Starts -->
                     <input type="text" placeholder="Language Name" class="form-control" name="language_title">
                  </div>
                  <!-- form-group Ends -->
                  <div class="form-group">
                     <!-- form-group Starts -->
                     <select class="form-control" name="language_level" required="">
                        <option class="hidden"><?= $lang['label']['select_level']; ?></option>
                        <option value="basic"> Basic </option>
                        <option value="Fluent"> Fluent </option>
                        <option value="Conversational"> Conversational </option>
                        <option value="Native or Bilingual"> Native or Bilingual </option>
                     </select>
                  </div>
                  <!-- form-group Ends -->
                  <div class="text-center">
                     <!-- text-center Starts -->
                     <button type="button" data-toggle="collapse" data-target="#language" class="btn btn-secondary">
                     <?= $lang['button']['cancel']; ?>
                     </button>
                     <button type="submit" name="insert_language" class="btn btn-success">
                     <?= $lang['button']['add']; ?>
                     </button>
                  </div>
                  <!-- text-center Ends -->
               </form>
               <!-- form Ends -->
               <?php 
                  if(isset($_POST['insert_language'])){
                    
                    $language_id = $input->post('language_id');
                    $language_level = $input->post('language_level');
                  
                    if($language_id == "custom"){
                  
                      $language_title = $input->post('language_title');
                      $insert_language = $db->insert("seller_languages",array("language_title"=>$language_title));
                      $language_id = $db->lastInsertId();
                  
                    }
                  
                    $insert_language = $db->insert("languages_relation",array("seller_id" => $seller_id,"language_id" => $language_id,"language_level" => $language_level));
                    echo "<script>window.open('$seller_user_name','_self');</script>";
                    
                  }
                  
                  ?>
            </div>
            <!-- language collapse form-style mb-2 Ends -->
         </ul>
         <!-- list-unstyled Ends -->
         <?php } ?>
         <?php } ?>
         <div class="clearfix"></div>
         <ul class="list-unstyled mt-3">
            <!-- list-unstyled mt-3 Starts -->
            <?php
               $select_languages_relation = $db->select("languages_relation",array("seller_id" => $seller_id));
               
               while($row_languages_relation = $select_languages_relation->fetch()){
                 
                 $relation_id = $row_languages_relation->relation_id;
                 $language_id = $row_languages_relation->language_id;
                 $language_level = $row_languages_relation->language_level;
               
               
                 $get_language = $db->select("seller_languages",array("language_id" => $language_id));
                 $row_language = $get_language->fetch();
                 $language_title = $row_language->language_title;
               
               ?>
            <li>
               <!--- card-li mb-1 Starts -->
               <?= $language_title; ?> - <span> <?= $language_level; ?> </span>
               <?php if(isset($_SESSION['seller_user_name'])){ ?>
               <?php if($login_seller_user_name == $seller_user_name){ ?>
               <a href="user.php?delete_language=<?= $relation_id; ?>">
               <i class="fa fa-trash-o"></i>
               </a>
               <?php } ?>
               <?php } ?>
            </li>
            <!--- card-li mb-1 Ends -->
            <?php } ?>
         </ul>
         <!-- list-unstyled mt-3 Ends -->
      </div>
      <div class="skills">
         <h3><?= $lang['user_profile']['skills']; ?></h3>
         <?php if(isset($_SESSION['seller_user_name'])){ ?>
         <?php if($login_seller_user_name == $seller_user_name){ ?>
         <ul class="list-unstyled">
            <!-- list-unstyled Starts -->
            <li class="button-li mb-4 clearfix">
               <button data-toggle="collapse" data-target="#add_skill" class="btn btn-success float-right">
               <i class="fa fa-plus-circle" aria-hidden="true"></i> <?= $lang['button']['add_new']; ?>
               </button>
            </li>
            <div id="add_skill" class="collapse form-style mb-2">
               <!-- add_skill collapse form-style mb-2 Starts -->
               <form method="post">
                  <!-- form Starts -->
                  <div class="form-group">
                     <!-- form-group Starts -->
                     <select class="form-control" name="skill_id" required="">
                        <option value=""><?= $lang['label']['select_skill']; ?></option>
                        <?php 
                           $s_skills = array();
                           
                           $get = $db->select("skills_relation",array("seller_id"=>$login_seller_id));
                           
                           while($row = $get->fetch()){
                           
                           array_push($s_skills,$row->skill_id);
                           
                           }
                           
                           $s_skills = implode(",", $s_skills);
                           
                           if(!empty($s_skills)){ $query_where  = "where not skill_id IN ($s_skills)"; }else{ $query_where = ""; }
                           
                           $get_seller_skills = $db->query("select * from seller_skills $query_where");
                           while($row_seller_skills = $get_seller_skills->fetch()){
                           
                           $skill_id = $row_seller_skills->skill_id;
                           $skill_title = $row_seller_skills->skill_title;
                           
                           ?>
                        <option value="<?= $skill_id; ?>"> <?= $skill_title; ?> </option>
                        <?php } ?>
                        <option value="custom">Custom Skill</option>
                     </select>
                  </div>
                  <!-- form-group Ends -->
                  <div class="form-group skill-name d-none">
                     <!-- form-group Starts -->
                     <input type="text" placeholder="Skill Name" class="form-control" name="skill_name">
                  </div>
                  <!-- form-group Ends -->
                  <div class="form-group">
                     <!-- form-group Starts -->
                     <select class="form-control" name="skill_level" required="">
                        <option value="" class="hidden"><?= $lang['label']['select_level']; ?></option>
                        <option> Beginner </option>
                        <option> Intermediate </option>
                        <option> Expert </option>
                     </select>
                  </div>
                  <!-- form-group Ends -->
                  <div class="text-center">
                     <!-- text-center Starts -->
                     <button type="button" data-toggle="collapse" data-target="#add_skill" class="btn btn-secondary">
                     <?= $lang['button']['cancel']; ?>
                     </button>
                     <button type="submit" name="insert_skill" class="btn btn-success">
                     <?= $lang['button']['add']; ?>
                     </button>
                  </div>
                  <!-- text-center Ends -->
               </form>
               <!-- form Ends -->
               <?php
                  if(isset($_POST['insert_skill'])){
                    
                  $skill_id = $input->post('skill_id');
                  $skill_level = $input->post('skill_level');
                  
                  if($skill_id == "custom"){
                  
                    $skill_name = $input->post('skill_name');
                    $insert_skill = $db->insert("seller_skills",array("skill_title"=>$skill_name));
                    $skill_id = $db->lastInsertId();
                  
                  }
                    
                  $insert_skill = $db->insert("skills_relation",array("seller_id" => $seller_id,"skill_id" => $skill_id,"skill_level" => $skill_level));
                    
                  echo "<script>window.open('$seller_user_name','_self');</script>";
                    
                  }
                  
                  ?>
            </div>
            <!-- language collapse form-style mb-2 Ends -->
         </ul>
         <!-- list-unstyled Ends -->
         <?php } ?>
         <?php } ?>
         <div class="clearfix"></div>
         <ul class="list-unstyled mt-3">
            <!-- list-unstyled mt-3 Starts -->
            <?php
               $select_skills_relation = $db->select("skills_relation",array("seller_id" => $seller_id));
               while($row_skills_relation = $select_skills_relation->fetch()){
                 
                 $relation_id = $row_skills_relation->relation_id;
                 $skill_id = $row_skills_relation->skill_id;
                 $skill_level = $row_skills_relation->skill_level;
                 
                 $get_skill = $db->select("seller_skills",array("skill_id" => $skill_id));
                 $row_skill = $get_skill->fetch();
                 $skill_title = $row_skill->skill_title;
               
               ?>
            <li class="card-li mb-1">
               <!--- card-li mb-1 Starts -->
               <?= $skill_title; ?> - <span class="text-muted"> <?= $skill_level; ?> </span>
               <?php if(isset($_SESSION['seller_user_name'])){ ?>
               <?php if($login_seller_user_name == $seller_user_name){ ?>
               <a href="user.php?delete_skill=<?= $relation_id; ?>">
               <i class="fa fa-trash-o"></i>
               </a>
               <?php } ?>
               <?php } ?>
            </li>
            <!--- card-li mb-1 Ends -->
            <?php } ?>
         </ul>
      </div>
   </div>
</div>