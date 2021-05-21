<!DOCTYPE html>
<head>
<meta charset="utf-8">
<title>Student Performance Monitoring System</title>
<link rel="stylesheet" type="text/css" href="style_new.css" />
</head>
<body>
<br>
<br>
<br>
<br>
<br>
<div class="container">
  <section id="content">
    <form method="post">
      <h1>SPMS Login</h1>
	  <img height="120" width="120" src="../Image/sample/iub.png" alt="">
	  <br>
	  <br>
      <div>
        <input id="username" name="email" required="required" type="text" placeholder="mymail@mail.com"/>
      </div>
      <div>
        <input id="password" name="pass" required="required" type="password" placeholder="eg. X8df!90EO" /> 
      </div>
      <div>
        <input type="submit" value="Log in" />
        <a href="#">Lost your password?</a>
        <a href="#">Register</a>
      </div>
    </form><!-- form -->
    
  </section><!-- content -->
</div><!-- container -->
</body>
</html>

<?php
	if($_SERVER['REQUEST_METHOD']=="POST"){
		
		$email=$_REQUEST['email'];
	
		include_once("../Data/user_access.php");
		
		$result=searchUser($email);
				
			
			if(($_REQUEST['pass']==$result['pass'] )||base64_encode($_REQUEST['pass'])==$result['pass']){
				session_start();
				$_SESSION['user']=$result;
				if($_SESSION['user']['type']=="admin")
				{
					header("location:userProfile.php");
				}
				else if($_SESSION['user']['type']=="teacher"){
					header("location:userProfile.php");
				}
				else if($_SESSION['user']['type']=="student"){
					header("location:userProfile.php");
				}
				else if($_SESSION['user']['type']=="c"){
					echo '<script>
					alert("Your Account is Blocked for some Reason");
					</script>';
				}
				else{
					echo "Invalid User Name or Password";
				   }
				
			}
			else{
				echo "Invalid User Name or Password from Database";
			}
		
	}

?>

