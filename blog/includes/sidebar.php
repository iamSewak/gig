<div class="filters shadow-sm rounded bg-white mb-4 blog-sidebar">
  

   <div class="filters-card border-bottom p-4">
                              <div class="filters-card-header" id="headingTwo">
                                 <h6 class="mb-0">
                                    <a href="#" class="btn-link" data-toggle="collapse" data-target="#collapsetwo" aria-expanded="true" aria-controls="collapsetwo">
                                    Search Blog
                                    </a>
                                 </h6>
                              </div>
                              <div id="collapsetwo" class="collapse show" aria-labelledby="headingTwo" data-parent="#accordion" style="">
                                 <div class="filters-card-body card-shop-filters">
                                    
                                    
                                   <form action="index" method="get">
		
			<div class="input-group">
				<?php if($lang_dir == "right"){ ?>
					<div class="input-group-prepend">
						<button class="btn btn-success rounded-0 rounded-right" type="submit">
							<i class="fa fa-search"></i>
						</button>
					</div>
					<input type="text" class="form-control <?= $textRight; ?>" placeholder="<?= $lang['placeholder']['search']; ?>" name="search" value="<?= @$input->get("search"); ?>" required />
				<?php }else{ ?>
					<input type="text" class="form-control" placeholder="<?= $lang['placeholder']['search']; ?>" name="search" value="<?= @$input->get("search"); ?>" required />
					<div class="input-group-prepend">
						<button class="btn btn-success rounded-0 rounded-right" type="submit">
							<i class="fa fa-search"></i>
						</button>
					</div>			
				<?php } ?>
			</div>

		</form>
                                    
                                    
                                    
                                    
                                 </div>
                              </div>
                           </div>


   
</div>


<div class="filters shadow-sm rounded bg-white mb-4">
   <div class="filters-header border-bottom pl-4 pr-4 pt-3 pb-3">
      <h5 class="m-0">Categories</h5>
   </div>
   <div class="filters-card border-bottom p-4">
                             <div id="collapsetwo" class="collapse show" aria-labelledby="headingTwo" data-parent="#accordion" style="">
                                 <div class="card-shop-filters">
                                    <ul class="mb-0 list-unstyled ml-3 mr-3 <?= $textRight; ?>">
			<?php
			$categories = $db->select("post_categories");
			while($cat = $categories->fetch()){
				$image = $cat->cat_image;
			?>
				<li>
					<a href="index?cat_id=<?= $cat->id; ?>">
						<?php if(!empty($image)){ ?>
							<img src="../blog_cat_images/<?= $image; ?>" width="18" class='mr-1'>
						<?php }else{ ?>
							<span style="margin-left: 26px;"></span>
						<?php } ?>
						<?= $cat->cat_name; ?>
					</a>
				</li>
			<?php } ?>
		</ul>
                                                                        
                                 </div>
                              </div>
                           </div>
</div>


