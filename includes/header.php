<?php
   require_once("db.php");
   require_once("extra_script.php");
   if(!isset($_SESSION['error_array'])){ 
     $error_array = array(); 
   }else{ 
     $error_array = $_SESSION['error_array']; 
   }
   
   if(isset($_SESSION['seller_user_name'])){
     require_once("seller_levels.php");
     $seller_user_name = $_SESSION['seller_user_name'];
     $get_seller = $db->select("sellers",array("seller_user_name" => $seller_user_name));
     $row_seller = $get_seller->fetch();
     $seller_id = $row_seller->seller_id;
     $seller_email = $row_seller->seller_email;
     $seller_verification = $row_seller->seller_verification;
     $seller_image = getImageUrl2("sellers","seller_image",$row_seller->seller_image);
     $count_cart = $db->count("cart",array("seller_id" => $seller_id));
     $select_seller_accounts = $db->select("seller_accounts",array("seller_id" => $seller_id));
     $count_seller_accounts = $select_seller_accounts->rowCount();
     if($count_seller_accounts == 0) {
       $db->insert("seller_accounts",array("seller_id" => $seller_id));
     }
     $row_seller_accounts = $select_seller_accounts->fetch();
     $current_balance = $row_seller_accounts->current_balance;
     
     $get_general_settings = $db->select("general_settings");   
     $row_general_settings = $get_general_settings->fetch();
     $enable_referrals = $row_general_settings->enable_referrals;
     $count_active_proposals = $db->count("proposals",array("proposal_seller_id"=>$seller_id,"proposal_status"=>'active'));
   }
   
   function get_real_user_ip(){
     //This is to check ip from shared internet network
     if(!empty($_SERVER['HTTP_CLIENT_IP'])){
       $ip = $_SERVER['HTTP_CLIENT_IP'];
     }elseif(!empty($_SERVER['HTTP_X_FORWARDED_FOR'])){
       $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
     }else{
       $ip = $_SERVER['REMOTE_ADDR'];
     }
     return $ip;
   }
   $ip = get_real_user_ip();
   
   if(!isset($_COOKIE['close_announcement']) OR @$_COOKIE['close_announcement'] != $bar_last_updated){
     include("comp/announcement_bar.php");
   }
   
   ?>
<style type="text/css">
  .flex-row {
    width: 100%;
}
.head-start {
    display: flex;
    width: 100%;
}
.head-end {
    display: grid;
}
</style>
<link href="<?= $site_url; ?>/styles/scoped_responsive_and_nav.css" rel="stylesheet">
<link href="<?= $site_url; ?>/styles/vesta_homepage.css" rel="stylesheet">
<div class="gnav-header global-nav clear gnav-3">
   <header id="gnav-header-inner" class="container gnav-header-inner clear apply-nav-height col-group has-svg-icons body-max-width">
  
      <div class="row">
       <div class="col-md-6 <?=($lang_dir == "right" ? 'order-2 order-sm-1':'')?>">
        
            <div class="row">
               <div id="miver-logo" class="apply-nav-height miver-logo-svg miver-logo-svg-logged-in <?php if(isset($_SESSION["seller_user_name"])){echo"loggedInLogo";} ?>">
                  <a href="<?= $site_url; ?>">
                  <?php if($site_logo_type == "image"){ ?>
                  <img class="desktop" src="<?= $site_logo_image; ?>" width="150">
                  <?php }else{ ?>
                  <span class="desktop text-logo"><?= $site_logo_text; ?></span>
                  <?php } ?>
                  <?php if($enable_mobile_logo == 1){ ?>
                  <img class="mobile" src="<?= $site_mobile_logo; ?>" height="25">
                  <?php } ?>
                  </a>
               </div>
               <button id="mobilemenu" class="unstyled-button mobile-catnav-trigger apply-nav-height icon-b-1 tablet-catnav-enabled <?= ($enable_mobile_logo == 0)?"left":""; ?>">
                  <span class="screen-reader-only"></span>
                  <div class="text-gray-lighter text-body-larger">
                     <span class="miver-icon hamburger-icon nav-icon">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                           <path d="M20,6H4A1,1,0,1,1,4,4H20A1,1,0,0,1,20,6Z" />
                           <path d="M20,13H4a1,1,0,0,1,0-2H20A1,1,0,0,1,20,13Z" />
                           <path d="M20,20H4a1,1,0,0,1,0-2H20A1,1,0,0,1,20,20Z" />
                        </svg>
                     </span>
                  </div>
               </button>
               <div class="catnav-search-bar search-browse-wrapper with-catnav">
                  <div class="search-browse-inner">
                     <form id="gnav-search" class="search-nav expanded-search apply-nav-height" method="post">
                        <div class="gnav-search-inner clearable">
                           <label for="search-query" class="screen-reader-only">Search for items</label>
                           <div class="search-input-wrapper text-field-wrapper">
                              <input id="search-query" class="rounded <?=($lang_dir == "right" ? 'ml-2':'mr-2')?>" name="search_query"
                                 placeholder="<?= $lang['search']['placeholder']; ?>" value="<?= @$_SESSION["search_query"]; ?>"  autocomplete="off">
                           </div>
                           <div class="search-button-wrapper hide">
                              <button 
                                 class="btn btn-primary btn-success" 
                                 name="search" 
                                 type="submit" value="Search">
                              <?= $lang['search']['button']; ?>
                              </button>
                           </div>
                        </div>
                        <ul class="search-bar-panel d-none"></ul>
                     </form>
                  </div>
               </div>
               <?php
                  if (isset($_POST['search'])) {
                    $search_query = $input->post('search_query');
                    $_SESSION['search_query'] = $search_query;
                    echo "<script>window.open('$site_url/search.php','_self')</script>";
                  }
                  ?>
            </div>
</div>

<div class="col-md-6 <?=($lang_dir == "right" ? 'order-1 order-sm-2':'')?>">
  <div class="row" style="
    display: <?=($lang_dir == "right" ? 'inline-block':'block')?>;
    float: <?=($lang_dir == "right" ? 'left': '')?>; 
">

               <ul class="account-nav apply-nav-height">
                  <?php if (!isset($_SESSION["seller_user_name"])){ ?>
                  <li class="register-link">
                     <a href="<?= $site_url; ?>/freelancers"><i class="fa fa-handshake-o" aria-hidden="true"></i> <?= $lang['freelancers_menu']; ?></a>
                  </li>
                  <li class="sell-on-miver-link d-none d-lg-block">
                     <a href="#" data-toggle="modal" data-target="#register-modal">
                     <span class="sell-copy"><i class="fa fa-cubes" aria-hidden="true"></i> <?= $lang['become_seller']; ?></span>
                     <span class="sell-copy short"><i class="fa fa-cubes" aria-hidden="true"></i> <?= $lang['become_seller']; ?></span>
                     </a>
                  </li>
                  <li class="register-link">
                     <a href="#" data-toggle="modal" data-target="#login-modal"><?= $lang['sign_in']; ?></a>
                  </li>
                  <li class="sign-in-link mr-lg-0 mr-3">
                     <a href="#" class="btn button-gradient" style="color: white;" data-toggle="modal" data-target="#register-modal">
                     <?php if ($deviceType == "phone") { echo $lang['mobile_join_now']; } else { echo $lang['join_now']; } ?>
                     </a>
                  </li>
                  <?php 
                     }else{
                       require_once("comp/UserMenu.php");
                     }
                     ?>
               </ul>
            </div>
         </div></div>
      
   </header>
</div>
<div class="clearfix"></div>
<?php include("comp/categories_nav.php"); ?>
<div class="clearfix"></div>
<?php if(isset($_GET['not_available'])) { ?>
<!-- Alert to show wrong url or unregistered account end -->
<div class="alert alert-danger text-center mb-0 h6">
   <?= $lang['not_availble']; ?>
</div>
<?php } ?>
<?php 
   if(isset($_SESSION['seller_user_name'])) {
   if($seller_verification != "ok"){
   ?>
<div class="alert alert-warning clearfix activate-email-class mb-0">
   <div class="float-left mt-2">
      <i style="font-size: 125%;" class="fa fa-exclamation-circle"></i> 
      <?php
         $message = $lang['popup']['email_confirm']['text'];
         $message = str_replace('{seller_email}', $seller_email, $message);
         $message = str_replace('{link}', "$site_url/customer_support", $message);
         echo $message;
         ?>
   </div>
   <div class="float-right">
      <button id="send-email" class="btn btn-success btn-sm float-right text-white"><?= $lang["popup"]["email_confirm"]['button']; ?></button>
   </div>
</div>
<script>
   $(document).ready(function(){
     $("#send-email").click(function(){
       $("#wait").addClass('loader');
       $.ajax({
         method: "POST",
         url: "<?= $site_url; ?>/includes/send_email",
         success:function(){
           $("#wait").removeClass('loader');
           $("#send-email").html("Resend Email");
           swal({
             type: 'success',
             text: '<?= $lang['alert']['confirmation_email']; ?>',
           });
         }
       });
     });
   });
</script>
<?php  } } ?>
<!-- Registration Modal starts -->
<div class="modal fade" id="register-modal">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header bb-xs-0">
            <!-- modal-header Starts --> 
            <button class="close" data-dismiss="modal"><span>&times;</span></button>
         </div>
         <!-- modal-header Ends -->
         <div class="modal-body py-0">
            <!-- modal-body Starts -->
            <?php 
               $form_errors = Flash::render("register_errors");
               $form_data = Flash::render("form_data");
               if(is_array($form_errors)){
               ?>
            <div class="alert alert-danger">
               <!--- alert alert-danger Starts --->
               <ul class="list-unstyled mb-0">
                  <?php $i = 0; foreach ($form_errors as $error) { $i++; ?>
                  <li class="list-unstyled-item"><?= $i ?>. <?= ucfirst($error); ?></li>
                  <?php } ?>
               </ul>
            </div>
            <!--- alert alert-danger Ends --->
            <script type="text/javascript">
               $(document).ready(function(){
                 $('#register-modal').modal('show');
               });
            </script>
            <?php } ?>
            <div class="mx-auto">
               <div class="osahan-login">
                  <div class="text-center mb-0">
                     <a href="index.html"><img src="<?= $site_mobile_logo; ?>" alt=""></a>
                     <h5 class="font-weight-bold mt-3"><?= $lang['modals']['register']['title']; ?></h5>
                     <p class="text-muted">Make the most of your professional life</p>
                  </div>
                  <form action="" method="post">
                     <div class="form-row">
                        <div class="col">
                           <div class="form-group">
                              <label class="mb-1"><?= $lang['label']['username']; ?>
                              <a href="#" data-toggle="tooltip" title="<?= $lang['warning']['note']; ?>"><i class="fa fa-info-circle" aria-hidden="true"></i></a>               
                              </label>
                              <div class="position-relative icon-form-control">
                                 <i class="fa fa-user position-absolute" aria-hidden="true"></i>
                                 <input type="text" class="form-control" name="u_name" placeholder="Enter Your Username" value="<?php if(isset($_SESSION['u_name'])) echo $_SESSION['u_name']; ?>" required="">
                                 <?php if(in_array("Opps! This username has already been taken. Please try another one", $error_array)) echo "<span style='color:red;'>{$lang['warning']['username_already']}</span> <br>"; ?>
                                 <?php if(in_array("Username must be greater that 4 characters long or less than 25 characters.", $error_array)) echo "<span style='color:red;'>{$lang['warning']['username_greater']}</span> <br>"; ?>
                                 <?php if(in_array("Foreign characters are not allowed in username, Please try another one.", $error_array)) echo "<span style='color:red;'>{$lang['warning']['foreign_characters']}</span> <br>"; ?>
                              </div>
                           </div>
                        </div>
                        <div class="col">
                           <div class="form-group">
                              <label class="mb-1"><?= $lang['label']['full_name']; ?></label>
                              <div class="position-relative">
                                 <input type="text" class="form-control" name="name" placeholder="<?= $lang['placeholder']['full_name']; ?>" value="<?php if(isset($_SESSION['name'])) echo $_SESSION['name']; ?>" required="">
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="form-group">
                        <label class="mb-1"><?= $lang['label']['email']; ?></label>
                        <div class="position-relative icon-form-control">
                           <i class="fa fa-envelope position-absolute" aria-hidden="true"></i>
                           <input type="email" class="form-control" name="email" placeholder="<?= $lang['placeholder']['email']; ?>" value="<?php if(isset($_SESSION['email'])) echo $_SESSION['email']; ?>" required="">
                           <?php if(in_array("Email has already been taken. Try logging in instead.", $error_array)) echo "<span style='color:red;'>Email has already been taken. Try logging in instead.</span> <br>"; ?>
                        </div>
                     </div>
                     <div class="form-group">
                        <label class="mb-1"><?= $lang['label']['password']; ?></label>
                        <div class="position-relative icon-form-control">
                           <i class="fa fa-key position-absolute" aria-hidden="true"></i>
                           <input type="password" class="form-control" name="pass" placeholder="<?= $lang['placeholder']['password']; ?>" required="">
                        </div>
                     </div>
                     <div class="form-group">
                        <label class="mb-1"><?= $lang['label']['password_confirm']; ?></label>
                        <div class="position-relative icon-form-control">
                           <i class="fa fa-key position-absolute" aria-hidden="true"></i>
                           <input type="password" class="form-control" name="con_pass" placeholder="<?= $lang['placeholder']['password_confirm']; ?>" required="">
                           <?php if(in_array("Passwords don't match. Please try again.", $error_array)) echo "<span style='color:red;'>{$lang['label']['dont_match']}</span> <br>"; ?>
                        </div>
                     </div>
                     <div class="form-group">
                        <input type="checkbox" style="position: relative; top: 1px;" id="check" value="1" required=""/>
                        <label for="check">
                        I Accept 
                        <a href="<?= $site_url; ?>/terms_and_conditions">Terms And Conditions</a>
                        </label>
                     </div>
                     <?php if(isset($_GET['referral'])){ ?>
                     <input type="hidden" class="form-control" name="referral" value="<?= $input->get('referral'); ?>">
                     <?php }else{ ?>
                     <input type="hidden" class="form-control" name="referral" value="">
                     <?php } ?>
                     <input type="hidden" name="timezone" value="">
                     <input type="submit" name="register" class="button-gradient btn-block text-uppercase" value="<?= $lang['button']['register']; ?>">
                     <?php if($enable_social_login == "yes"){ ?>    
                     <div class="text-center mt-3 border-bottom pb-3">
                        <p class="small text-muted"><?= $lang["modals"]["register"]["or"]; ?></p>
                        <div class="row">
                           <div class="col-6">
                              <a class="btn btn-outline-google btn-block" href="#" onclick="window.location = '<?= $gLoginURL ?>';" class="btn btn-danger btn-gplus-connect " >
                              <i class="fa fa-google-plus"></i> GOOGLE
                              </a>
                           </div>
                           <div class="col-6">
                              <a class="btn btn-outline-facebook btn-block" href="#" onclick="window.location = '<?= $fLoginURL ?>';" class="btn btn-primary btn-fb-connect" >
                              <i class="fa fa-facebook"></i> FACEBOOK
                              </a>
                           </div>
                        </div>
                     </div>
                     <?php } ?>
                     <div class="py-3 d-flex align-item-center">
                        <span class="ml-auto"> <?= $lang['modals']['register']['already_account']; ?>
                        <a href="#" data-toggle="modal" data-target="#login-modal" data-dismiss="modal">
                        <?= $lang['modals']['register']['login']; ?>
                        </a>
                        </span>
                     </div>
                  </form>
               </div>
            </div>
         </div>
         <!-- modal-body Ends -->
      </div>
   </div>
</div>
<!-- Registration modal ends -->
<!-- Login modal start -->
<div class="modal fade login" id="login-modal">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header bb-xs-0">
            <!-- Modal header start -->
            <button class="close" type="button" data-dismiss="modal"><span>&times;</span></button>
         </div>
         <!-- Modal header end -->
         <div class="modal-body py-0">
            <!-- Modal body start -->
            <?php 
               $form_errors = Flash::render("login_errors");
               $form_data = Flash::render("form_data");
               if(is_array($form_errors)){
               ?>
            <div class="alert alert-danger">
               <!--- alert alert-danger Starts --->
               <ul class="list-unstyled mb-0">
                  <?php $i = 0; foreach ($form_errors as $error) { $i++; ?>
                  <li class="list-unstyled-item"><?= $i ?>. <?= ucfirst($error); ?></li>
                  <?php } ?>
               </ul>
            </div>
            <!--- alert alert-danger Ends --->
            <script type="text/javascript">
               $(document).ready(function(){
                 $('#login-modal').modal('show');
               });
            </script>
            <?php } ?>
            <div class="osahan-login">
               <div class="text-center mb-4">
                  <a href="index.html"><img src="<?= $site_mobile_logo; ?>" alt=""></a>
                  <h5 class="font-weight-bold mt-3">Welcome Back</h5>
                  <p class="text-muted">Don't miss your next opportunity. Sign in to stay updated on your professional world.</p>
               </div>
               <form action="" method="post">
                  <div class="form-group">
                     <label class="mb-1"><?= $lang['label']['username']; ?></label>
                     <div class="position-relative icon-form-control">
                        <i class="fa fa-user position-absolute"></i>
                        <input type="text" class="form-control" name="seller_user_name" placeholder="<?= $lang['placeholder']['username_or_email']; ?>"  value= "<?php if(isset($_SESSION['seller_user_name'])) echo $_SESSION['seller_user_name']; ?>" required="">
                     </div>
                  </div>
                  <div class="form-group">
                     <label class="mb-1"><?= $lang['label']['password']; ?></label>
                     <div class="position-relative icon-form-control">
                        <i class="fa fa-key position-absolute"></i>
                        <input type="password" class="form-control" name="seller_pass" placeholder="<?= $lang['placeholder']['password']; ?>" required="">
                     </div>
                  </div>
                  <div class="custom-control custom-checkbox mb-3">
                     <input type="checkbox" class="custom-control-input" id="customCheck1">
                     <label class="custom-control-label" for="customCheck1">Remember password</label>
                  </div>
                  <input type="submit" name="login" class="button-gradient btn-block text-uppercase" value="<?= $lang['button']['login_now']; ?>">
                  <?php if($enable_social_login == "yes"){ ?>
                  <div class="text-center mt-3 border-bottom pb-3">
                     <p class="small text-muted"><?= $lang['modals']['login']['or']; ?></p>
                     <div class="row">
                        <div class="col-6">
                           <a href="#" onclick="window.location = '<?= $fLoginURL ?>';" class="btn btn-outline-facebook btn-block" >
                           <i class="fa fa-facebook"></i> FACEBOOK
                           </a>
                        </div>
                        <div class="col-6">
                           <a href="#" onclick="window.location = '<?= $gLoginURL ?>';" class="btn btn-outline-google btn-block" >
                           <i class="fa fa-google-plus"></i> GOOGLE
                           </a>
                        </div>
                     </div>
                  </div>
                  <?php } ?> 
                  <div class="py-3 align-item-center">
                     <a href="#"  data-toggle="modal" data-target="#forgot-modal" data-dismiss="modal">
                     <?= $lang['modals']['login']['forgot_password']; ?>
                     </a>
                     <span class="ml-auto"> New to Miver? <a href="register.html"><a href="#" data-toggle="modal" data-target="#register-modal" data-dismiss="modal">
                     <?= $lang['modals']['login']['not_registerd']; ?>
                     </a></span>
                  </div>
               </form>
            </div>
         </div>
         <!-- Modal body ends -->
      </div>
   </div>
</div>
<!-- Login modal end -->
<!-- Forgot password starts -->
<div class="modal fade login" id="forgot-modal">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header bb-xs-0">
            <button type="button" class="close" data-dismiss="modal">
            <span>&times;</span>
            </button>
         </div>
         <!-- Modal header ends -->
         <div class="modal-body">
            <!-- Modal body starts -->
          
            <div class="text-center mb-4">
                  <a href="index.html"><img src="<?= $site_mobile_logo; ?>" alt=""></a>
                  <h5 class="font-weight-bold mt-3"><?= $lang['modals']['forgot']['title']; ?></h5>
                  <p class="text-muted"> <?= $lang['modals']['forgot']['desc']; ?></p>
               </div>

            <form action="" method="post">
               <div class="form-group">
                  <input type="text" name="forgot_email" class="form-control" placeholder="<?= $lang['placeholder']['email']; ?>" required>
               </div>
               <input type="submit" class="btn btn-success btn-block" value="submit" name="forgot">
               <p class="text-muted text-center mt-4">
                  <?= $lang['modals']['forgot']['not_member_yer']; ?>
                  <a href="#"class="text-success" data-toggle="modal" data-target="#register-modal" data-dismiss="modal">
                  <?= $lang['modals']['forgot']['join_now']; ?>
                  </a>
               </p>
            </form>
         </div>
         <!-- Modal body ends -->
      </div>
   </div>
</div>
<!-- Forgot password ends -->
<?php require_once("register_login_forgot.php"); ?>
<?php /*require_once("external_stylesheet.php");*/ ?>