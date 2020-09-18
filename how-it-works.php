<?php
  session_start();
  require_once("includes/db.php");
  require_once("social-config.php");
  ?>
<!DOCTYPE html>
<html lang="en" dir="<?=($lang_dir == "right" ? 'rtl':'ltr')?>" class="ui-toolkit">
  <head>
    <title> <?= $site_name; ?> - <?= $lang['titles']['how_it_works']; ?> </title>
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
      .swal2-popup .swal2-styled.swal2-confirm {
      background-color: #24d5af;
      }
    </style>
  </head>
  <body class="is-responsive">
    <?php require_once("includes/header.php"); ?>
<section id="how_to" class="freelanceheader bg-gradient related-links related-links-bg bb-xs-1">
    <div class="freelancersbg container">
    <h2 class="pb-2 text-white"><?= $lang['how_it_works']['title']; ?></h2>
    <h5 class="text-white" ><?= $lang['how_it_works']['desc']; ?> <!--Home / Search Freelancers --></h5>
  </div>
  </section>



    <div class="container" id="how-to-work" >
      <div class="row pb-4">
        <div>
          <section class="related-links">
            <div class="dev-block">
            <h2><?= $lang['how_it_works']['buyers']['title']; ?></h2>
            <ul>
               <li>
                  <p><?= str_replace('{site_name}',$site_name,$lang['how_it_works']['buyers']['desc']); ?> </p>
               </li>
               
            </ul>
          </div>
         </section>


       



          <div class="row pt-3">
            <div class="col-md-6">
              <div class="row pt-4">
                <div class="col-md-3">
                  <i class="fa fa-search fa-adj" style="color:#3498db;"></i>
                </div>
                <div class="col-md-9">
                  <div class="content-talks">
                    <?= $lang['how_it_works']['buyers']['column_1']; ?>
                  </div>
                </div>
              </div>
              <div class="row pt-4">
                <div class="col-md-3">
                  <i class="fa fa-comments-o fa-adj" style="color:#e74c3c;"></i>
                </div>
                <div class="col-md-9">
                  <div class="content-talks">
                    <?= $lang['how_it_works']['buyers']['column_2']; ?>
                  </div>
                </div>
              </div>
              <div class="row pt-4">
                <div class="col-md-3">
                  <i class="fa fa-refresh fa-adj" style="color:#9b59b6;"></i>
                </div>
                <div class="col-md-9">
                  <div class="content-talks">
                    <?= $lang['how_it_works']['buyers']['column_3']; ?>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-6">
              <div class="row pt-4">
                <div class="col-md-3">
                  <i class="fa fa-file-text-o fa-adj" style="color:#f1c40f;"></i>
                </div>
                <div class="col-md-9">
                  <div class="content-talks">
                    <?= $lang['how_it_works']['buyers']['column_4']; ?>
                  </div>
                </div>
              </div>
              <div class="row pt-4">
                <div class="col-md-3">
                  <i class="fa fa-check-square-o fa-adj" style="color:#2ecc71;"></i>
                </div>
                <div class="col-md-9">
                  <div class="content-talks">
                    <?= $lang['how_it_works']['buyers']['column_5']; ?>
                  </div>
                </div>
              </div>
              <div class="row pt-4">
                <div class="col-md-3">
                  <i class="fa fa-star fa-adj" style="color:#f1c40f;"></i>
                </div>
                <div class="col-md-9">
                  <div class="content-talks">
                    <?= $lang['how_it_works']['buyers']['column_6']; ?>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="row pb-4">
        <div>
         
          <section class="related-links">
            <div class="dev-block">
            <h2><?= $lang['how_it_works']['sellers']['title']; ?></h2>
            <ul>
               <li>
                  <p><?= str_replace('{site_name}',$site_name,$lang['how_it_works']['sellers']['desc']); ?></p>
               </li>
               
            </ul>
          </div>
         </section>





          <div class="row pt-3">
            <div class="col-md-6">
              <div class="row pt-4">
                <div class="col-md-3">
                  <i class="fa fa-pencil-square-o fa-adj" style="color:#3498db;"></i>
                </div>
                <div class="col-md-9">
                  <div class="content-talks">
                    <?= $lang['how_it_works']['sellers']['column_1']; ?>
                  </div>
                </div>
              </div>
              <div class="row pt-4 pb-4">
                <div class="col-md-3">
                  <i class="fa fa fa-line-chart fa-adj" style="color:#2ecc71;"></i>
                </div>
                <div class="col-md-9">
                  <div class="content-talks">
                    <?= $lang['how_it_works']['sellers']['column_2']; ?>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-6">
              <div class="row pt-4">
                <div class="col-md-3">
                  <i class="fa fa-comments fa-adj" style="color:#e74c3c;"></i>
                </div>
                <div class="col-md-9">
                  <div class="content-talks">
                    <?= $lang['how_it_works']['sellers']['column_3']; ?>
                  </div>
                </div>
              </div>
              <div class="row pt-4 pb-4">
                <div class="col-md-3">
                  <i class="fa fa-clock-o fa-adj" style="color:#9b59b6;"></i>
                </div>
                <div class="col-md-9">
                  <div class="content-talks">
                    <?= $lang['how_it_works']['sellers']['column_4']; ?>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <?php require_once("includes/footer.php"); ?>
  </body>
</html>