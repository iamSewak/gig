
<div class="card mb-4"><!--- card Starts --->
	<div class="card-body <?= $textRight; ?>"><!--- card-body Starts --->
		
	
	   

		<img src="<?= getImageUrl("posts",$post->image); ?>" class="img-fluid mb-3"/>
		<div class="mt-3 post-content">
			<?= $post->content; ?>
		</div>

	</div><!--- card-body Ends --->
</div><!--- card Ends --->

<?php include("post_comments.php"); ?>

<a href="index" class="btn btn-success <?= $floatRight; ?>"> <i class="fa fa-arrow-left"></i>&nbsp; Go Back</a>
