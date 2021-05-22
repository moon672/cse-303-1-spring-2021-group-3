<?php
	include("admin_template_top.php");
	//include_once("../Data/dashboard_details.php");
    $user = 'root';
    $pass = '';
    $db = 'stuperformance';
    $dbConnect = new mysqli('localhost', $user, $pass, $db) or die("Unable to connect");

    
    
    $sql = "SELECT  COUNT(*) as studentcount from tblstudent stu ";
    $result = $dbConnect-> query($sql);
    
    $student_count = 0;
    
    if($result-> num_rows>0){
        while($row = $result->fetch_assoc()){
            $student_count = $row["studentcount"];
        }
    }

    $sql = "SELECT  COUNT(*) as studentcount from tblstudent stu where stu.departmentid = 'CSE'";
    $result = $dbConnect-> query($sql);
    
    $cse_student_count = 0;
    
    if($result-> num_rows>0){
        while($row = $result->fetch_assoc()){
            $cse_student_count = $row["studentcount"];
        }
    }

    $sql = "SELECT  COUNT(*) as studentcount from tblstudent stu where stu.departmentid = 'EEE'";
    $result = $dbConnect-> query($sql);
    
    $eee_student_count = 0;
    
    if($result-> num_rows>0){
        while($row = $result->fetch_assoc()){
            $eee_student_count = $row["studentcount"];
        }
    }

    $sql = "SELECT  COUNT(*) as studentcount from tblstudent stu where stu.departmentid = 'MIS'";
    $result = $dbConnect-> query($sql);
    
    $mis_student_count = 0;
    
    if($result-> num_rows>0){
        while($row = $result->fetch_assoc()){
            $mis_student_count = $row["studentcount"];
        }
    }

    $sql = "SELECT  COUNT(*) as deptcount from tbldepartment";
    $result = $dbConnect-> query($sql);
    
    $dept_count = 0;
    
    if($result-> num_rows>0){
        while($row = $result->fetch_assoc()){
            $dept_count = $row["deptcount"];
        }
    }
		
		
		
		
?>

<?php
                                                $user = 'root';
                                                $pass = '';
                                                $db = 'stuperformance';
                                                $dbConnect = new mysqli('localhost', $user, $pass, $db) or die("Unable to connect");

                                                
                                                //$sql = "SELECT prog.programid,  COUNT(*) as studentcount from tblstudent stu JOIN tblprogram prog on stu.programid = prog.programid GROUP by prog.programid";
                                                $sql = "SELECT stu.semesterid, prog.departmentid, COUNT(*) as studentcount from tblstudent stu JOIN tblprogram prog on stu.programid = prog.programid GROUP by stu.semesterid, prog.departmentid";
                                                $result = $dbConnect-> query($sql);
                                                $i=1;
                                                $array_programid=array();
                                                $array_cse_studentcount=array();
                                                $array_eee_studentcount=array();
                                                $array_mis_studentcount=array();
                                                $array_semesterid=array();
                                                
                                                if($result-> num_rows>0){
                                                    while($row = $result->fetch_assoc()){
                                                       // echo "<tr> yes </tr>";
                                                       //array_push($array_programid,$row["programid"]);
                                                       if(str_contains($row["departmentid"],"CSE")){
                                                            array_push($array_cse_studentcount,$row["studentcount"]);
                                                       }
                                                       if(str_contains($row["departmentid"],"EEE")){
                                                            array_push($array_eee_studentcount,$row["studentcount"]);
                                                        }
                                                        if(str_contains($row["departmentid"],"MIS")){
                                                            array_push($array_mis_studentcount,$row["studentcount"]);
                                                        }
                                                        if (!array_key_exists($row["semesterid"],$array_semesterid)){
                                                            array_push($array_semesterid,$row["semesterid"]);
                                                        }
                                                       
                                                        
                                                    $i++;
                                                    }
                                                    $res_programid = json_encode($array_programid);
                                                    $res_cse_studentCount = json_encode($array_cse_studentcount);
                                                    $res_eee_studentCount = json_encode($array_eee_studentcount);
                                                    $res_mis_studentCount = json_encode($array_mis_studentcount);
                                                    $res_semesterid = json_encode($array_semesterid);
                                                }
                                            ?>
				
				<!-- Main Content Part of Current Page including Common Things Starting Point -->
				<div class="app-main__outer">
                    
					<!-- Main Content Part Excluding Top Menu, Side Menu and Footer Starting Point -->
					<div class="app-main__inner">
                        
						<!-- Below Top Menu and Above Main Body Part Area Starting Point-->
						<div class="app-page-title">
                            <div class="page-title-wrapper">
							
                                <div class="page-title-heading">
                                    <div class="page-title-icon">
                                        <i class="pe-7s-car icon-gradient bg-mean-fruit"></i> <!-- Below Top Menu Icon, it changes according to pages -->
                                    </div>
                                    <div>Analytics Dashboard
                                        <div class="page-title-subheading">This is an example dashboard created using build-in elements and components.
                                        </div>
                                    </div>
                                </div>
							</div>
                        </div>
						<!-- Below Top Menu and Above Main Body Part Area End Point-->
						
						<!-- Main Contents of Current Page Starting Point -->
						<!-- Row 1 Start Point -->
						<div class="row">
                            <div class="col-md-6 col-xl-6">
                                <div class="card mb-3 widget-content bg-midnight-bloom">
                                    <div class="widget-content-wrapper text-white">
                                        <div class="widget-content-left">
                                            <div class="widget-heading">Student</div>
                                            <div class="widget-subheading">Total Active Students</div>
                                        </div>
                                        <div class="widget-content-right">
                                            <div class="widget-numbers text-white"><span><?php echo $student_count ?></span></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-xl-6">
                                <div class="card mb-3 widget-content bg-asteroid">
                                    <div class="widget-content-wrapper text-white">
                                        <div class="widget-content-left">
                                            <div class="widget-heading">Department</div>
                                            <div class="widget-subheading">Total Active Departments</div>
                                        </div>
                                        <div class="widget-content-right">
                                            <div class="widget-numbers text-white"><span><?php echo $dept_count ?></span></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
						</div>
						
						<div class="row">
                            <div class="col-md-6 col-xl-4">
                                <div class="card mb-3 widget-content bg-grow-early">
                                    <div class="widget-content-wrapper text-white">
                                        <div class="widget-content-left">
                                            <div class="widget-heading">CSE</div>
                                            <div class="widget-subheading">Total Active Student</div>
                                        </div>
                                        <div class="widget-content-right">
                                            <div class="widget-numbers text-white"><span><?php echo $cse_student_count ?></span></div>
                                        </div>
                                    </div>
                                </div>
                            </div>                            
                       
							<div class="col-md-6 col-xl-4">
                                <div class="card mb-3 widget-content bg-love-kiss">
                                    <div class="widget-content-wrapper text-white">
                                        <div class="widget-content-left">
                                            <div class="widget-heading">EEE</div>
                                            <div class="widget-subheading">Total Active Student</div>
                                        </div>
                                        <div class="widget-content-right">
                                            <div class="widget-numbers text-white"><span><?php echo $eee_student_count ?></span></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
							<div class="col-md-6 col-xl-4">
                                <div class="card mb-3 widget-content bg-mixed-hopes">
                                    <div class="widget-content-wrapper text-white">
                                        <div class="widget-content-left">
                                            <div class="widget-heading">MIS</div>
                                            <div class="widget-subheading">Total Active Student</div>
                                        </div>
                                        <div class="widget-content-right">
                                            <div class="widget-numbers text-white"><span><?php echo $mis_student_count ?></span></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
						</div>
						
						
						<!-- Row 1 End Point -->
						
						
						
						
						
						
						<!-- Row 5 Start Point -->
                        <div class="row">
                            <div class="col-md-6 col-lg-3">
                                <div class="card-shadow-danger mb-3 widget-chart widget-chart2 text-left card">
                                    <div class="widget-content">
                                        <div class="widget-content-outer">
                                            <div class="widget-content-wrapper">
                                                <div class="widget-content-left pr-2 fsize-1">
                                                    <div class="widget-numbers mt-0 fsize-3 text-danger"><?php echo round($cse_student_count/$student_count*100,2) ?>%</div>
                                                </div>
                                                <div class="widget-content-right w-100">
                                                    <div class="progress-bar-xs progress">
                                                        <div class="progress-bar bg-danger" role="progressbar" aria-valuenow="71" aria-valuemin="0" aria-valuemax="100" style="width: 71%;"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="widget-content-left fsize-1">
                                                <div class="text-muted opacity-6">CSE Students</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-3">
                                <div class="card-shadow-success mb-3 widget-chart widget-chart2 text-left card">
                                    <div class="widget-content">
                                        <div class="widget-content-outer">
                                            <div class="widget-content-wrapper">
                                                <div class="widget-content-left pr-2 fsize-1">
                                                    <div class="widget-numbers mt-0 fsize-3 text-success"><?php echo round($eee_student_count/$student_count*100,2) ?>%</div>
                                                </div>
                                                <div class="widget-content-right w-100">
                                                    <div class="progress-bar-xs progress">
                                                        <div class="progress-bar bg-success" role="progressbar" aria-valuenow="54" aria-valuemin="0" aria-valuemax="100" style="width: 54%;"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="widget-content-left fsize-1">
                                                <div class="text-muted opacity-6">EEE Students</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-3">
                                <div class="card-shadow-warning mb-3 widget-chart widget-chart2 text-left card">
                                    <div class="widget-content">
                                        <div class="widget-content-outer">
                                            <div class="widget-content-wrapper">
                                                <div class="widget-content-left pr-2 fsize-1">
                                                    <div class="widget-numbers mt-0 fsize-3 text-warning"><?php echo round($mis_student_count/$student_count*100,2) ?>%</div>
                                                </div>
                                                <div class="widget-content-right w-100">
                                                    <div class="progress-bar-xs progress">
                                                        <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="32" aria-valuemin="0" aria-valuemax="100" style="width: 32%;"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="widget-content-left fsize-1">
                                                <div class="text-muted opacity-6">MIS Students</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-3">
                                <div class="card-shadow-info mb-3 widget-chart widget-chart2 text-left card">
                                    <div class="widget-content">
                                        <div class="widget-content-outer">
                                            <div class="widget-content-wrapper">
                                                <div class="widget-content-left pr-2 fsize-1">
                                                    <div class="widget-numbers mt-0 fsize-3 text-info">0%</div>
                                                </div>
                                                <div class="widget-content-right w-100">
                                                    <div class="progress-bar-xs progress">
                                                        <div class="progress-bar bg-info" role="progressbar" aria-valuenow="89" aria-valuemin="0" aria-valuemax="100" style="width: 89%;"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="widget-content-left fsize-1">
                                                <div class="text-muted opacity-6">Other Students</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
						<!-- Row 5 End Point -->
						<!-- Main Contents of Current Page End Point -->
                        <div class="row">
                            <div class="col-md-12 col-lg-12">
                                <div class="card-shadow-info mb-3 widget-chart widget-chart2 text-left card">
                                    <div class="widget-content">
                                        <div class="widget-content-outer">
                                            <div class="widget-content-wrapper">
                                                <div id="chart-container">
                                                    <canvas id="graphCanvas"></canvas>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
	
                        <script>
        $(document).ready(function () {
            debugger;
            showGraph();
        });


        function showGraph()
        {
            {
                

                    var chartdata = {
                        labels: <?php echo $res_semesterid; ?>,
                        datasets: [
                            {
                                label: 'CSE',
                                backgroundColor: '#49e2ff',
                                borderColor: '#46d5f1',
                                hoverBackgroundColor: '#CCCCCC',
                                hoverBorderColor: '#666666',
                                data: <?php echo $res_cse_studentCount; ?>
                            },
                            {
                                label: 'EEE',
                                backgroundColor: '#9e49ff',
                                borderColor: '#46d5f1',
                                hoverBackgroundColor: '#CCCCCC',
                                hoverBorderColor: '#666666',
                                data: <?php echo $res_eee_studentCount; ?>
                            },
                            {
                                label: 'MIS',
                                backgroundColor: '#ffc249',
                                borderColor: '#46d5f1',
                                hoverBackgroundColor: '#CCCCCC',
                                hoverBorderColor: '#666666',
                                data: <?php echo $res_mis_studentCount; ?>
                            }

                        ]
                    };

                    var graphTarget = $("#graphCanvas");

                    var barGraph = new Chart(graphTarget, {
                        type: 'bar',
                        data: chartdata
                    });
               
            }
        }
    </script>
<?php
	include("new_template_bottom.php");
?>