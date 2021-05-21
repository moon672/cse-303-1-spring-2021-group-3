<?php
header('Content-Type: application/json');

echo("I am here;");
//require_once('db.php');

$user = 'root';
$pass = '';
$db = 'stuperformance';
$dbConnect = new mysqli('localhost', $user, $pass, $db) or die("Unable to connect");


$sql = "SELECT prog.programid,  COUNT(*) as studentcount from tblstudent stu JOIN tblprogram prog on stu.programid = prog.programid GROUP by prog.programid";
//$result = $dbConnect-> query($sql);

//$sqlQuery = "SELECT student_id,student_name,marks FROM tbl_marks ORDER BY student_id";

$result = mysqli_query($dbConnect,$sql);

$data = array();
foreach ($result as $row) {
	$data[] = $row;
}

mysqli_close($conn);

echo json_encode($data);
?>