<div id="wait"></div>
<!-- start footer -->
 <footer class="footer-bg">
         <div class="container">
            <div class="d-flex justify-content-between">
               <div class="footer-list">
                  <h2><?= $lang['categories']; ?></h2>

                  <ul class="list collapse show list-unstyled" id="collapsecategories">
                  <?php
                  $get_footer_links = $db->query("select * from footer_links where link_section='categories' AND language_id='$siteLanguage'  LIMIT 0,6");
                  while($row_footer_links = $get_footer_links->fetch()){
                  $link_id = $row_footer_links->link_id;
                  $link_title = $row_footer_links->link_title;
                  $link_url = $row_footer_links->link_url;
                  ?>
                    <li><a href="<?= $link_url; ?>"><?= $link_title; ?></a></li>
                  <?php } ?>
                  </ul>


                
               </div>
               <div class="footer-list">
                  <h2><?= $lang['about']; ?></h2>
                  <ul class="list collapse show list-unstyled" id="collapseabout">
        <?php
        $get_footer_links = $db->select("footer_links",array("link_section" => "about","language_id" => $siteLanguage));
        while($row_footer_links = $get_footer_links->fetch()){
        $link_id = $row_footer_links->link_id;
        $icon_class = $row_footer_links->icon_class;
        $link_title = $row_footer_links->link_title;
        $link_url = $row_footer_links->link_url;
        ?>
        <li><a href="<?= $link_url; ?>"><i class="fa <?= $icon_class; ?>"></i> <?= $link_title; ?></a></li>
        <?php } ?>
        </ul>
               </div>
               <div class="footer-list">
                  <h2><?= $lang['pages']; ?></h2>
                  <ul class="list collapse show list-unstyled" id="collapsecategories2">
                    <?php
                    $pages = $db->select("pages");
                    while($rowPage = $pages->fetch()){
                    $title = $rowPage->title;
                    $url = $rowPage->url;
                    ?>
                    <li class="list-unstyled-item"><a href="<?= "$site_url/pages/$url"; ?>"><?= $title; ?></a></li>
                    <?php } ?>
                  </ul>



                 

               </div>
               
               <div class="footer-list">
                  <h2><?= $lang['find_us_on']; ?></h2>

                  <ul class="list-inline social_icon social">
                  <?php
                  $get_footer_links = $db->select("footer_links",array("link_section" => "follow","language_id" => $siteLanguage));
                  while($row_footer_links = $get_footer_links->fetch()){
                  $link_id = $row_footer_links->link_id;
                  $icon_class = $row_footer_links->icon_class;
                  $link_url = $row_footer_links->link_url;
                  ?>
                  <li class="list-inline-item"><a href="<?= $link_url; ?>"><i aria-hidden="true" class="fa <?= $icon_class; ?>"></i></a></li>
                  <?php } ?>
                  </ul>








                  <div class="collapse show" id="collapsefindusOn">
      
          <?php if($language_switcher == 1){ ?>
          <div class="form-group mt-0">

            <select id="languageSelect" class="form-control">
              <?php 
              $get_languages = $db->select("languages");
              while($row_languages = $get_languages->fetch()){
              $id = $row_languages->id;
              $title = $row_languages->title;
              $image = getImageUrl("languages",$row_languages->image);
              ?>
              <option data-image="<?= $image; ?>" data-url="<?= "$site_url/change_language?id=$id"; ?>" <?php if($id == $_SESSION["siteLanguage"]){ echo "selected"; } ?>>
                <?= $title; ?>
              </option>
              <?php } ?>
            </select>

          <?php if($enable_converter == 1){ ?>

            <div class="mt-2"></div>
            
            <select id="currencySelect2" class="form-control mt-2">
              <option data-url="<?= "$site_url/change_currency?id=0"; ?>">
                <?= "$s_currency_name ($s_currency)"; ?>
              </option>
              <?php
              $get_currencies = $db->select("site_currencies");
              while($row = $get_currencies->fetch()){
              $id = $row->id;
              $currency_id = $row->currency_id;
              $position = $row->position;

              $get_currency = $db->select("currencies",array("id" => $currency_id));
              $row_currency = $get_currency->fetch();
              $name = $row_currency->name;
              $symbol = $row_currency->symbol;

              ?>
              <option data-url="<?= "$site_url/change_currency?id=$id"; ?>" <?php if($id == @$_SESSION["siteCurrency"]){ echo "selected"; } ?>>
                <?= $name; ?> (<?= $symbol ?>)
              </option>
              <?php } ?>
            </select>
          
          <?php } ?>

          </div>
          <?php } ?>
          <!--<h5><?= $lang['mobile_apps']; ?></h5>-->
          
        </div>
                 
               </div>
            </div>
            <div class="copyright">
               <p>© Copyright 2020 Miver. All Rights Reserved
               </p>
               <!--<ul class="social">
                  <li>
                     <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                  </li>
                  <li>
                     <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                  </li>
                  <li>
                     <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                  </li>
                  <li>
                     <a href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a>
                  </li>
                  <li>
                     <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                  </li>
               </ul>-->
            </div>
         </div>
      </footer>
<!-- end footer -->
<section class="post_footer">
<?= $db->select("general_settings")->fetch()->site_copyright; ?>
</section>

<?php if(!isset($_COOKIE['close_cookie'])){ ?>
<section class="clearfix cookies_footer row animated slideInLeft">
  <div class="col-md-4">
    <img src="<?= $site_url; ?>/images/cookie.png" class="img-fluid" alt="">
  </div>
  <div class="col-md-8">
    <div class="float-right close btn btn-sm"><i class="fa fa-times"></i></div>
    <h4 class="mt-0 mt-lg-2 <?=($lang_dir == "right"?'text-right':'')?>"><?= $lang["cookie_box"]['title']; ?></h4>
    <p class="mb-1 "><?= str_replace('{link}',"$site_url/terms_and_conditions",$lang["cookie_box"]['desc']); ?></p>
    <a href="#" class="btn btn-success btn-sm"><?= $lang["cookie_box"]['button']; ?></a>
  </div>
</section>
<?php } ?>
<section class="messagePopup animated slideInRight"></section>

<link rel="stylesheet" href="<?= $site_url; ?>/styles/msdropdown.css"/>
<?php

  if($videoPlugin == 1){
    require("$dir/plugins/videoPlugin/footer/videoCall.php"); 
  }
  require("footerJs.php"); 

?>