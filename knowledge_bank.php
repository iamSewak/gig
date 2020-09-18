<?php
  session_start();
  require_once("includes/db.php");
?>
<!DOCTYPE html>
<html lang="en" dir="<?=($lang_dir == "right" ? 'rtl':'ltr')?>" class="ui-toolkit">
  <head>
    <title> <?= $site_name; ?> - <?= $lang["titles"]["knowledge_bank"]; ?> </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="<?= $site_desc; ?>">
    <meta name="keywords" content="<?= $site_keywords; ?>">
    <meta name="author" content="<?= $site_author; ?>">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100" rel="stylesheet">
    <link href="styles/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="styles/custom.css" rel="stylesheet">
    <!-- Custom css code from modified in admin panel --->
    <link href="styles/styles.css" rel="stylesheet">
    <link href="styles/css/style.css" rel="stylesheet">
    <link href="styles/knowledge_base.css" rel="stylesheet">
    <link href="styles/categories_nav_styles.css" rel="stylesheet">
    <link href="font_awesome/css/font-awesome.css" rel="stylesheet">
    <link href="styles/owl.carousel.css" rel="stylesheet">
    <link href="styles/owl.theme.default.css" rel="stylesheet">
    <link href="styles/sweat_alert.css" rel="stylesheet">
    <link href="styles/animate.css" rel="stylesheet">
    <?php if(!empty($site_favicon)){ ?>
    <link rel="shortcut icon" href="<?= $site_favicon; ?>" type="image/x-icon">
    <?php } ?>
    <script type="text/javascript" src="js/ie.js"></script>
    <script type="text/javascript" src="js/sweat_alert.js"></script>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <style>
      /*.form-control{
        width: 200px;
      }*/
    </style>
    
  </head>
  <body class="is-responsive">
    <?php require_once("includes/header.php"); ?>

<div class="bg-dark pt-5 pb-5">
         <div class="container">
            <div class="row">
               <div class="col-md-7 text-center mx-auto my-4">
                  <!-- Title -->
                  <div class="mb-4">
                     <h1 class="display-4 text-white mb-0">How can we <span class="font-weight-bold">help?</span></h1>
                     <p class="text-white"><?= $lang['knowledge_bank']['title']; ?></p>
         
                  </div>
                  <!-- End Title -->
                  <!-- Input -->

                   <div class="text-center mb-2 reduceForm">
                      <form action="" method="post">
                        <div class="input-group space50">
                          <input type="text" name="search_query" class="form-control" value="" required placeholder="<?= $lang['placeholder']['search_questions']; ?>">
                          <div class="input-group-append move-icon-up" style="cursor:pointer;">
                            <button name="search_article" type="submit" class="search_button">
                            <img src="images/srch2.png" class="srch2">
                            </button>
                          </div>
                        </div>
                      </form>
                      <?php
                        if(isset($_POST['search_article'])){
                        $search_query = $input->post('search_query');
                        echo "<script>window.open('$site_url/search_articles?search=$search_query','_self')</script>";
                        }
                      ?>
                    </div>
                
                  <!-- End Input -->
                  <!-- Text/Links -->
                  <p class="text-white">
                   <?= $lang['knowledge_bank']['desc']; ?> | Popular help topics:
                     <a class="text-info ml-1" href="#">pricing,</a>
                     <a class="text-info ml-1" href="#">upgrade,</a>
                     <a class="text-info ml-1" href="#">hosting,</a>
                     <a class="text-info ml-1" href="#">membership</a>
                  </p>
                  <!-- End Text/Links -->
               </div>
            </div>
         </div>
      </div>



    
    <div class="container mt-5 mb-5">
      <div class="row" style="<?=($lang_dir == "right" ? 'direction: rtl;':'')?>">
        <?php
          $get_cats = $db->select("article_cat",array("language_id" => $siteLanguage));
          while($row_cats = $get_cats->fetch()){
          $article_cat_id = $row_cats->article_cat_id;
          $article_cat_title = $row_cats->article_cat_title;
        ?>
        <div class="col-md-6">


<div id="basics">
                     <!-- Title -->
                     <div class="mb-3 mt-0">
                        <h4 class="font-weight-semi-bold"><?= $article_cat_title; ?></h4>
                     </div>
                     <!-- End Title -->
                     <!-- Basics Accordion -->

                      <!-- Category -->
          <?php 
            $get_articles = "select * from knowledge_bank where cat_id='$article_cat_id' AND language_id='$siteLanguage'";
            $get_articles = $db->select("knowledge_bank",array("cat_id" => $article_cat_id,"language_id" => $siteLanguage));
            $count_articles = $get_articles->rowCount();
            if($count_articles == 0){
              echo "No articles to display at the moment.";
            }
            while($row_articles = $get_articles->fetch()){
            $article_id = $row_articles->article_id;
            $article_url = $row_articles->article_url;
            $article_heading = $row_articles->article_heading;
          ?>
           
                        <!-- Card -->
                        <div class="shadow-sm rounded bg-white mb-2">
                           <div id="basicsHeadingOne">
                              <h5 class="mb-0">
                                 <button class="shadow-none btn btn-block d-flex justify-content-between card-btn p-3 collapsed" data-toggle="collapse"  aria-expanded="false" >
                                 <a href="article/<?= $article_url; ?>">
                                  <i class="fa fa-book"></i> <?= $article_heading; ?></a>
                                 
                                 </button>
                              </h5>
                           </div>
                           
                        </div>
                        
                        
                       
                   


          <?php } ?>
          <br><br>


                     
                     <!-- End Basics Accordion -->
                  </div>



         
         
        </div>
        <?php } ?>
      </div>
    </div>
    <?php include "includes/footer.php"; ?>
  </body>
</html>