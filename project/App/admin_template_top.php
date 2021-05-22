<?php
	//session_start();
	// if(isset($_SESSION['user'])==false){
	// 	header("location: login.php");
	// }


?>

<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Analytics Dashboard - This is an example dashboard created using build-in elements and components.</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
    <meta name="description" content="This is an example dashboard created using build-in elements and components.">
    <meta name="msapplication-tap-highlight" content="no">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
 <script src="js/vendor/modernizr-2.8.3.min.js"></script>
 <style type="text/css">


#chart-container {
    width: 100%;
    height: auto;
}
</style>
<script type="text/javascript" src="scripts/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="scripts/Chart.min.js"></script>

	<link href="./main.css" rel="stylesheet">
	
</head>

<body>
    <div class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
    <!-- <div class="col-md-12"> -->
        
		<!-- Top Header Menu Starting Point -->
		<div class="app-header header-shadow">
            <div class="app-header__logo">
                <div class="logo-src"></div>
                <div class="header__pane ml-auto">
                    <div>
                        <button type="button" class="hamburger close-sidebar-btn hamburger--elastic" data-class="closed-sidebar">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
            </div>
            <div class="app-header__mobile-menu">
                <div>
                    <button type="button" class="hamburger hamburger--elastic mobile-toggle-nav">
                        <span class="hamburger-box">
                            <span class="hamburger-inner"></span>
                        </span>
                    </button>
                </div>
            </div>
            <div class="app-header__menu">
                <span>
                    <button type="button" class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
                        <span class="btn-icon-wrapper">
                            <i class="fa fa-ellipsis-v fa-w-6"></i>
                        </span>
                    </button>
                </span>
            </div>    
		
			<div class="app-header__content">
				<div class="app-header-right">
				<ul class="header-menu nav">
						<li class="nav-item">
                            <a href="http://www.iub.edu.bd/"target="_blank" class="nav-link">
                                <i class="nav-link-icon fa fa-globe opacity-16"></i>
                                IUB Web
                            </a>
						</li>
						
                        <li class="nav-item">
                            <a href="https://www.facebook.com/iub.edu/" target="_blank"class="nav-link">
                                <i class="nav-link-icon fa fa-user opacity-16"> </i>
                                IUB Social
                            </a>
                        </li>
                        
					</ul>
                    <div class="header-btn-lg pr-0">
                        <div class="widget-content p-0">
                            <div class="widget-content-wrapper">
                                <div class="widget-content-left">
                                    <div class="btn-group">
                                        <a data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="p-0 btn">
                                            <!-- <img width="42" class="rounded-circle" src="../Image/User/<?=$_SESSION['user']['picture']?>" alt=""> -->
                                            <i class="fa fa-angle-down ml-2 opacity-8"></i>
                                        </a>
                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu dropdown-menu-right">
                                            <button type="button" tabindex="0" class="dropdown-item"onclick="window.location.href='userProfile.php';">User Profile</button>
                                            <div tabindex="-1" class="dropdown-divider"></div>
											
                                            <button type="button" tabindex="0" class="dropdown-item" onclick="window.location.href='login.php';">Log Out</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="widget-content-left  ml-3 header-user-info">
                                    <div class="widget-heading">
                                        <!-- <?=$_SESSION['user']['uname']?> -->
                                    </div>
                                    <div class="widget-subheading">
                                        <!-- <?=$_SESSION['user']['dept']?> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>        
				</div>
            </div>
		</div> 
		
		
        
			<div class="app-main">
            	<!-- Main Body Side Bar Start Point -->
				<div class="app-sidebar sidebar-shadow">
                    <div class="app-header__logo">
                        <div class="logo-src"></div>
                        <div class="header__pane ml-auto">
                            <div>
                                <button type="button" class="hamburger close-sidebar-btn hamburger--elastic" data-class="closed-sidebar">
                                    <span class="hamburger-box">
                                        <span class="hamburger-inner"></span>
                                    </span>
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="app-header__mobile-menu">
                        <div>
                            <button type="button" class="hamburger hamburger--elastic mobile-toggle-nav">
                                <span class="hamburger-box">
                                    <span class="hamburger-inner"></span>
                                </span>
                            </button>
                        </div>
                    </div>
                    <div class="app-header__menu">
                        <span>
                            <button type="button" class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
                                <span class="btn-icon-wrapper">
                                    <i class="fa fa-ellipsis-v fa-w-6"></i>
                                </span>
                            </button>
                        </span>
                    </div>    
					
					<!--Side Bars-->
					<div class="scrollbar-sidebar">
                        <div class="app-sidebar__inner">
                            <ul class="vertical-nav-menu" >
							
								<!--Dashboard Info-->
								<li class="app-sidebar__heading">Dashboard</li>
								<li>
                                    <a href="admin_index.php" style="padding:0">
                                        <!-- <i class="metismenu-icon pe-7s-graph2"></i> -->
                                        Common Dashboard
                                    </a>
                                </li>
                                <li class="app-sidebar__heading">Report</li>
                                <!--fahim-->
								<li>
                                    <a href="coursewise.php" style="padding:0">
                                        <!-- <i class="metismenu-icon pe-7s-graph2"></i> -->
                                        Course Wise Student Performance
                                    </a>
                                </li>
                                <!--fidda-->
                                <li>
                                    <a href="studentEnrollmentComparison_pw.php" style="padding:0">
                                        <!-- <i class="metismenu-icon pe-7s-graph2"></i> -->
                                        Program Wise Student Enrollment
                                    </a>
                                </li>
                                <li>
                                    <a href="studentEnrollmentComparison_dw.php" style="padding:0">
                                        <!-- <i class="metismenu-icon pe-7s-graph2"></i> -->
                                        Department Wise Student Enrollment
                                    </a>
                                </li>
                                <li>
                                    <a href="studentEnrollmentComparison_sw.php" style="padding:0">
                                        <!-- <i class="metismenu-icon pe-7s-graph2"></i> -->
                                        School Wise Student Enrollment
                                    </a>
                                </li>
								<!--Niloy-->
                                <li>
                                    <a href="programwise.php" style="padding:0">
                                        <!-- <i class="metismenu-icon pe-7s-graph2"></i> -->
                                        Program Wise Student Performance
                                    </a>
                                </li>
                                <li>
                                    <a href="departmentwise.php" style="padding:0">
                                        <!-- <i class="metismenu-icon pe-7s-graph2"></i> -->
                                        Department Wise Student Performance
                                    </a>
                                </li>
                                <li>
                                    <a href="Schoolwise.php" style="padding:0">
                                        <!-- <i class="metismenu-icon pe-7s-graph2"></i> -->
                                        School Wise Student Performance
                                    </a>
                                </li>
                                <!--zahidul-->
                                <li>
                                    <a href="instructorwise.php" style="padding:0">
                                        <!-- <i class="metismenu-icon pe-7s-graph2"></i> -->
                                        Instructor Wise Student Performance
                                    </a>
                                </li>
                                					
								<!--Library Info-->
								<li class="app-sidebar__heading">Library</li>
								
								<li>
                                    <a href="studentList.php">
                                        <i class="metismenu-icon pe-7s-graph2"></i>
                                        Student List
                                    </a>
                                </li>
								
								
								
							</ul>
                        </div>
                    </div>
                </div>

                        
				

					
						
						
						
						
						
						