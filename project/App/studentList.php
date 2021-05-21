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
                                            <div role="group" class="btn-group-sm btn-group">
                                                <button class="active btn btn-focus">Pending</button>
                                                <button class="btn btn-focus">Completed</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="table-responsive">
                                        <table class="align-middle mb-0 table table-borderless table-striped table-hover">
                                            <thead>
                                            <tr>
                                                <th class="text-center">Serial</th>
                                                <th>Name</th>
                                                <th class="text-center">Department</th>
                                                
                                            </tr>
                                            </thead>
                                            <tbody>
                                            
											

                                            <?php
                                                $user = 'root';
                                                $pass = '';
                                                $db = 'studentPerformance';
                                                $dbConnect = new mysqli('localhost', $user, $pass, $db) or die("Unable to connect");

                                                
                                                $sql = "SELECT cStudentID, cStudentName, tdept.cDepartmentName from tblstudent tstudent JOIN tbldepartment tdept ON tstudent.cDepartmentID = tdept.cDepartmentID";
                                                $result = $dbConnect-> query($sql);
                                                $i=1;
                                                if($result-> num_rows>0){
                                                    while($row = $result->fetch_assoc()){
                                                       // echo "<tr> yes </tr>";
                                                        echo "<tr>
                                                        <td class='text-center text-muted'>".$i."</td>
                                                        <td>
                                                            <div class='widget-content p-0'>
                                                                <div class='widget-content-wrapper'>
                                                                    <div class='widget-content-left mr-3'>
                                                                        <div class='widget-content-left'>
                                                                            <img width='40' class='rounded-circle' src='../Image/sample/user.jpg' alt=''>
                                                                        </div>
                                                                    </div>
                                                                    <div class='widget-content-left flex2'>
                                                                        <div class='widget-heading'>".$row["cStudentName"] ."</div>
                                                                        <div class='widget-subheading opacity-7'>ID: ".$row["cStudentID"] ."</div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td class='text-center'>".$row["cDepartmentName"]."</td>
                                                        
                                                    </tr>";
                                                    $i++;
                                                    }
                                                }
                                            ?>
                                            
											
											
                                           
                                            
                                            </tbody>
                                        </table>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
						
						
						
						
<?php
	include("new_template_bottom.php");
?>