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
                                    <div>Program-wise student performance trend based on CGPA with respect to semesters.</div>
                                </div>
							</div>
                        </div>
						
						<!-- Row 4 Start Point -->
                        <div class="row">
                            <div class="col-md-12">
                                <div class="main-card mb-3 card">
                                    <div class="card-header">Program-wise student performance trend
                                        <div class="btn-actions-pane-right">
                                            
                                        </div>
                                    </div>
                                    <div class="table-responsive">
                                        <table class="align-middle mb-0 table table-borderless table-striped table-hover">
                                            <thead>
                                            <tr>
                                            <th class="text-center">semester</th>
                                                <th class="text-center">program</th>                                                
                                                <th class="text-center">cgpa</th>
                                                
                                            </tr>
                                            </thead>
                                            <tbody>
                                            
											

                                            <?php
                                                $user = 'root';
                                                $pass = '';
                                                $db = 'stuperformance1';
                                                $dbConnect = new mysqli('localhost', $user, $pass, $db) or die("Unable to connect");

                                                
                                               
                                                $sql = "SELECT semesterid , schoolid, departmentid , programid, SUM(cgpa)/COUNT(studentid) AS cgpa FROM
                                                (SELECT semesterid , schoolid, departmentid , programid, studentid, SUM(CG)/COUNT(courseid) AS cgpa FROM
                                                
                                                (SELECT s.semesterid , d.schoolid, s.departmentid , s.programid, c.courseid, s.studentid, (CASE WHEN SUM(sub.obtainedmark)> 85 
                                                then 4.00 WHEN SUM(sub.obtainedmark)> 80 then 3.75 WHEN SUM(sub.obtainedmark)> 75 then 3.50 WHEN SUM(sub.obtainedmark)> 70 then 3.25 WHEN SUM(sub.obtainedmark)> 65 then 3.00 WHEN SUM(sub.obtainedmark)> 60 then 2.75 WHEN SUM(sub.obtainedmark)> 55 then 2.50 WHEN SUM(sub.obtainedmark)> 50 then 2.25 WHEN SUM(sub.obtainedmark)> 45 then 2.00 WHEN SUM(sub.obtainedmark)> 40 then 1.75 else 0.0 end) as CG 
                                                FROM tblstudent s, tbldepartment d, tblcourse c, tblassessment a, tblassessmentsubmission sub
                                                WHERE s.departmentid = d.departmentid AND s.programid = c.programid AND s.studentid = sub.studentid AND a.assessmentid = sub.assessmentid
                                                Group BY s.semesterid , d.schoolid, s.departmentid , s.programid, c.courseid, s.studentid) AS subquary
                                                GROUP BY semesterid , schoolid, departmentid , programid, studentid) AS subquary2
                                                GROUP BY semesterid , schoolid, departmentid , programid";
                                                $result = $dbConnect-> query($sql);
                                                $i=1;
                                                $array_programid=array();
                                                $array_cse_cgpa=array();
                                                $array_eee_cgpa=array();
                                                $array_mis_cgpa=array();
                                                $array_semesterid=array();
                                                
                                                if($result-> num_rows>0){
                                                    while($row = $result->fetch_assoc()){
                                                       
                                                       if(str_contains($row["programid"],"BSc in CSE")){
                                                            array_push($array_cse_cgpa,$row["cgpa"]);
                                                       }
                                                        if(str_contains($row["programid"],"BSc in EEE")){
                                                        array_push($array_eee_cgpa,$row["cgpa"]);
                                                       }
                                                        
                                                       if(str_contains($row["programid"],"BSc MIS")){
                                                       array_push($array_mis_cgpa,$row["cgpa"]);
                                                       }
                                                       
                                                        if (!array_key_exists($row["semesterid"],$array_semesterid)){
                                                            array_push($array_semesterid,$row["semesterid"]);
                                                        }
                                                    
                                                        echo "<tr>
                                                        <td class='text-center text-muted'>".$row["semesterid"]."</td>
                                                        
                                                        <td class='text-center'>".$row["programid"]."</td>
                                                        <td class='text-center'>".$row["cgpa"]."</td>
                                                    
                                                    </tr>";
                                                    $i++;
                                                    }
                                                    $res_programid = json_encode($array_programid);
                                                    $res_cse_cgpa = json_encode($array_cse_cgpa);
                                                    $res_eee_cgpa = json_encode($array_eee_cgpa);
                                                    $res_mis_cgpa = json_encode($array_mis_cgpa);
                                                    
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
                                label: 'BSc in CSE',
                                backgroundColor: '#49e2ff',
                                borderColor: '#46d5f1',
                                hoverBackgroundColor: '#CCCCCC',
                                hoverBorderColor: '#666666',
                                data: <?php echo $res_cse_cgpa; ?>
                            },
                            {
                                label: 'BSc in EEE',
                                backgroundColor: '#0000FF',
                                borderColor: '#46d5f1',
                                hoverBackgroundColor: '#F0F0F0',
                                hoverBorderColor: '#666666',
                                data: <?php echo $res_eee_cgpa; ?>
                            },
                            {
                                label: 'BSc in MIS',
                                backgroundColor: '#BBBBBB',
                                borderColor: '#46d5f1',
                                hoverBackgroundColor: '#BBBBBB',
                                hoverBorderColor: '#666666',
                                data: <?php echo $res_mis_cgpa; ?>
                            },
                            

                        ]
                    };

                    var graphTarget = $("#graphCanvas");

                    var barGraph = new Chart(graphTarget, {
                        type: 'bar',
                        data: chartdata,
                        options:{
                            scales: {
                            y: {
                            max: 4,
                            min: 0,
                            ticks: {
                            stepSize: 0.25
                                   }
                               }
                                    }
                                }
                    });
               
            }
        }
    </script>

						
						
						
						
<?php
	include("new_template_bottom.php");
?>