<?php
	require '../config/config.php';
	if(empty($_SESSION['username']))
		header('Location: login.php');
		if(isset($_POST['register'])) {
			$cropname = $_POST['cropname'];
			$cmp = $_POST['cmp'];
			$username = $_POST['user_id'];
			$fullname = $_POST['fullname'];
			$city = $_POST['city'];
			
			try {
					$stmt = $connect->prepare('INSERT INTO cmps (cropname,cmp,username,fullname,city) VALUES (:cropname, :cmp,:username,:fullname, :city)');
					$stmt->execute(array(
						':cropname' => $cropname,
						':city'=> $city,
						':cmp' => $cmp,
						':username' => $username,
						':fullname' => $fullname
					));

						$errMsg = 'Sent Successfully';
					//header('Location: register.php?action=joined');
			}catch(PDOException $e) {
				$errMsg = $e->getMessage();
			}
		}
?>	
<?php include '../include/header.php';?>

	<!-- Header nav -->	
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" style="background-color:#212529;" id="mainNav">
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
	<section style="padding-left:0px;">
		<?php include '../include/side-nav.php';?>
	</section>

<section class="wrapper" style="margin-left: 16%;margin-top: -23%;">
	<div class="container">
		<div class="row">
			<div class="col-12">
			<?php
				if(isset($errMsg)){
					echo '<div style="color:#FF0000;text-align:center;font-size:17px;">'.$errMsg.'</div>';
				}
			?>
			<h2>Complaints</h2>
				<form action="" method="post">
			  		<div class="row">
				  	    <div class="col-6">
					  	  <div class="form-group">
						    <label for="cropname">Crop Name</label>
						    <input type="text" class="form-control" id="cropname" placeholder="Text" name="cropname" required>

						  </div>
						</div>
						<div class="col-6">
						  
						    <label for="cmp">Complaint</label>
						    <input type="text" class="form-control" id="cmp" placeholder="Text" name="cmp" required>
						  </div>
						  <div class="col-6">
						  
						    <label for="city">City</label>
						    <input type="text" class="form-control" id="city" placeholder="Text" name="city" required>
						  </div>
						  <div class="col-6">
						  
						    <label for="fullname">Full Name</label>
						    <input type="text" class="form-control" id="fullname" placeholder="Text" name="fullname" required>
						  </div>
					    </div>
				   </div>

				  <button type="submit" class="btn btn-primary" name='register' value="register">Submit</button>
				</form>			
			</div>
		</div>
	</div>	
</section>
<?php include '../include/footer.php';?>