<?php
	include("admin_template_top.php");
    

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
                                        <i class="pe-7s-note2 icon-gradient bg-happy-fisher"></i> <!-- Below Top Menu Icon, it changes according to pages -->
                                    </div>
                                    <div>Student List</div>
                                </div>
							</div>
                        </div>
						
						<!-- Row 4 Start Point -->
                        <div class="row">
                            <div class="col-md-12">
                                <div class="main-card mb-3 card">
                                    <div class="card-header">Active Student List
                                        <div class="btn-actions-pane-right">
                                            
                                        </div>
                                    </div>
                                    <div class="table-responsive">
                                        <table class="align-middle mb-0 table table-borderless table-striped table-hover">
                                            <thead>
                                            <tr>
                                            <th class="text-center">Serial</th>
                                                <th class="text-center">Program</th>                                                
                                                <th class="text-center">Student Enrollment Count</th>
                                                
                                            </tr>
                                            </thead>
                                            <tbody>
                                            
											

                                            <?php
                                                $user = 'root';
                                                $pass = '';
                                                $db = 'stuperformance';
                                                $dbConnect = new mysqli('localhost', $user, $pass, $db) or die("Unable to connect");

                                                
                                                //$sql = "SELECT prog.programid,  COUNT(*) as studentcount from tblstudent stu JOIN tblprogram prog on stu.programid = prog.programid GROUP by prog.programid";
                                                $sql = "SELECT stu.semesterid, dept.schoolid, COUNT(*) as studentcount from tblstudent stu JOIN tbldepartment dept on stu.departmentid = dept.departmentid GROUP by stu.semesterid, dept.schoolid";
                                                $result = $dbConnect-> query($sql);
                                                $i=1;
                                                $array_programid=array();
                                                $array_cse_studentcount=array();
                                                $array_eee_studentcount=array();
                                                
                                                $array_semesterid=array();
                                                
                                                if($result-> num_rows>0){
                                                    while($row = $result->fetch_assoc()){
                                                       // echo "<tr> yes </tr>";
                                                       //array_push($array_programid,$row["programid"]);
                                                       if(str_contains($row["schoolid"],"SBE")){
                                                            array_push($array_cse_studentcount,$row["studentcount"]);
                                                       }
                                                       if(str_contains($row["schoolid"],"SETS")){
                                                            array_push($array_eee_studentcount,$row["studentcount"]);
                                                        }
                                                        
                                                        if (!array_key_exists($row["semesterid"],$array_semesterid)){
                                                            array_push($array_semesterid,$row["semesterid"]);
                                                        }
                                                       
                                                        echo "<tr>
                                                        <td class='text-center text-muted'>".$i."</td>
                                                        
                                                        <td class='text-center'>".$row["schoolid"]."</td>
                                                        <td class='text-center'>".$row["studentcount"]."</td>
                                                        
                                                    </tr>";
                                                    $i++;
                                                    }
                                                    $res_programid = json_encode($array_programid);
                                                    $res_cse_studentCount = json_encode($array_cse_studentcount);
                                                    $res_eee_studentCount = json_encode($array_eee_studentcount);
                                                    //$res_mis_studentCount = json_encode($array_mis_studentcount);
                                                    $res_semesterid = json_encode($array_semesterid);
                                                }
                                            ?>
                                            
											
											
                                           
                                            
                                            </tbody>
                                        </table>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                        <div id="chart-container">
                            <canvas id="graphCanvas"></canvas>
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
                                label: 'SBE',
                                backgroundColor: '#49e2ff',
                                borderColor: '#46d5f1',
                                hoverBackgroundColor: '#CCCCCC',
                                hoverBorderColor: '#666666',
                                data: <?php echo $res_cse_studentCount; ?>
                            },
                            {
                                label: 'SETS',
                                backgroundColor: '#9e49ff',
                                borderColor: '#46d5f1',
                                hoverBackgroundColor: '#CCCCCC',
                                hoverBorderColor: '#666666',
                                data: <?php echo $res_eee_studentCount; ?>
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