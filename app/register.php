<?php
	require '../config/config.php';
	if(empty($_SESSION['username']))
		header('Location: login.php');

	if(isset($_POST['register_individuals'])) {
			$errMsg = '';
			// Get data from FROM
			$fullname = $_POST['fullname'];
			$email = $_POST['email'];
			$mobile = $_POST['mobile'];
			$alternat_mobile = $_POST['alternat_mobile'];
			$crop_name = $_POST['crop_name'];
			$country = $_POST['country'];
			$state = $_POST['state'];
			$city = $_POST['city'];
			
			$description = $_POST['description'];
			//$open_for_sharing = $_POST['open_for_sharing'];
			$user_id = $_SESSION['id'];
			
			//$image = $_POST['image']?$_POST['image']:NULL;
			//$other = $_POST['other'];			
			

			//upload an images
			$target_file = "";
			if (isset($_FILES["image"]["name"])) {
				$target_file = "uploads/".basename($_FILES["image"]["name"]);
				$uploadOk = 1;
				$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
				// Check if image file is a actual image or fake image
			    $check = getimagesize($_FILES["image"]["tmp_name"]);			
			    if($check !== false) {
			    	move_uploaded_file($_FILES["image"]["tmp_name"], "uploads/" . $_FILES["image"]["name"]);
			        $uploadOk = 1;
			    } else {
			        echo "File is not an image.";
			        $uploadOk = 0;
			    }
			}
			//end of image upload


			try {
					$stmt = $connect->prepare('INSERT INTO crop_registrations (fullname, email, mobile, alternat_mobile, crop_name, country, state, city, description, image, user_id) VALUES (:fullname, :email, :mobile, :alternat_mobile, :crop_name, :country, :state, :city, :description, :image, :user_id)');
					$stmt->execute(array(
						':fullname' => $fullname,
						':email' => $email,
						':mobile' => $mobile,
						':alternat_mobile' => $alternat_mobile,
						':crop_name' => $crop_name,
					
						':country' => $country,
						':state' => $state,
						':city' => $city,
						
						':description' => $description,
						
						':image' => $target_file,
						//':other' => $other,
						
						':user_id' => $user_id
						));				

				header('Location: register.php?action=reg');
				exit;
			}
			catch(PDOException $e) {
				echo $e->getMessage();
			}
	}


	if(isset($_POST['register_crops'])) {
			$errMsg = '';
			// Get data from FROM
			$fullname = $_POST['fullname'];
			$email = $_POST['email'];
			$mobile = $_POST['mobile'];
			$alternat_mobile = $_POST['alternat_mobile'];
			$crop_name = $_POST['crop_name'];
			$country = $_POST['country'];
			$state = $_POST['state'];
			$city = $_POST['city'];
			
			$description = $_POST['description'];			
			//$open_for_sharing = $_POST['open_for_sharing'];
			$user_id = $_SESSION['id'];
			
			$image = $_FILES['image']['name'];
			//$other = $_POST['other'];	

			//upload an images
			$target_file = "";
			if (isset($image)) {
				# code...
				$target_file = "uploads/".basename($_FILES["image"]["name"]);
				$uploadOk = 1;
				$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
				// Check if image file is a actual image or fake image
			    //$check = getimagesize($_FILES["image"]["tmp_name"]);			
			    //if($check !== false) {
			    	move_uploaded_file($_FILES["image"]["tmp_name"], "uploads/" . $_FILES["image"]["name"]);
			        $uploadOk = 1;
			   // } else {
			       // echo "File is not an image.";
			        //$uploadOk = 0;
			   // }
			}			
			//end of image upload		
			
			try {
				$stmt = $connect->prepare('INSERT INTO crop_nature (fullname, email, mobile, alternat_mobile,  crop_name, country, state, city, description, image, user_id) VALUES (:fullname, :email, :mobile, :alternat_mobile, :crop_name, :country, :state, :city, :description, :image,  :user_id)');
				
				foreach ($_POST['ap_number_of_plats'] as $key => $value) {
					# code...					
					$stmt->execute(array(
						':fullname' =>  $_POST['fullname'][$key],
						':email' => $email,
						':mobile' => $mobile,
						':alternat_mobile' => $alternat_mobile,
												
						':country' => $country,
						':state' => $state,
						':city' => $city,
						
						':description' => $_POST['description'][$key],
						':image' => $target_file,
						
						':user_id' => $user_id
					));
				}				
				header('Location: register.php?action=reg');
				exit;
			}catch(PDOException $e) {
				echo $e->getMessage();
			}
	}

	if(isset($_GET['action']) && $_GET['action'] == 'reg') {
		$errMsg = 'Registration successfull. Thank you';
	}
?>
<?php include '../include/header.php';?>
	<!-- Header nav -->	
	<nav class="navbar navbar-expand-lg navbar-dark" style="background-color:#212529;" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="../index.php">Farm Buddy</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav text-uppercase ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="#"><?php echo $_SESSION['fullname']; ?> <?php if($_SESSION['role'] == 'admin'){ echo "(Admin)"; } ?></a>
            </li>
            <li class="nav-item">
              <a href="../auth/logout.php" class="nav-link">Logout</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
	<!-- end header nav -->
<?php include '../include/side-nav.php';?>
<section class="wrapper" style="margin-left: 16%;margin-top: -11%;">
	<!-- Nav tabs -->
	<ul class="nav nav-tabs" role="tablist">
	  <li class="nav-item">
	    <a class="nav-link active" data-toggle="tab" href="#home" role="tab">individaul crop Registration</a>
	  </li>
	  <li class="nav-item">
	    <a class="nav-link" data-toggle="tab" href="#profile" role="tab">Crop Family Registration</a>
	  </li>
	</ul>

	<div class="tab-content">
	
	  <div class="tab-pane active" id="home" role="tabpanel"><br>
	  		<?php include 'partials/individaul.php';?>
	  </div>

	
	  <div class="tab-pane" id="profile" role="tabpanel">
	  		<?php include 'partials/crop.php';?>	  	
	  </div>
	</div>	
</section>
<?php include '../include/footer.php';?>
<script type="text/javascript">
	var rowCount = 1;
	function addMoreRows(frm) {
		rowCount ++;
		var recRow = '<div id="rowCount'+rowCount+'"><div class="row"><div class="col-md-4"><div class="form-group"><br> <a href="javascript:void(0);" onclick="removeRow('+rowCount+');" class="btn btn-danger btn-sm">Delete</a> </div> </div></div><div class="row"> <div class="col-md-4"><div class="form-group"> <label for="fullname">Full Name</label> <input type="fullname" class="form-control" id="fullname" placeholder="Full Name" name="fullname[]" required> </div> </div> <div class="col-md-4"> </div> </div> <div class="col-md-4"> <div class="form-group"> <label for="crops">Crops</label> <input type="crops" class="form-control" id="crops" placeholder="" name="crops[]" required> </div> </div></div><div class="row"> <div class="col-md-4"> <div class="form-group"> <label for="area">Area</label> <input type="area" class="form-control" id="area" placeholder="Area" name="area[]"> </div> </div> <div class="col-md-4"> <div class="form-group"> <label for="purpose">Purpose</label> <select class="form-control" id="purpose" name="purpose[]"> <option value="Residential">Residential</option> <option value="Commercial">Commercial</option> </select> </div> </div> <div class="col-md-4"> <div class="form-group"> </select> </div> </div> </div> <div class="row"><div class="col-md-4"> <div class="form-group"> <label for="ownership">Owner/Rented</label> <select class="form-control" id="ownership" name="own[]"> <option value="owner">Owner</option> <option value="rented">Rented</option> </select> </div> </div> <div class="col-md-4"> <div class="form-group"> </div> </div> <div class="col-md-4"> <div class="form-group"> </div> </div>  </div><div class="row"> </div> </div> <div class="col-md-4"> <div class="form-group"> <label for="description">Description</label> <input type="description" class="form-control" id="description" placeholder="Description" name="description[]" required> </div> </div> <div class="col-4"> <div class="form-group"> <select class="form-control"   <option value="1"></option> <option value="0"></option> </select> </div> </div> </div></div>'; $('#addedRows').append(recRow);
	}
	function removeRow(removeNum) {
		$('#rowCount'+removeNum).remove();
	}
</script>