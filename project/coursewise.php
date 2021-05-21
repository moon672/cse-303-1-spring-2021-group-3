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
                                    <div>Course-wise student performance trend based on GPA with respect to semesters.</div>
                                </div>
							</div>
                        </div>
						
						<!-- Row 4 Start Point -->
                        <div class="row">
                            <div class="col-md-12">
                                <div class="main-card mb-3 card">
                                    <div class="card-header">Course-wise student performance trend
                                        <div class="btn-actions-pane-right">
                                            
                                        </div>
                                    </div>
                                    <div class="table-responsive">
                                        <table class="align-middle mb-0 table table-borderless table-striped table-hover">
                                            <thead>
                                            <tr>
                                            <th class="text-center">semester</th>
                                                <th class="text-center">course</th>                                                
                                                <th class="text-center">GPA</th>
                                                
                                            </tr>
                                            </thead>
                                            <tbody>
                                            
											

                                            <?php
                                                $user = 'root';
                                                $pass = '';
                                                $db = 'stuperformance';
                                                $dbConnect = new mysqli('localhost', $user, $pass, $db) or die("Unable to connect");

                                                
                                               
                                                $sql = "SELECT semesterid, courseid, (case when AVG(acivemark)>85 then 4.00  when AVG(acivemark)>80 then 3.75  when AVG(acivemark)>75 then 3.50 when AVG(acivemark)>70 then 3.25 when AVG(acivemark)>65 then 3.00 when AVG(acivemark)>60 then 2.75  when AVG(acivemark)>55 then 2.50 when AVG(acivemark)>50 then 2.25 when AVG(acivemark)>45 then 2.00 when AVG(acivemark)>40 then 1.75 else 1 end) as gpa
                                                FROM 
                                               
                                               (SELECT s.semesterid, c.courseid, s.studentid, SUM(sub.obtainedmark) as acivemark
                                               from tblassessment a, tblassessmentsubmission sub,tblstudent s,tblcourse c
                                               where a.assessmentid = sub.assessmentid AND sub.studentid= s.studentid AND s.programid= c.programid
                                               group by s.semesterid, c.courseid, s.studentid) 
                                               as Subquery 
                                               GROUP BY semesterid, courseid";
                                                $result = $dbConnect-> query($sql);
                                                $i=1;
                                                $array_courseid=array();
                                                $array_cse211_gpa=array();
                                                $array_cse303_gpa=array();
                                                $array_eee131_gpa=array();
                                                $array_eee132_gpa=array();
                                                $array_mis341_gpa=array();
                                                $array_mis441_gpa=array();
                                                $array_semesterid=array();
                                                
                                                if($result-> num_rows>0){
                                                    while($row = $result->fetch_assoc()){
                                                       
                                                       if(str_contains($row["courseid"],"CSE 211")){
                                                            array_push($array_cse211_gpa,$row["gpa"]);
                                                       }
                                                       if(str_contains($row["courseid"],"CSE 303")){
                                                        array_push($array_cse303_gpa,$row["gpa"]);
                                                       }
                                                       if(str_contains($row["courseid"],"EEE 131")){
                                                       array_push($array_eee131_gpa,$row["gpa"]);
                                                       }
                                                       if(str_contains($row["courseid"],"EEE 132")){
                                                       array_push($array_eee132_gpa,$row["gpa"]);
                                                       }
                                                       if(str_contains($row["courseid"],"MIS 341")){
                                                       array_push($array_mis341_gpa,$row["gpa"]);
                                                       }
                                                       if(str_contains($row["courseid"],"MIS 441")){
                                                       array_push($array_mis441_gpa,$row["gpa"]);
                                                       }
                                                        if (!array_key_exists($row["semesterid"],$array_semesterid)){
                                                            array_push($array_semesterid,$row["semesterid"]);
                                                        }
                                                       
                                                        echo "<tr>
                                                        <td class='text-center text-muted'>".$row["semesterid"]."</td>
                                                        
                                                        <td class='text-center'>".$row["courseid"]."</td>
                                                        <td class='text-center'>".$row["gpa"]."</td>
                                                        
                                                    </tr>";
                                                    $i++;
                                                    }
                                                    $res_courseid = json_encode($array_courseid);
                                                    $res_cse211_gpa = json_encode($array_cse211_gpa);
                                                    $res_cse303_gpa = json_encode($array_cse303_gpa);
                                                    $res_eee131_gpa = json_encode($array_eee131_gpa);
                                                    $res_eee132_gpa = json_encode($array_eee132_gpa);
                                                    $res_mis341_gpa = json_encode($array_mis341_gpa);
                                                    $res_mis441_gpa = json_encode($array_mis441_gpa);
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
                                label: 'CSE 211',
                                backgroundColor: '#49e2ff',
                                borderColor: '#46d5f1',
                                hoverBackgroundColor: '#CCCCCC',
                                hoverBorderColor: '#666666',
                                data: <?php echo $res_cse211_gpa; ?>
                            },
                            {
                                label: 'CSE 303',
                                backgroundColor: '#0000FF',
                                borderColor: '#46d5f1',
                                hoverBackgroundColor: '#F0F0F0',
                                hoverBorderColor: '#666666',
                                data: <?php echo $res_cse303_gpa; ?>
                            },
                            {
                                label: 'EEE 131',
                                backgroundColor: '#BBBBBB',
                                borderColor: '#46d5f1',
                                hoverBackgroundColor: '#BBBBBB',
                                hoverBorderColor: '#666666',
                                data: <?php echo $res_eee131_gpa; ?>
                            },
                            {
                                label: 'EEE 132',
                                backgroundColor: '#DDDDFF',
                                borderColor: '#46d5f1',
                                hoverBackgroundColor: '#DDDDDD',
                                hoverBorderColor: '#666666',
                                data: <?php echo $res_eee132_gpa; ?>
                            },
                            {
                                label: 'MIS 341',
                                backgroundColor: '#C010C0',
                                borderColor: '#46d5f1',
                                hoverBackgroundColor: '#0000FF',
                                hoverBorderColor: '#666666',
                                data: <?php echo $res_mis341_gpa; ?>
                            },
                            {
                                label: 'MIS 441',
                                backgroundColor: '#696969',
                                borderColor: '#46d5f1',
                                hoverBackgroundColor: '#FF0000',
                                hoverBorderColor: '#666666',
                                data: <?php echo $res_mis441_gpa; ?>
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
                            stepSize: 0.05
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