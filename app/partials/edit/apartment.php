<!-- <div class="row"> -->			
  <div class="col-md-11 col-xs-12 col-sm-12"><br>  	
  	<div class="alert alert-info" role="alert">
  		<?php
			if(isset($errMsg)){
				echo '<div style="color:#FF0000;text-align:center;font-size:17px;">'.$errMsg.'</div>';
			}
		?>
  		<h2 class="text-center">Crop</h2>
  		<form action="" method="POST">
		  	 <div class="row">
		  	 	<div class="col-md-4">
			  	  <div class="form-group">
				    <label for="fullname">Full Name</label>
				     <input type="hidden" class="form-control" id="id" name="id" value="<?php echo $data['id']; ?>">
				    <input type="text" class="form-control" id="fullname" placeholder="Full Name" name="fullname" value="<?php echo $data['fullname']?$data['fullname']:''; ?>" required>
				  </div>
				 </div>

				<div class="col-md-4">
				  <div class="form-group">
				    <label for="mobile">Mobile</label>
				    <input type="text" class="form-control" pattern="^(\d{10})$" id="mobile" title="10 digit mobile number" placeholder="10 digit mobile number" name="mobile" value="<?php echo $data['mobile']?$data['mobile']:''; ?>" required>
				  </div>
				 </div>

				<div class="col-md-4">
				  <div class="form-group">
				    <label for="alternat_mobile">Alternat Mobile</label>
				    <input type="text" class="form-control" pattern="^(\d{10})$" id="alternat_mobile" title="10 digit mobile number" placeholder="10 digit mobile number" value="<?php echo $data['alternat_mobile']?$data['alternat_mobile']:''; ?>">
				  </div>
				</div>
			</div>

			<div class="row">
		  	 	<div class="col-md-4">
				  <div class="form-group">
				    <label for="email">Email</label>
				    <input type="email" class="form-control" id="email" placeholder="Email" name="email" value="<?php echo $data['email']?$data['email']:''; ?>" required>
				  </div>
			
				 </div>

				 <div class="col-md-4">
				  <div class="form-group">
				    <label for="crop_name">Crop Name</label>
				    <input type="text" class="form-control" id="crop_name" placeholder="Crop Name" name="crop_name" value="<?php echo $data['crop_name']?$data['crop_name']:''; ?>" required>
				  </div>
				 </div>
			</div>

			<div class="row">
				<div class="col-md-4">
			  <div class="form-group">
			    <label for="country">Country</label>
			    <input type="country" class="form-control" id="country" placeholder="Country" name="country" value="<?php echo $data['country']?$data['country']:''; ?>" required>
			  </div>
			  </div>

			  <div class="col-md-4">
			  <div class="form-group">
			    <label for="state">State</label>
			    <input type="state" class="form-control" id="state" placeholder="State" name="state" value="<?php echo $data['state']?$data['state']:''; ?>" required>
			  </div>
			  </div>
			  <div class="col-md-4">
			  <div class="form-group">
			    <label for="city">City</label>
			    <input type="city" class="form-control" id="city" placeholder="City" name="city" value="<?php echo $data['city']?$data['city']:''; ?>" required>
			  </div>
			  </div>
			 </div>
			 
			 <div class="row">
			 	<div class="col-md-4">
				 <div class="form-group">
				    <label for="ap_number_of_plats">Crop Number</label>
				    <input type="ap_number_of_plats" class="form-control" id="Plat Number" placeholder="ap_number_of_plats" name="ap_number_of_plats" value="<?php echo $data['ap_number_of_plats']?$data['ap_number_of_plats']:''; ?>" required>
				  </div>
				</div>
				<div class="col-md-4">
				 <div class="form-group">
				    <label for="crops">Crops</label>
				    <input type="text" class="form-control" id="crops" placeholder="crops" name="crops" value="<?php echo $data['crops']?$data['crops']:''; ?>" required>
				  </div>
				</div>
				<div class="col-md-4">
				    <div class="form-group">
					    <label for="ownership">Large Farming/Small Farming </label>
					    <select class="form-control" id="ownership" name="own">
					      <option value="owner" <?php if($data['own'] == 'owner'){echo 'selected';}?>>Large Farming</option>
					      <option value="rented" <?php if($data['own'] == 'rented'){echo 'selected';}?>>Small Farming</option>
					    </select>
					 </div>
			  	</div>
			</div>


			  	</div>

			 	<div class="col-md-4">
				    <div class="form-group">
					    <label for="purpose">Purpose</label>
					    <select class="form-control" id="purpose" name="purpose">
					      <option value="Residential" <?php if($data['purpose'] == 'Residential'){echo 'selected';}?>>Family Use</option>
					      <option value="Commercial" <?php if($data['purpose'] == 'Commercial'){echo 'selected';}?>>Commercial</option>
					    </select>
					 </div>
			  	</div>

			  	
			  </div>

			   <div class="row">
			 	<div class="col-md-4">
			  <div class="form-group">
			    <label for="description">Description</label>
			    <input type="description" class="form-control" id="description" placeholder="Description" name="description" value="<?php echo $data['description']?$data['description']:''; ?>">
			  </div>
			
			   </div>
			    </div>				  
			  
			    <div class="row">
			    	<div class="col-4">
			 		 <div class="form-group">
					    <label for="vacant">Large Farming/Small Farming</label>
					    <select class="form-control" id="vacant" name="vacant">
					      <option value="1" <?php if($data['vacant'] == '1'){echo 'selected';}?>>Large Farming</option>
					      <option value="0" <?php if($data['vacant'] == '0'){echo 'selected';}?>>Small Farming</option>
					    </select>
					  </div>
			 	</div>
			 	
				<!-- <div class="col-md-4">
				  <div class="form-group">
				    <label for="description">Image</label>
				    <input type="file" class="form-control">
				  </div>
				  </div> -->
			  </div>			
			  <button type="submit" class="btn btn-primary" name='register_crop' value="register_crop">Submit</button>
			</form>	
			</div>			
  	</div>
<!-- </div> -->	