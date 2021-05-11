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
                                                <th class="text-center">Status</th>
                                                <th class="text-center">Actions</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            
											<tr>
                                                <td class="text-center text-muted">01</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="../Image/sample/user.jpg" alt="">
                                                                </div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">Student 01</div>
                                                                <div class="widget-subheading opacity-7">ID: 00112233</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">CSE</td>
                                                <td class="text-center">
                                                    <div class="badge badge-warning">Pending</div>
                                                </td>
                                                <td class="text-center">
													<button type="button" id="PopoverCustomT-1" class="btn btn-primary btn-sm">Approve</button>
                                                    <a href="userProfile.php">
														<button type="button" id="PopoverCustomT-1" class="btn btn-primary btn-sm">Details</button>
													</a>
                                                </td>
                                            </tr>
											
											<tr>
                                                <td class="text-center text-muted">02</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="../Image/sample/user.jpg" alt="">
                                                                </div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">Student 02</div>
                                                                <div class="widget-subheading opacity-7">ID: 00223344</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">CSE</td>
                                                <td class="text-center">
                                                    <div class="badge badge-warning">Pending</div>
                                                </td>
                                                <td class="text-center">
													<button type="button" id="PopoverCustomT-1" class="btn btn-primary btn-sm">Approve</button>
                                                    <a href="userProfile.php">
														<button type="button" id="PopoverCustomT-1" class="btn btn-primary btn-sm">Details</button>
													</a>
                                                </td>
                                            </tr>
											
											<tr>
                                                <td class="text-center text-muted">03</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="../Image/sample/user.jpg" alt="">
                                                                </div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">Student 03</div>
                                                                <div class="widget-subheading opacity-7">ID: 00112233</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">EE</td>
                                                <td class="text-center">
                                                    <div class="badge badge-warning">Pending</div>
                                                </td>
                                                <td class="text-center">
													<button type="button" id="PopoverCustomT-1" class="btn btn-primary btn-sm">Approve</button>
                                                    <a href="userProfile.php">
														<button type="button" id="PopoverCustomT-1" class="btn btn-primary btn-sm">Details</button>
													</a>
                                                </td>
                                            </tr>
											
											<tr>
                                                <td class="text-center text-muted">04</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="../Image/sample/user.jpg" alt="">
                                                                </div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">Student 04</div>
                                                                <div class="widget-subheading opacity-7">ID: 00556699</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">ENV</td>
                                                <td class="text-center">
                                                    <div class="badge badge-success">Completed</div>
                                                </td>
                                                <td class="text-center">
													<button type="button" id="PopoverCustomT-1" class="btn btn-primary btn-sm">Approve</button>
                                                    <a href="userProfile.php">
														<button type="button" id="PopoverCustomT-1" class="btn btn-primary btn-sm">Details</button>
													</a>
                                                </td>
                                            </tr>
                                           
                                            
                                            </tbody>
                                        </table>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
						<!-- Row 4 End Point -->
						
						
						
<?php
	include("new_template_bottom.php");
?>