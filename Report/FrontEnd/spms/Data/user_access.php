<?php
	if(require_once("db.php")){
	
		function searchUser($email){
			global $conn;
			$query="SELECT * FROM user WHERE email='$email'";
			$result=mysqli_query($conn,$query);
			
			return mysqli_fetch_assoc($result);
		}
		
		
	}else{
		echo "Database not found";
	}
	
?>