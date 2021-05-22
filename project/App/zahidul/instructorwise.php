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
                                    <div>Instructor-wise student performance trend based on GPA with respect to semesters.</div>
                                </div>
							</div>
                        </div>
						
						<!-- Row 4 Start Point -->
                        <div class="row">
                            <div class="col-md-12">
                                <div class="main-card mb-3 card">
                                    <div class="card-header">Instructor-wise student performance trend
                                        <div class="btn-actions-pane-right">
                                            
                                        </div>
                                    </div>
                                    <div class="table-responsive">
                                        <table class="align-middle mb-0 table table-borderless table-striped table-hover">
                                            <thead>
                                            <tr>
                                            <th class="text-center">semester</th>
                                                <th class="text-center">faculty</th>                                                
                                                <th class="text-center">GPA</th>
                                                
                                            </tr>
                                            </thead>
                                            <tbody>
                                            
											

                                            <?php
                                                $user = 'root';
                                                $pass = '';
                                                $db = 'stuperformance';
                                                $dbConnect = new mysqli('localhost', $user, $pass, $db) or die("Unable to connect");

                                                
                                               
                                                $sql = "SELECT semesterid, facultyid, SUM(gpa)/count(studentid) as gpa FROM
                                                (SELECT semesterid, facultyid, studentid, SUM(gpa)/count(courseid) as gpa from
                                                (SELECT sec.semesterid, faculty.facultyid, student.studentid, course.courseid, (case when SUM(obtainedmark)>90 then 4.0 when SUM(obtainedmark)>85 then 3.7 when SUM(obtainedmark)>80 then 3.3 when SUM(obtainedmark)>75 then 3.0 when SUM(obtainedmark)>70 then 2.7 when SUM(obtainedmark)>65 then 2.3 when SUM(obtainedmark)>60 then 2.0 when SUM(obtainedmark)>55 then 1.7 when SUM(obtainedmark)>50 then 1.3 when SUM(obtainedmark)>45 then 1.0 else 0.0 end) as gpa 
                                                FROM tblsection sec
                                                JOIN tblcourse course on sec.courseid = course.courseid
                                                JOIN tblfaculty faculty on sec.facultyid = faculty.facultyid
                                                JOIN tblco co on co.courseid = course.courseid
                                                JOIN tblassessment assess on co.coid = assess.coid
                                                JOIN tblassessmentsubmission submission on assess.assessmentid = submission.assessmentid
                                                JOIN tblstudent student on submission.studentid = student.studentid
                                                GROUP BY sec.semesterid, faculty.facultyid, student.studentid, course.courseid) as subquery
                                                GROUP BY semesterid, facultyid, studentid) as subquery2
                                                GROUP BY semesterid, facultyid";
                                                $result = $dbConnect-> query($sql);
                                                $i=1;
                                                $array_facultyid=array();
                                                $array_12345_gpa=array();
                                                $array_12346_gpa=array();
                                                $array_12347_gpa=array();
                                                $array_12348_gpa=array();
                                                $array_12349_gpa=array();
                                                
                                                $array_semesterid=array();
                                                
                                                if($result-> num_rows>0){
                                                    while($row = $result->fetch_assoc()){
                                                       
                                                       if(str_contains($row["facultyid"],"12345")){
                                                            array_push($array_12345_gpa,$row["gpa"]);
                                                       }
                                                       if(str_contains($row["facultyid"],"12346")){
                                                        array_push($array_12346_gpa,$row["gpa"]);
                                                       }
                                                       if(str_contains($row["facultyid"],"12347")){
                                                       array_push($array_12347_gpa,$row["gpa"]);
                                                       }
                                                       if(str_contains($row["facultyid"],"12348")){
                                                       array_push($array_12348_gpa,$row["gpa"]);
                                                       }
                                                       if(str_contains($row["facultyid"],"12349")){
                                                       array_push($array_12349_gpa,$row["gpa"]);
                                                       }
                                                       
                                                        if (!array_key_exists($row["semesterid"],$array_semesterid)){
                                                            array_push($array_semesterid,$row["semesterid"]);
                                                        }
                                                       
                                                        echo "<tr>
                                                        <td class='text-center text-muted'>".$row["semesterid"]."</td>
                                                        
                                                        <td class='text-center'>".$row["facultyid"]."</td>
                                                        <td class='text-center'>".$row["gpa"]."</td>
                                                        
                                                    </tr>";
                                                    $i++;
                                                    }
                                                    $res_facultyid = json_encode($array_facultyid);
                                                    $res_12345_gpa = json_encode($array_12345_gpa);
                                                    $res_12346_gpa = json_encode($array_12346_gpa);
                                                    $res_12347_gpa = json_encode($array_12347_gpa);
                                                    $res_12348_gpa = json_encode($array_12348_gpa);
                                                    $res_12349_gpa = json_encode($array_12349_gpa);
                           
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
                                label: '12345',
                                backgroundColor: '#49e2ff',
                                borderColor: '#46d5f1',
                                hoverBackgroundColor: '#CCCCCC',
                                hoverBorderColor: '#666666',
                                data: <?php echo $res_12345_gpa; ?>
                            },
                            {
                                label: '12346',
                                backgroundColor: '#0000FF',
                                borderColor: '#46d5f1',
                                hoverBackgroundColor: '#F0F0F0',
                                hoverBorderColor: '#666666',
                                data: <?php echo $res_12346_gpa; ?>
                            },
                            {
                                label: '12347',
                                backgroundColor: '#BBBBBB',
                                borderColor: '#46d5f1',
                                hoverBackgroundColor: '#BBBBBB',
                                hoverBorderColor: '#666666',
                                data: <?php echo $res_12347_gpa; ?>
                            },
                            {
                                label: '12348',
                                backgroundColor: '#DDDDFF',
                                borderColor: '#46d5f1',
                                hoverBackgroundColor: '#DDDDDD',
                                hoverBorderColor: '#666666',
                                data: <?php echo $res_12348_gpa; ?>
                            },
                            {
                                label: '12349',
                                backgroundColor: '#C010C0',
                                borderColor: '#46d5f1',
                                hoverBackgroundColor: '#0000FF',
                                hoverBorderColor: '#666666',
                                data: <?php echo $res_12349_gpa; ?>
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