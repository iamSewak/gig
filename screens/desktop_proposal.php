<div class="mp-gig-top-nav">
  <div class="third-menu border-top">
   <div class="container">
      <div class="row d-flex align-items-center justify-content-between">
         <div class="left">
               <nav>
                  <ul class="container text-center" id="mainNav">
                     <li class="selected">
                        <a href="#introduction" class="gig-page-nav-link">Introduction</a>
                     </li>
                     <li>
                        <a href="#details" class="gig-page-nav-link">Proposal Details</a>
                     </li>
                     <?php if($count_faq != 0){ ?>
                     <li>
                        <a href="#faq" class="gig-page-nav-link">FAQ</a>
                     </li>
                     <?php } ?>
                     <li>
                        <a href="#reviews" class="gig-page-nav-link">Reviews</a>
                     </li>
                     <li>
                        <a href="#related" class="gig-page-nav-link">Related Proposals</a>
                     </li>
                     <?php if($proposal_seller_vacation == "off"){ ?>
                     <li>
                        <a href="#redirect" onclick="window.location.href='../../conversations/message.php?seller_id=<?= $proposal_seller_id; ?>'" class="gig-page-nav-link"> <i class="fa fa-comments-o fa-lg" aria-hidden="true"></i> Message the Seller</a>
                     </li>
                     <?php } ?>
                     <?php if($proposal_price != 0){ ?>
                     <li class="btns d-none float-right mt-2">
                        <button class="order-now btn btn-secondary">(<?= showPrice($proposal_price,"total-price") ?>)</button>
                     </li>
                     <?php } ?>
                     <li class="btns d-none float-right mt-2">
                        <?php if(@$count_p_cart == 1){ ?>
                        <button class="btn btn-secondary"><?php include("../images/svg/cart.svg"); ?> Already Added</button>
                        <?php }else{ ?>
                        <button class="add-to-cart btn btn-secondary"><?php include("../images/svg/cart.svg"); ?> Add To Cart</button>
                        <?php } ?>
                     </li>
                  </ul>
               </nav>
           
         </div>
         <div class="right">
            <ul class="d-flex align-items-center justify-content-end">
               <li>
                  <button>
                  <i class="fa fa-heart" aria-hidden="true"></i>
                  Save
                  </button>
               </li>
               <li>
                  <span class="collect-count">138</span>
               </li>
               <li class="ml-2">
                  <button style="display: none;">
                  <i class="fa fa-share-alt" aria-hidden="true"></i>
                  Share
                  </button>
                  <div class="sharethis-inline-share-buttons <?=($lang_dir == "right" ? 'float-left':'')?>" style="margin-top: -0px;"></div>
               </li>
            </ul>
         </div>
      </div>
   </div>
</div>
</div>


<div class="main-page py-5">
   <div class="container">
      <div class="row">
         <div class="col-lg-8 left">
            <nav aria-label="breadcrumb">
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="../../">Home</a></li>
                  <li class="breadcrumb-item active" aria-current="page"><a href="../../categories/<?= $proposal_cat_url; ?>"> <?= $proposal_cat_title; ?> </a> </li>
                  <li class="breadcrumb-item active" aria-current="page"><a href="../../categories/<?= $proposal_cat_url; ?>/<?= $proposal_child_url; ?>">
                     <?= $proposal_child_title; ?>
                     </a>
                  </li>
               </ol>
            </nav>
            <h2><?= ucfirst($proposal_title); ?></h2>
            <div id="overview" class="seller-overview d-flex align-items-center">
               <div class="user-profile-image d-flex">
                  <?php if(!empty($proposal_seller_image)){ ?>
                  <label class="profile-pict" for="profile_image">
                  <img
                     src="<?= getImageUrl2("sellers","seller_image",$proposal_seller_image); ?>"
                     class="profile-pict-img img-fluid" alt="">
                  </label>
                  <?php }else{ ?>
                  <label class="profile-pict" for="profile_image">
                  <img
                     src="../../user_images/empty-image.png"
                     class="profile-pict-img img-fluid" />
                  </label>
                  <?php } ?>
                  <div class="profile-name">
                     <span class="user-status">
                     <a href="#" class="seller-link"><?= ucfirst($proposal_seller_user_name); ?></a>
                     </span>
                     <div class="seller-level"><?= $level_title; ?></div>
                  </div>
               </div>
               <div class="user-info d-flex">
                  <span class="user-info-rating d-flex">
                     <div class="star-rating-s15-wrapper">
                        <?php
                           for($proposal_i=0; $proposal_i<$proposal_rating; $proposal_i++){
                           echo " <img class='mb-1' src='../../images/user_rate_full.png' > ";
                           }
                           for($proposal_i=$proposal_rating; $proposal_i<5; $proposal_i++){
                           echo " <img class='mb-1' src='../../images/user_rate_blank.png' > ";
                           }
                           ?>
                     </div>
                     <span class="total-rating-out-five">5.0</span>
                     <span class="total-rating">(<?= $count_reviews; ?>)</span>
                  </span>
                  <span class="orders-in-queue"><?= $proposal_order_queue; ?> Order(s) In Queue.</span>
               </div>
            </div>
            <div class="my-4">
               <?php include("includes/proposal_slider.php"); ?>
            </div>
            <div id="description" class="description">
               <h3>About This Gig</h3>
               <?= $proposal_desc; ?>
            </div>
            
            <h3 id="aboutSeller">About The Seller</h3>
            <div class="profile-card">
               <div class="user-profile-image d-flex">
                  <label class="profile-pict" for="profile_image">
                  <?php if(!empty($proposal_seller_image)){ ?>
                  <img
                     src="<?= getImageUrl2("sellers","seller_image",$proposal_seller_image); ?>"
                     class="profile-pict-img img-fluid" alt="">
                  <?php }else{ ?>
                  <img
                     src="i../../user_images/empty-image.png"
                     class="profile-pict-img img-fluid" alt="">
                  <?php } ?>
                  </label>
                  <span id="details"></span>
                  <div class="right">
                     <div class="profile-name">
                        <span class="user-status">
                        <a class="seller-link" href="../../<?= $proposal_seller_user_name; ?>" >
                        <?= ucfirst($proposal_seller_user_name); ?>
                        </a>
                        </span>
                        <div class="seller-level"><?= $level_title; ?> | Website and mobile wireframes UI UX </div>
                     </div>
                     <div class="user-info">
                        <span class="user-info-rating d-flex align-items-center">
                           <div class="star-rating-s15-wrapper">
                              <span class="star-rating-s15 rate-10">
                              <i class="fa fa-star" aria-hidden="true"></i>
                              <i class="fa fa-star" aria-hidden="true"></i>
                              <i class="fa fa-star" aria-hidden="true"></i>
                              <i class="fa fa-star" aria-hidden="true"></i>
                              <i class="fa fa-star" aria-hidden="true"></i>
                              </span>
                           </div>
                           <span class="total-rating-out-five">5.0</span>
                           <span class="total-rating">(36 reviews)</span>
                        </span>
                        <?php if($proposal_seller_vacation == "on"){ ?>
                        <a href="#">Sorry I’m away</a>
                        <?php }else{ ?>
                        <a href="../../conversations/message?seller_id=<?= $proposal_seller_id; ?>">Contact Me</a>
                        <?php } ?>
                     </div>
                  </div>
               </div>
               <div class="stats-desc">
                  <ul class="user-stats">
                     <li>From<strong> <?= $proposal_seller_country; ?></strong></li>
                     <li>Speaks <?php
                        $select_languages_relation = $db->select("languages_relation",array("seller_id" => $proposal_seller_id));
                        while($row_languages_relation = $select_languages_relation->fetch()){
                           $language_id = $row_languages_relation->language_id;
                           
                           $get_language = $db->select("seller_languages",array("language_id" => $language_id));
                           $row_language = $get_language->fetch();
                           $language_title = @$row_language->language_title;
                        
                        ?>
                        <strong><?= $language_title; ?></strong>
                        <?php } ?>
                     </li>
                     <li>Positive Reviews<strong><?= $proposal_seller_rating; ?>%</strong></li>
                     <li>Recent Delivery<strong><?= $proposal_seller_recent_delivery; ?></strong></li>
                  </ul>
                  <article class="seller-desc">
                     <?= $proposal_seller_about; ?>
                     <a href="../../<?= $proposal_seller_user_name; ?>" class="text-success"> Read More </a>
                     <div class="inner"  style="display: none;">- Wireframes for mobile apps &amp; Website <br />
                        - Flowcharts for the whole system <br />
                        - Mobile app prototypes, interactive UI designs <br />
                        - UI for social media postings <br />
                        - Design an app to achieve a business objective (web or mobile). <br />
                        - Design or re-design a website to grow revenue, close more sales and generate more leads.
                        <br />
                        - Optimize their existing website with a conversion rate audit and strategy. <br />
                        - Design a high converting landing page. <br />
                        <span>Excellent communication and availability.
                        Reach me any time during our project on Whatsapp, Skype, Text or any other
                        messenger.</span>
                     </div>
                  </article>
               </div>
               <?php if($proposal_price == 0){ ?>
               <div class="packagesTable table-package <?=($lang_dir == "right" ? 'text-right':'')?>" id="compare">
                  <h3>Compare Packages</h3>
                  <table>
                     <colgroup>
                        <col>
                        <col>
                        <col>
                        <col>
                     </colgroup>
                     <tbody>
                        <?php
                           $get_p_1 = $db->select("proposal_packages",array("proposal_id"=>$proposal_id,"package_name"=>'Basic'));
                           $row_1 = $get_p_1->fetch();
                           $p_id_1 = $row_1->package_id;
                           $p_name_1 = $row_1->package_name;
                           $p_description_1 = $row_1->description;
                           $p_revisions_1 = str_replace("_","",$row_1->revisions);
                           $p_delivery_time_1 = $row_1->delivery_time;
                           $p_price_1 = $row_1->price;
                           
                           $get_p_2 = $db->select("proposal_packages",array("proposal_id"=>$proposal_id,"package_name"=>'Standard'));
                           $row_2 = $get_p_2->fetch();
                           $p_id_2 = $row_2->package_id;
                           $p_name_2 = $row_2->package_name;
                           $p_description_2 = $row_2->description;
                           $p_revisions_2 = str_replace("_"," ",$row_2->revisions);
                           $p_delivery_time_2 = $row_2->delivery_time;
                           $p_price_2 = $row_2->price;
                           
                           $get_p_3 = $db->select("proposal_packages",array("proposal_id"=>$proposal_id,"package_name"=>'Advance'));
                           $row_3 = $get_p_3->fetch();
                           $p_id_3 = $row_3->package_id;
                           $p_name_3 = $row_3->package_name;
                           $p_description_3 = $row_3->description;
                           $p_revisions_3 = str_replace("_","",$row_3->revisions);
                           $p_delivery_time_3 = $row_3->delivery_time;
                           $p_price_3 = $row_3->price;
                           
                           if($proposal_seller_vacation == "on"){
                             $disabled = "disabled='disabled'";
                           }else{
                             $disabled = "";
                           }
                           
                           ?>
                        <tr class="package-type <?=($lang_dir == "right" ? 'text-right':'')?>">
                           <th></th>
                           <td>
                              <h5><?= $lang['packages']['basic']; ?></h5>
                           </td>
                           <td>
                              <h5><?= $lang['packages']['standard']; ?></h5>
                           </td>
                           <td>
                              <h5><?= $lang['packages']['advance']; ?></h5>
                           </td>
                        </tr>
                        <tr class="description <?=($lang_dir == "right" ? 'text-right':'')?>" width="20">
                           <th>Description</th>
                           <td><?= $p_description_1; ?></td>
                           <td><?= $p_description_2; ?></td>
                           <td><?= $p_description_3; ?></td>
                        </tr>
                        <?php
                           $get_a = $db->select("package_attributes",array("package_id"=>$p_id_1));
                           while($row_a = $get_a->fetch()){
                           $a_id = $row_a->attribute_id;
                           $a_name = $row_a->attribute_name;
                           $a_value = $row_a->attribute_value;
                           ?>
                        <tr>
                           <th> <?= $a_name; ?> </th>
                           <td><?= $a_value; ?> </td>
                           <?php
                              $get_v = $db->query("select * from package_attributes where proposal_id='$proposal_id' and attribute_name='$a_name' and not attribute_id='$a_id'");
                              while($row_v = $get_v->fetch()){
                              $value = $row_v->attribute_value;
                              ?>
                           <td><?= ucfirst($value); ?> </td>
                           <?php } ?>
                        </tr>
                        <?php } ?>
                        <tr>
                           <th> Revisions </th>
                           <td><?= ucwords($p_revisions_1); ?></td>
                           <td><?= ucwords($p_revisions_2); ?></td>
                           <td><?= ucwords($p_revisions_3); ?></td>
                        </tr>
                        <tr>
                           <th> Delivery Time </th>
                           <td><?= $p_delivery_time_1; ?> Days</td>
                           <td><?= $p_delivery_time_2; ?> Days</td>
                           <td><?= $p_delivery_time_3; ?> Days</td>
                        </tr>
                        <tr class="select-package">
                           <th> Qty </th>
                           <td>
                              <form method="post" action="../../checkout">
                                 <input type="hidden" name="proposal_id" value="<?= $proposal_id; ?>">
                                 <input type="hidden" name="package_id" value="<?= $p_id_1; ?>">
                                 <select class="form-control mb-2" name="proposal_qty">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                 </select>
                                 <?php if($proposal_seller_id == @$login_seller_id){ ?>
                                 <a class="btn btn-success text-white btn-block" href="../edit_proposal?proposal_id=<?= $proposal_id; ?>&pricing">Edit Package</a>
                                 <?php }else{ ?>
                                 <button class="btn btn-success text-white btn-block" type="submit" name="add_order" <?= $disabled; ?>>Select <?= showPrice($p_price_1); ?></button>
                                 <?php } ?>
                              </form>
                           </td>
                           <td>
                              <form method="post" action="../../checkout">
                                 <input type="hidden" name="proposal_id" value="<?= $proposal_id; ?>">
                                 <input type="hidden" name="package_id" value="<?= $p_id_2; ?>">
                                 <select class="form-control mb-2" name="proposal_qty">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                 </select>
                                 <?php if($proposal_seller_id == @$login_seller_id){ ?>
                                 <a class="btn btn-success text-white btn-block" href="../edit_proposal?proposal_id=<?= $proposal_id; ?>&pricing">Edit Package</a>
                                 <?php }else{ ?>
                                 <button class="btn btn-success text-white btn-block" type="submit" name="add_order" <?= $disabled; ?>>Select <?= showPrice($p_price_2); ?></button>
                                 <?php } ?>
                              </form>
                           </td>
                           <td>
                              <form method="post" action="../../checkout">
                                 <input type="hidden" name="proposal_id" value="<?= $proposal_id; ?>">
                                 <input type="hidden" name="package_id" value="<?= $p_id_3; ?>">
                                 <select class="form-control mb-2" name="proposal_qty">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                 </select>
                                 <?php if($proposal_seller_id == @$login_seller_id){ ?>
                                 <a class="btn btn-success text-white btn-block" href="../edit_proposal?proposal_id=<?= $proposal_id; ?>&pricing">Edit Package</a>
                                 <?php }else{ ?>
                                 <button class="btn btn-success text-white btn-block" type="submit" name="add_order" <?= $disabled; ?>>Select <?= showPrice($p_price_3); ?></button>
                                 <?php } ?>
                              </form>
                           </td>
                        </tr>
                     </tbody>
                  </table>
                  
               </div>
               <?php } ?>
            </div>

            <span id="faq"></span>
            <?php if($count_faq > 0){ ?>
            <div class="faq <?=($lang_dir == "right" ? 'text-right':'')?>">
               <h3>FAQ</h3>
               <div class="accordion" id="accordionExample">
                  <!-- card-body Starts -->
                  <?php 
                     while($row_faq = $get_faq->fetch()){
                     $id = $row_faq->id;
                     $title = $row_faq->title;
                     $content = $row_faq->content;
                     ?>
                  <div class="card">
                     <div class="card-header" id="headingOne">
                        <h2 class="mb-0">
                           <button class="btn btn-link" type="button" data-toggle="collapse"
                              data-target="#collapse-<?= $id; ?>" aria-controls="collapse-<?= $id; ?>">
                           <?= $id; ?>. <?= $title; ?>
                           </button>
                        </h2>
                     </div>
                     <div id="collapse-<?= $id; ?>" class="collapse" aria-labelledby="headingOne"
                        data-parent="#accordionExample">
                        <div class="card-body">
                           <?= $content; ?>
                        </div>
                     </div>
                  </div>
                  <!-- tab rounded Ends -->
                  <?php } ?>
               </div>
            </div>
            <?php } ?>
            <div id="reviews" class="review-section">
               <div class="d-flex align-items-center justify-content-between mb-4">
                  <div class="float-left">
                     <h4 class="mr-2"> <?= $count_reviews; ?> Reviews </h4>
                     <?php
                        for($proposal_i=0; $proposal_i<$proposal_rating; $proposal_i++){
                        echo " <img class='mb-2' src='../../images/user_rate_full_big.png' > ";
                        }
                        for($proposal_i=$proposal_rating; $proposal_i<5; $proposal_i++){
                        echo " <img class='mb-2' src='../../images/user_rate_blank_big.png' > ";
                        }
                        ?> <span class="text-muted ml-2"> <?php
                        if($proposal_rating == "0"){
                        echo "0.0"; 
                        }else{
                        printf("%.1f", $average_rating);
                        }
                        ?> </span>
                  </div>
                  <div class="">
                     <button id="dropdown-button" class="btn btn-success dropdown-toggle" data-toggle="dropdown"> Most Recent </button>
                     <ul class="dropdown-menu proposalDropdown" style="width: auto !important;">
                        <li class="dropdown-item active all">Most Recent</li>
                        <li class="dropdown-item  good">Positive Reviews</li>
                        <li class="dropdown-item  bad">Negative Reviews</li>
                     </ul>
                  </div>
               </div>
            </div>
            <div class="review-list">
               <span class="<?=($lang_dir == "right" ? 'text-right':'')?>">
               <?php include("includes/proposal_reviews.php") ?>
               </span>
            </div>
            <div class="tags">
               <h3>Related tags</h3>
               <ul class="d-flex">
                  <?php
                     $tags = explode(",", $proposal_tags);
                     foreach($tags as $tag){
                       // $tag = str_replace(" ","-",$tag);
                       // $tag = strtolower($tag);
                     ?>
                  <li style="<?=($lang_dir == "right" ? 'float: right;':'')?>">
                     <a href="../../tags/<?= str_replace(" ","-",$tag); ?>"><?= $tag; ?></a>
                  </li>
                  <?php } ?>
               </ul>
            </div>
         </div>
         <div class="col-lg-4 right">
            <div class="sticky">
               <?php include("includes/proposal_sidebar.php"); ?>
            </div>
         </div>
      </div>
   </div>
</div>
<script>
   $(document).ready(function(){
   
     <?php if(!empty($proposal_video)){ ?>
       $(".carousel-indicators").css({"bottom": "60px"});
       $("#myCarousel").on('slide.bs.carousel', function(event){
        var eq = event.to;
        if(eq == 0){
           $(".carousel-indicators").css({"bottom": "60px"});
        }else{
           $(".carousel-indicators").css({"bottom": "20px"});
        }
       });
     <?php } ?>
   
     <?php if($proposal_price != 0){ ?>
       var form = "#checkoutForm";
     <?php }else{ ?>
       var form = "#checkoutForm2";
     <?php } ?>
   
     $(".order-now").click(function(){
       $('<input />').attr('type', 'hidden').attr('name', "add_order").attr('value', " ").appendTo(form);
       $(form).submit();
     });
   
     $(".add-to-cart").click(function(){
       $('<input />').attr('type', 'hidden').attr('name', "add_cart").attr('value', " ").appendTo(form);
       $(form).submit();
     });
   
     $(window).scroll(function(){
       var scrollTop = $(window).scrollTop();
       if(scrollTop > 0){
         $('.mp-gig-top-nav li.btns').removeClass("d-none");
         $('.mp-gig-top-nav').css({ position : 'fixed', zIndex : "100", top : "0px" });
       }else{
         $('.mp-gig-top-nav li.btns').addClass("d-none");
         $('.mp-gig-top-nav').css({ position : 'sticky', zIndex : "10" });
       }
     });
   
     <?php if(isset($_SESSION['seller_user_name'])){ ?>
     $(document).on("click", "#favorite_<?= $proposal_id; ?>", function(event){
       event.preventDefault();
       var seller_id = "<?= $login_seller_id; ?>";
       var proposal_id = "<?= $proposal_id; ?>";
       $.ajax({
         type: "POST",
         url: "../../includes/add_delete_favorite",
         data: { seller_id: seller_id, proposal_id: proposal_id, favorite: "add_favorite" },
         success: function(){
         $("#favorite_<?= $proposal_id; ?>").attr({id: "unfavorite_<?= $proposal_id; ?>",});
         $("#unfavorite_<?= $proposal_id; ?>").html("<i class='fa fa-heart dil'></i>");
         }
       });
     });
   
     $(document).on("click", "#unfavorite_<?= $proposal_id; ?>", function(event){
       event.preventDefault();
       var seller_id = "<?= $login_seller_id; ?>";
       var proposal_id = "<?= $proposal_id; ?>";
       $.ajax({
         type: "POST",
         url: "../../includes/add_delete_favorite",
         data: { seller_id: seller_id, proposal_id: proposal_id, favorite: "delete_favorite" },
         success: function(){
         $("#unfavorite_<?= $proposal_id; ?>").attr({id: "favorite_<?= $proposal_id; ?>"});
         $("#favorite_<?= $proposal_id; ?>").html("<i class='fa fa-heart dil1'></i>");
         }
       });
     });
     <?php } ?>
   
     $('.increase').click(function(){
       var current = parseInt($('.quantity').text());
       var num = current+1;
       var value = parseInt($('.total-price').first().text());
       $('.quantity').html(num);
       $('form input[name="proposal_qty"]').val(num);
     });
   
     $('.decrease').click(function(){
       var current = parseInt($('.quantity').text());
       if(current > 1){
       var num = current-1;
       var value = parseInt($('.total-price').first().text());
       $('.quantity').html(num);
       $('form input[name="proposal_qty"]').val(num);
       }
     });
   
     $('.all').click(function(){
       $("#dropdown-button").html("Most Recent");
       $(".all").attr('class','dropdown-item all active');
       $(".bad").attr('class','dropdown-item bad');
       $(".good").attr('class','dropdown-item good');
       $("#all").show();
       $("#good").hide();
       $("#bad").hide();
     }); 
   
     $('.good').click(function(){
       $("#dropdown-button").html("Positive Reviews");
       $(".all").attr('class','dropdown-item all');
       $(".bad").attr('class','dropdown-item bad');
       $(".good").attr('class','dropdown-item good active');
       $("#all").hide();
       $("#good").show();
       $("#bad").hide();
     }); 
   
     $('.bad').click(function(){
       $("#dropdown-button").html("Negative Reviews");
       $(".all").attr('class','dropdown-item all');
       $(".bad").attr('class','dropdown-item bad active');
       $(".good").attr('class','dropdown-item good');
       $("#all").hide();
       $("#good").hide();
       $("#bad").show();
     });
   
   });
</script>