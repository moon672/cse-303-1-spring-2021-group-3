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
                                    <div>User Profile</div>
                                </div>
							</div>
                        </div>

							<div class="main-card mb-3 card">
										<div class="card-body">
											<div class="form-row">
											
                                                <div class="col-md-4">
												<!--
													<div class="form-row">
														<div class="widget-heading">Status: <b>APPROVED</b></div>
													</div>
													<br>
												-->
												<!--	<div class="form-row"> -->
														<div class="widget-content mr-3">
															<img height="185" width="190" src="../Image/User/<?=$_SESSION['user']['picture']?>" alt="">
														</div>
												<!--	</div> -->
												</div>
												
                                                <div class="col-md-3">
                                                    <div class="widget-heading"><b>Student Name :</b></div>
													<div tabindex="-1" class="dropdown-divider"></div>
													<div class="widget-subheading"><b>Student ID :</b></div>
													<div tabindex="-1" class="dropdown-divider"></div>
													<div class="widget-subheading"><b>Department :</b></div>
													<div tabindex="-1" class="dropdown-divider"></div>
													<div class="widget-subheading"><b>Mobile :</b></div>
													<div tabindex="-1" class="dropdown-divider"></div>
													<div class="widget-subheading"><b>Email :</b></div>
													<div tabindex="-1" class="dropdown-divider"></div>
												</div>
												
												<div class="col-md-5">
													<div class="widget-heading"><?=$_SESSION['user']['name']?></div>
													<div tabindex="-1" class="dropdown-divider"></div>
													<div class="widget-subheading"><?=$_SESSION['user']['student_id']?></div>
													<div tabindex="-1" class="dropdown-divider"></div>
													<div class="widget-subheading"><?=$_SESSION['user']['dept']?></div>
													<div tabindex="-1" class="dropdown-divider"></div>
													<div class="widget-subheading"><?=$_SESSION['user']['mobile']?></div>
													<div tabindex="-1" class="dropdown-divider"></div>
													<div class="widget-subheading"><?=$_SESSION['user']['email']?></div>
													<div tabindex="-1" class="dropdown-divider"></div>
												</div>
                                            </div>
											
												<div class="col-md-12">
													<div class="main-card mb-3 card">
														<div class="card-body">
															<div class="card-title" align= "Center">Student Summary</div>
															<div class="row">
																<div class="col-md-6 col-xl-6">
																	<a href="#">
																		<div class="card mb-3 widget-content">
																			<div class="widget-content-outer">
																				<div class="widget-content-wrapper">
																					<div class="widget-content-left">
																						<div class="widget-heading">Subject/Semester 01</div>
																						<div class="widget-subheading">Last Updated: 20 July 2020</div>
																					</div>
																					<div class="widget-content-right">
																						<div class="widget-numbers text-danger">PENDING</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</a>
																</div>
																<div class="col-md-6 col-xl-6">
																	<a href="#">
																		<div class="card mb-3 widget-content">
																			<div class="widget-content-outer">
																				<div class="widget-content-wrapper">
																					<div class="widget-content-left">
																						<div class="widget-heading">Subject/Semester 02</div>
																						<div class="widget-subheading">Last Updated: 25 July 2020</div>
																					</div>
																					<div class="widget-content-right">
																						<div class="widget-numbers text-success">DONE</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</a>
																</div>
															</div> 
															
															<div class="row">
																<div class="col-md-6 col-xl-6">
																	<a href="#">
																		<div class="card mb-3 widget-content">
																			<div class="widget-content-outer">
																				<div class="widget-content-wrapper">
																					<div class="widget-content-left">
																						<div class="widget-heading">Subject/Semester 03</div>
																						<div class="widget-subheading">Last Updated: 17 July 2020</div>
																					</div>
																					<div class="widget-content-right">
																						<div class="widget-numbers text-success">DONE</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</a>
																</div>
																<div class="col-md-6 col-xl-6">
																	
																		<div class="card mb-3 widget-content">
																			<div class="widget-content-outer">
																				<div class="widget-content-wrapper">
																					<div class="widget-content-left">
																						<div class="widget-heading">Subject/Semester 04</div>
																						<div class="widget-subheading">Last Updated: NULL</div>
																					</div>
																					<div class="widget-content-right">
																						<div class="widget-numbers text-muted">N/A</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	
																</div>
															</div> 
															
															<div class="row">
																<div class="col-md-6 col-xl-6">
																	
																		<div class="card mb-3 widget-content">
																			<div class="widget-content-outer">
																				<div class="widget-content-wrapper">
																					<div class="widget-content-left">
																						<div class="widget-heading">Subject/Semester 05</div>
																						<div class="widget-subheading">Last Updated: NULL</div>
																					</div>
																					<div class="widget-content-right">
																						<div class="widget-numbers text-muted">N/A</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	
																</div>
																<div class="col-md-6 col-xl-6">
																	
																		<div class="card mb-3 widget-content">
																			<div class="widget-content-outer">
																				<div class="widget-content-wrapper">
																					<div class="widget-content-left">
																						<div class="widget-heading">Subject/Semester 06</div>
																						<div class="widget-subheading">Last Updated: NULL</div>
																					</div>
																					<div class="widget-content-right">
																						<div class="widget-numbers text-muted">N/A</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	
																</div>
															</div> 
															
															<div class="d-block text-center card-footer">
																<a href="marksheet.php">
																	<button class="btn-wide btn btn-success">View Full Report</button>
																</a>
															</div>
															
															
															
														</div>
													</div>
												</div>
											 
											</div>
                                            </div>
											

						
<?php
	include("new_template_bottom.php");
?>