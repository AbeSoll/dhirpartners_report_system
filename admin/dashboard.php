<?php require_once('includes/session.php');
       require_once('includes/conn.php');
       require_once('check.php');   
       
       if($_SESSION['permission']==2) {
        header("Location:../user1/dashboard.php");
      }
      else if($_SESSION['permission']==3) {
        header("Location:../user2/dashboard.php");
      }
      else if($_SESSION['permission']==4){
        header("Location:../user_HR/dashboard.php");
      }

    


?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title>D&P Intranet Web System | DASHBOARD</title>

         <!-- Bootstrap CSS CDN -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <!-- Our Custom CSS -->
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/awesome/font-awesome.css">
        <link rel="stylesheet" href="assets/css/animate.css">
        <script src="https://kit.fontawesome.com/75c3dd07ff.js" crossorigin="anonymous"></script>

        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">


        <style>
           .slider{
            width: 800px;
            height: 500px;
            border-radius: 10px;
            overflow: hidden;
            }

            .slides{
            width: 500%;
            height: 500px;
            display: flex;
            }

            .slides input{
            display: none;
            }

            .slide{
            width: 20%;
            transition: 2s;
            }

            .slide img{
            width: 800px;
            height: 500px;
            }

            /*css for manual slide navigation*/

            .navigation-manual{
            position: absolute;
            width: 800px;
            margin-top: -40px;
            display: flex;
            justify-content: center;
            }

            .manual-btn{
            border: 2px solid #40D3DC;
            padding: 5px;
            border-radius: 10px;
            cursor: pointer;
            transition: 1s;
            }

            .manual-btn:not(:last-child){
            margin-right: 40px;
            }

            .manual-btn:hover{
            background: #40D3DC;
            }

            #radio1:checked ~ .first{
            margin-left: 0;
            }

            #radio2:checked ~ .first{
            margin-left: -20%;
            }

            #radio3:checked ~ .first{
            margin-left: -40%;
            }

            #radio4:checked ~ .first{
            margin-left: -60%;
            }

            /*css for automatic navigation*/

            .navigation-auto{
            position: absolute;
            display: flex;
            width: 800px;
            justify-content: center;
            margin-top: 460px;
            }

            .navigation-auto div{
            border: 2px solid #40D3DC;
            padding: 5px;
            border-radius: 10px;
            transition: 1s;
            }

            .navigation-auto div:not(:last-child){
            margin-right: 40px;
            }

            #radio1:checked ~ .navigation-auto .auto-btn1{
            background: #40D3DC;
            }

            #radio2:checked ~ .navigation-auto .auto-btn2{
            background: #40D3DC;
            }

            #radio3:checked ~ .navigation-auto .auto-btn3{
            background: #40D3DC;
            }

            #radio4:checked ~ .navigation-auto .auto-btn4{
            background: #40D3DC;
            }

            td {
            padding: 8px;
            font-size:16px;
            border: 1px solid;
            }

            th {
            background-color:#3869ab;
            color: white;
            text-align:center;
            padding: 8px;
            font-size:16px;
            border: 1px solid;

            }

            table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
            }

      
            tr:hover 
            {
            background-color: #f5f5f5;
            }

         

            .dataTables_filter {
                margin-bottom: 10px;
            }

            .page-break{
                page-break-before:always;
            }

            table.center {
            margin-left: auto; 
            margin-right: auto;
            }

            #button {
            display: inline-block;
            background-color: #FF9800;
            width: 50px;
            height: 50px;
            text-align: center;
            border-radius: 4px;
            position: fixed;
            bottom: 30px;
            right: 30px;
            transition: background-color .3s, 
                opacity .5s, visibility .5s;
            opacity: 0;
            visibility: hidden;
            z-index: 1000;
            }
            #button::after {
            content: "\f077";
            font-family: FontAwesome;
            font-weight: normal;
            font-style: normal;
            font-size: 2em;
            line-height: 50px;
            color: #fff;
            }
            #button:hover {
            cursor: pointer;
            background-color: #333;
            }
            #button:active {
            background-color: #555;
            }
            #button.show {
            opacity: 1;
            visibility: visible;
            }


        </style>
    </head>
    <body>

    <!-- Back to top button -->
<a id="button"></a>

        <div class="wrapper">
            <!-- Sidebar Holder -->
            <nav id="sidebar" class="sammacmedia">
                <div class="sidebar-header">  
                    <img src="assets/image/dnplogo.png" style="width:50px;height:50px;">
                    <div class="text-aku1">
                        <h3>D&P Intranet Web System</h3>
                        <strong>DRS</strong>
                    </div>
                </div>
                <ul class="list-unstyled components">
                    <li class="active">
                        <a href="dashboard.php">
                            <i class="fa fa-home"></i>
                           Dashboard
                        </a>
                    </li>
                    <?php
                    if($_SESSION['permission']==1){
                        
                    
                    ?>
                    <li>
                        <a href="a_employees.php">
                            <i class="fa fa-user-plus"></i>
                            Add Employees
                        </a>
                      
                    </li>
                    
                    <li>
                        <a href="all_employees.php">
                            <i class="fa fa-users"></i>
                           All Employees
                        </a>
                    </li>

                    <li>
                        <a href="compose_mail.php">
                            <i class="fa-regular fa-paper-plane"></i>
                            Compose Mail                        
                        </a>
                    </li>

                    <?php }?>
                    <li>
                        <a href="invest.php">
                            <i class="fa fa-link"></i>
                            Report Issues
                        </a>
                    </li>
                              <?php
                    if($_SESSION['permission']==1 or $_SESSION['permission']==2 ){
                        
                    
                    ?>

                    
                <li>
                        <a href="v_issueAll.php">
                            <i class="fa fa-table"></i>
                            View Issue All
                        </a>
                    </li>
                    <?php }?>
                             <?php
                    if($_SESSION['permission']==1){
                        
                    
                    ?>

                    <li>
                        <a href="v_issue.php">
                            <i class="fa fa-table"></i>
                            View Issues Muar
                        </a>
                    </li>
                    <?php }?>
                             <?php
                    if($_SESSION['permission']==1){
                        
                    
                    ?>

                    <li>
                        <a href="v_issueKL.php">
                            <i class="fa fa-table"></i>
                            View Issues KL
                        </a>
                    </li>
                    <?php }?>
                             <?php
                    if($_SESSION['permission']==1){
                        
                    
                    ?>

                  


                    <li>
                        <a href="a_users.php">
                            <i class="fa fa-user-plus"></i>
                            Add Users
                        </a>
                    </li>
                    <li >
                        <a href="v_users.php">
                            <i class="fa fa-id-card"></i>
                            View Users
                        </a>
                    </li>
                    <?php }?>
                    <li>
                        <a href="form_fa.php">
                            <i class="fa fa-folder-open-o"></i>
                            Facility Assets Dept
                        </a>
                    </li>
                    <li>
                        <a href="form_training.php">
                            <i class="fa fa-folder-open-o"></i>
                            Training Dept
                        </a>
                    </li>
                    <li>
                        <a href="form_it.php">
                            <i class="fa fa-folder-open-o"></i>
                            IT Dept
                        </a>
                    </li>
                    <li>
                        <a href="form_compliance.php">
                            <i class="fa fa-folder-open-o"></i>
                            Compliance Dept
                        </a>
                    </li>
                    <li>
                        <a href="form_hr.php">
                            <i class="fa fa-folder-open-o"></i>
                            HR Dept
                        </a>
                    </li>

                    <li>
                        <a href="form_finance.php">
                            <i class="fa fa-folder-open-o"></i>
                            Finance Dept
                        </a>
                    </li>

                    <li>
                        <a href="settings.php">
                            <i class="fa fa-cog"></i>
                            Settings
                        </a>
                    </li>
                </ul>
            </nav>

            <!-- Page Content Holder -->
            
            <div id="content">

           

            <?php
                            $sql_get = mysqli_query($mysqli,"SELECT * FROM cases WHERE status=0");
                            $count = mysqli_num_rows($sql_get);

                            $sql_get = mysqli_query($mysqli,"SELECT * FROM mail WHERE status=0 AND (`sendTo` = 'it' OR `sendTo` = 'all')");
                            $countMail = mysqli_num_rows($sql_get);


            ?>
                <div clas="col-md-12">
                    <img src="assets/image/line.png" class="img-thumbnail">
                    </div>
         
                
                <nav class="navbar navbar-default sammacmedia">
                    <div class="container-fluid">

                        <div class="navbar-header" id="sams">
                            
                        </div>

                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav navbar-right  makotasamuel">
                             <?php
                                if($_SESSION['permission']==1 or $_SESSION['permission']==2 ){
                            ?>
                             <li >
                                    <a href="compose_mail.php">
                                    <i class="fa-regular fa-paper-plane" style="color: gold;"></i>
                                    <span class="notify" id="count" style="color: gold;"><?php echo $countMail; ?></span>
                                    </a>
                                </li>

                                <li >
                                    <a href="v_issueAll.php">
                                    <i class="fa fa-envelope animated tada" style="color: gold;"></i>
                                    <span class="notify" id="count" style="color: gold;"><?php echo $count; ?></span>
                                    </a>
                                </li>
                            <?php }?>
                                <li><a href="#" style="color: #cfcfcf;"><?php require_once('includes/name.php');?></a></li>
                                <li ><a href="logout.php"><i class="fa fa-sign-out" style="color: red;"> Logout</i></a></li>
                            </ul>
                        </div>
                    </div>
                </nav>

                


                <div class="line"></div>
                <div class="row">
                <div class="col-lg-6 col-md-6 ">
                    <div class="panel panel sammac sammacmedia">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-4">
                                    <i class="fa fa-user fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge"><?php echo $users;?></div>
                                    <div>Total Number Of Users</div>
                                </div>
                            </div>
                        </div>
                       
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 g-danger">
                    <div class="panel panel strover sammacmedia">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-4">
                                    <i class="fa fa-link fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge"><?php echo $cases;?></div>
                                    <div>Total Number Of Reports</div>
                                </div>
                            </div>
                        </div>
                     
                    </div>
                </div>

                

                <center>NEW UPDATE!!</center>
                <br><center>
                    <!--image slider start-->
                <div class="slider">
                <div class="slides">
                    <!--radio buttons start-->
                    <input type="radio" name="radio-btn" id="radio1">
                    <input type="radio" name="radio-btn" id="radio2">


                    <!--radio buttons end-->
                    <!--slide images start-->

                    <div class="slide first">
                        <img src="assets/image/event16.png" alt="">
                    </div> 

                  
                  <div class="slide">
                        <img src="assets/image/event2.jpg" alt="">
                    </div> 

                  

                    <!--slide images end-->
                    <!--automatic navigation start-->
                    <div class="navigation-auto">
                        <div class="auto-btn1"></div>
                        <div class="auto-btn2"></div>

                       
                        
                    </div>
                    <!--automatic navigation end-->
                </div>
                <!--manual navigation start-->
                <div class="navigation-manual">
                    <label for="radio1" class="manual-btn"></label>
                    <label for="radio2" class="manual-btn"></label>

                 
                </div>
                <!--manual navigation end-->
                </div>
                <!--image slider end-->
                </center>

                <div class="line"></div>
            
                        <!---------- pie chart------->

          

                            <?php
                                $sql_get = mysqli_query($mysqli,"SELECT * FROM cases");
                                $countCases = mysqli_num_rows($sql_get);

                            ?>

                            <?php
                                $sql_get = mysqli_query($mysqli,"SELECT * FROM cases WHERE solve_name = 'MUHATHIR MAKHTAR (JHR190)'");
                                $countMuha = mysqli_num_rows($sql_get);

                                $sql_get = mysqli_query($mysqli,"SELECT * FROM cases WHERE solve_name2 = 'MUHATHIR MAKHTAR (JHR190)'");
                                $countMuha2 = mysqli_num_rows($sql_get);

                                $muha = $countMuha + $countMuha2;

                            ?>

                            <?php
                                $sql_get = mysqli_query($mysqli,"SELECT * FROM cases WHERE solve_name = 'HAIRUL NIZAM MOHD (JHR018)'");
                                $countNizam = mysqli_num_rows($sql_get);

                                $sql_get = mysqli_query($mysqli,"SELECT * FROM cases WHERE solve_name2 = 'HAIRUL NIZAM MOHD (JHR018)'");
                                $countNizam2 = mysqli_num_rows($sql_get);

                                $nizam = $countNizam + $countNizam2;

                            ?>

                        

                            <?php
                                $sql_get = mysqli_query($mysqli,"SELECT * FROM cases WHERE solve_name = 'MUHAMMAD WAFRIHAZIQ (JHRI010)'");
                                $countWafri = mysqli_num_rows($sql_get);

                                $sql_get = mysqli_query($mysqli,"SELECT * FROM cases WHERE solve_name2 = 'MUHAMMAD WAFRIHAZIQ (JHRI010)'");
                                $countWafri2 = mysqli_num_rows($sql_get);

                                $wafri = $countWafri + $countWafri2;

                            ?>
            <?php
            $issueTypes = [
                'Facility Assets Issue', 
                'Hardware Issue', 
                'Software Issue (PD)',
                'Software Issue (DDMS)',
                'Software Issue (OS/WINDOWS FAULTY)',
                'Microsoft Office Issue',
                'Printer Issue',
                'Network Issue',
                'Setup New PC',
                'DNPBACKUP Error',
                'SMS Issue'
            ];

            $sql = "SELECT * FROM cases WHERE MONTH(date) = '04'";
            $result = mysqli_query($mysqli, $sql);

            // count variable
            $count3 = mysqli_num_rows($result);

            $month = 0;
            $issues = 0;

            foreach ($issueTypes as $issueType) {
                $sqlMonth = "SELECT * FROM cases WHERE MONTH(date) = '04' AND issues = '$issueType'";
                $resultMonth = mysqli_query($mysqli, $sqlMonth);
                $monthVariable = "month" . (array_search($issueType, $issueTypes) + 1);
                $$monthVariable = mysqli_num_rows($resultMonth);

                $sqlIssues = "SELECT * FROM cases WHERE issues = '$issueType'";
                $resultIssues = mysqli_query($mysqli, $sqlIssues);
                $issuesVariable = "issues" . (array_search($issueType, $issueTypes) + 1);
                $$issuesVariable = mysqli_num_rows($resultIssues);

                $month += $$monthVariable;
                $issues += $$issuesVariable;
            }
            ?>



            <!--ISSUES/DEPARTMENT-->

            <!--ISSUES/DEPARTMENT (COUNT PER MONTH IN 2024)-->

            <?php
              $departments = [
                'COURTS', 'AEON WO', 'TM', 'DIGI', 'P1/WIMAX', 'CELCOM', 'CELCOM WO',
                'CARSOME', 'BMMB', 'AEON NPL', 'COOP BANK', 'CMS', 'AIQON AEON',
                'AIQON AMBANK', 'AIQON IKHLAS', 'AIQON ANGKASA', 'COLLECTIUS', 'COOP PERTAMA', 'SINGER NPL',
                'SINGER EAST', 'RHB', 'UUM', 'ANGKASA', 'BSNC', 'KOPUTRA', 'MARA',
                'BSN', 'HUMAN RESOURCE', 'ADMIN', 'FINANCE', 'COMPLIANCE', 'TRAINING', 'FACILITY ASSETS', 'INFORMATION TECHNOLOGY', 'DIGITAL MARKETING', 'MANAGEMENT/SLT'
            ];
                $monthDept = $Dept = 0;

                foreach ($departments as $department) {
                    $sqlMonth = "SELECT * FROM cases WHERE MONTH(date) = '04' AND department = '$department'";
                    $resultMonth = mysqli_query($mysqli, $sqlMonth);
                    $monthDeptVariable = "monthDept" . (array_search($department, $departments) + 1);
                    $$monthDeptVariable = mysqli_num_rows($resultMonth);

                    $sqlDept = "SELECT * FROM cases WHERE department = '$department'";
                    $resultDept = mysqli_query($mysqli, $sqlDept);
                    $DeptVariable = "Dept" . (array_search($department, $departments) + 1);
                    $$DeptVariable = mysqli_num_rows($resultDept);

                    $monthDept += $$monthDeptVariable;
                    $Dept += $$DeptVariable;
                }
                ?>


                    <?php

                    $solveName = 'MUHATHIR MAKHTAR (JHR190)';
                    $month = '04'; // Change this to the desired month

                    $issues = [
                        'Facility Assets Issue', 
                        'Hardware Issue', 
                        'Software Issue (PD)',
                        'Software Issue (DDMS)',
                        'Software Issue (OS/WINDOWS FAULTY)',
                        'Microsoft Office Issue',
                        'Printer Issue',
                        'Network Issue',
                        'Setup New PC',
                        'DNPBACKUP Error',
                        'SMS Issue'
                    ];

                    $muhaMonth = $MuhatotIssues = 0;

                    foreach ($issues as $index => $issue) {
                        $sql = "SELECT * FROM cases WHERE MONTH(date) = '$month' AND issues = '$issue' AND (solve_name = '$solveName' OR solve_name2 = '$solveName')";
                        $result = mysqli_query($mysqli, $sql);
                        ${"muha" . ($index + 1)} = mysqli_num_rows($result);

                        $sql = "SELECT * FROM cases WHERE issues = '$issue' AND (solve_name = '$solveName' OR solve_name2 = '$solveName')";
                        $result = mysqli_query($mysqli, $sql);
                        ${"Muhaissues" . ($index + 1)} = mysqli_num_rows($result);

                        $muhaMonth += ${"muha" . ($index + 1)};
                        $MuhatotIssues += ${"Muhaissues" . ($index + 1)};
                    }


                    ?>

                        
                    <?php

                    $solveName = 'HAIRUL NIZAM MOHD (JHR018)';
                    $month = '04'; // Change this to the desired month

                    $issues = [
                        'Facility Assets Issue', 
                        'Hardware Issue', 
                        'Software Issue (PD)',
                        'Software Issue (DDMS)',
                        'Software Issue (OS/WINDOWS FAULTY)',
                        'Microsoft Office Issue',
                        'Printer Issue',
                        'Network Issue',
                        'Setup New PC',
                        'DNPBACKUP Error',
                        'SMS Issue'
                    ];

                    $nizamMonth = $NizamtotIssues = 0;

                    foreach ($issues as $index => $issue) {
                        $sql = "SELECT * FROM cases WHERE MONTH(date) = '$month' AND issues = '$issue' AND (solve_name = '$solveName' OR solve_name2 = '$solveName')";
                        $result = mysqli_query($mysqli, $sql);
                        ${"nizam" . ($index + 1)} = mysqli_num_rows($result);

                        $sql = "SELECT * FROM cases WHERE issues = '$issue' AND (solve_name = '$solveName' OR solve_name2 = '$solveName')";
                        $result = mysqli_query($mysqli, $sql);
                        ${"Nizamissues" . ($index + 1)} = mysqli_num_rows($result);

                        $nizamMonth += ${"nizam" . ($index + 1)};
                        $NizamtotIssues += ${"Nizamissues" . ($index + 1)};
                    }


                    ?>

                     
               

                    <?php

                    $solveName = 'MUHAMMAD WAFRIHAZIQ (JHRI010)';
                    $month = '04'; // Change this to the desired month

                    $issues = [
                        'Facility Assets Issue', 
                        'Hardware Issue', 
                        'Software Issue (PD)',
                        'Software Issue (DDMS)',
                        'Software Issue (OS/WINDOWS FAULTY)',
                        'Microsoft Office Issue',
                        'Printer Issue',
                        'Network Issue',
                        'Setup New PC',
                        'DNPBACKUP Error',
                        'SMS Issue'
                    ];

                    $wafriMonth = $WafritotIssues = 0;

                    foreach ($issues as $index => $issue) {
                        $sql = "SELECT * FROM cases WHERE MONTH(date) = '$month' AND issues = '$issue' AND (solve_name = '$solveName' OR solve_name2 = '$solveName')";
                        $result = mysqli_query($mysqli, $sql);
                        ${"wafri" . ($index + 1)} = mysqli_num_rows($result);

                        $sql = "SELECT * FROM cases WHERE issues = '$issue' AND (solve_name = '$solveName' OR solve_name2 = '$solveName')";
                        $result = mysqli_query($mysqli, $sql);
                        ${"Wafriissues" . ($index + 1)} = mysqli_num_rows($result);

                        $wafriMonth += ${"wafri" . ($index + 1)};
                        $WafritotIssues += ${"Wafriissues" . ($index + 1)};
                    }


                    ?>



         
<div id = "testing">
                <center>
                    <div>
                        <div id="piechart" style="width: 100%; height: 700px;"><?php include('piechart.php') ?>
                    </div>

                   

                        <h4>Total Reported Issues  :  <?php echo $countCases; ?></h4>

                        <h4>Total Reported Issues in April/2024  :  <?php echo $count3; ?></h4>


                        <table class="center" style="border:1px solid black;  border-collapse: collapse">
                            <thead>
                                <tr>
                                <th  style="border:1px solid black;  border-collapse: collapse; background-color:#3869ab" scope="col">No</th>
                                <th  style="border:1px solid black;  border-collapse: collapse; background-color:#3869ab" scope="col">Issues</th>
                                <th  style="border:1px solid black;  border-collapse: collapse; background-color:#3869ab" scope="col">Total Issues (April 2024)</th>
                                <th  style="border:1px solid black;  border-collapse: collapse; background-color:#3869ab" scope="col">Total Issues</th>
                                </tr>
                            </thead>
                            <tbody>

                            <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">1</th>
                                    <td  style="border:1px solid black;  border-collapse: collapse">Facililty Assets Issue</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $month1; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $issues1; ?></td>
                                </tr>
                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">2</th>
                                    <td style="border:1px solid black;  border-collapse: collapse">Hardware Issue</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $month2; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $issues2; ?></td>
                                </tr>
                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">3</th>
                                    <td style="border:1px solid black;  border-collapse: collapse">Software Issue (PD)</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $month3; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $issues3; ?></td>
                                </tr>

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">4</th>
                                    <td style="border:1px solid black;  border-collapse: collapse">Software Issue (DDMS)</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $month4; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $issues4; ?></td>
                                </tr>

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">5</th>
                                    <td style="border:1px solid black;  border-collapse: collapse">Software Issue (OS/WINDOWS FAULTY)</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $month5; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $issues5; ?></td>
                                </tr>

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">6</th>
                                    <td style="border:1px solid black;  border-collapse: collapse">Microsoft Office Issue</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $month6; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $issues6; ?></td>
                                </tr>

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">7</th>
                                    <td style="border:1px solid black;  border-collapse: collapse">Printer Issue</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $month7; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $issues7; ?></td>
                                </tr>

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">8</th>
                                    <td style="border:1px solid black;  border-collapse: collapse">Network Issue</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $month8; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $issues8; ?></td>
                                </tr>

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">9</th>
                                    <td style="border:1px solid black;  border-collapse: collapse">Setup New PC</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $month9; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $issues9; ?></td>
                                </tr>

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">10</th>
                                    <td style="border:1px solid black;  border-collapse: collapse">DNPBACKUP Error</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $month10; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $issues10; ?></td>
                                </tr>

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">11</th>
                                    <td style="border:1px solid black;  border-collapse: collapse">SMS Issue</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $month11; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $issues11; ?></td>
                                </tr>

                               

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row"></th>
                                    <td style="background-color: #D6EEEE; border:1px solid black;  border-collapse: collapse">Total Reported Issue</td>
                                    <td style="text-align: center; background-color: #D6EEEE; border:1px solid black;  border-collapse: collapse">  <?php echo $count3; ?></td>
                                    <td style="text-align: center; background-color: #D6EEEE; border:1px solid black;  border-collapse: collapse">  <?php echo $count; ?></td>
                                </tr>
                            </tbody>
                        </table>

                 




                </center>

              

                
                <br>

                <div class="line"></div>

                <div>

                    <center>
                    <h4>Total Reported Issues By Department : <?php echo $Dept; ?> </h4>
                    <h4>Total Reported Issues By Department in April/2024 : <?php echo $monthDept; ?> </h4>


                    
                        <div id="top_x_div" style="width: 100%; height: 600px;"><?php include('barchart.php') ?></div>

                     

                </div>
                       
                        <br>
                    
                    <div>

                        <table class="center" style="border:1px solid black;  border-collapse: collapse">
                            <thead>
                                <tr>
                                <th style="border:1px solid black;  border-collapse: collapse; background-color:#3869ab" scope="col"></th>
                                <th style="border:1px solid black;  border-collapse: collapse; background-color:#3869ab" scope="col">Department</th>
                                <th style="border:1px solid black;  border-collapse: collapse; background-color:#3869ab" scope="col">Total Issues (April 2024)</th>
                                <th style="border:1px solid black;  border-collapse: collapse; background-color:#3869ab" scope="col">Total Issues</th>
                                </tr>
                            </thead>
                            <tbody>

                                <tr>
                                        <th style="border:1px solid black;  border-collapse: collapse" scope="row">1</th>
                                        <td style="border:1px solid black;  border-collapse: collapse">COURTS</td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $monthDept1; ?></td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Dept1; ?></td>
                                    </tr>
                                    <tr>
                                        <th  style="border:1px solid black;  border-collapse: collapse" scope="row">2</th>
                                        <td  style="border:1px solid black;  border-collapse: collapse" >AEON WO</td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $monthDept2; ?></td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Dept2; ?></td>
                                    </tr>
                                    <tr>
                                        <th  style="border:1px solid black;  border-collapse: collapse" scope="row">3</th>
                                        <td  style="border:1px solid black;  border-collapse: collapse" >TM</td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $monthDept3; ?></td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Dept3; ?></td>
                                    </tr>

                                    <tr>
                                        <th  style="border:1px solid black;  border-collapse: collapse"  scope="row">4</th>
                                        <td  style="border:1px solid black;  border-collapse: collapse" >DIGI</td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $monthDept4; ?></td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Dept4; ?></td>
                                    </tr>

                                    <tr>
                                        <th style="border:1px solid black;  border-collapse: collapse" scope="row">5</th>
                                        <td style="border:1px solid black;  border-collapse: collapse">P1/WIMAX</td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $monthDept5; ?></td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Dept5; ?></td>
                                    </tr>

                                    <tr>
                                        <th style="border:1px solid black;  border-collapse: collapse" scope="row">6</th>
                                        <td style="border:1px solid black;  border-collapse: collapse">CELCOM</td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $monthDept6; ?></td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Dept6; ?></td>
                                    </tr>

                                    <tr>
                                        <th style="border:1px solid black;  border-collapse: collapse" scope="row">7</th>
                                        <td style="border:1px solid black;  border-collapse: collapse">CELCOM WO</td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $monthDept7; ?></td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Dept7; ?></td>
                                    </tr>

                                    <tr>
                                        <th style="border:1px solid black;  border-collapse: collapse" scope="row">8</th>
                                        <td style="border:1px solid black;  border-collapse: collapse">CARSOME</td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $monthDept8; ?></td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Dept8; ?></td>
                                    </tr>

                                    <tr>
                                        <th style="border:1px solid black;  border-collapse: collapse" scope="row">9</th>
                                        <td style="border:1px solid black;  border-collapse: collapse">BMMB</td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $monthDept9; ?></td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Dept9; ?></td>
                                    </tr>

                                    <tr>
                                        <th style="border:1px solid black;  border-collapse: collapse" scope="row">10</th>
                                        <td style="border:1px solid black;  border-collapse: collapse">AEON NPL</td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $monthDept10; ?></td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Dept10; ?></td>
                                    </tr>

                                    <tr>
                                        <th style="border:1px solid black;  border-collapse: collapse" scope="row">11</th>
                                        <td style="border:1px solid black;  border-collapse: collapse">COOP BANK</td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $monthDept11; ?></td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Dept11; ?></td>
                                    </tr>

                                    <tr>
                                        <th style="border:1px solid black;  border-collapse: collapse"  scope="row">12</th>
                                        <td style="border:1px solid black;  border-collapse: collapse" >CMS</td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $monthDept12; ?></td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Dept12; ?></td>
                                    </tr>

                                    <tr>
                                        <th style="border:1px solid black;  border-collapse: collapse"  scope="row">13</th>
                                        <td style="border:1px solid black;  border-collapse: collapse" >AIQON AEON</td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $monthDept13; ?></td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Dept13; ?></td>
                                    </tr>

                                    <tr>
                                        <th style="border:1px solid black;  border-collapse: collapse"  scope="row">14</th>
                                        <td style="border:1px solid black;  border-collapse: collapse" >AIQON AMBANK</td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $monthDept14; ?></td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Dept14; ?></td>
                                    </tr>

                                    <tr>
                                        <th style="border:1px solid black;  border-collapse: collapse"  scope="row">15</th>
                                        <td style="border:1px solid black;  border-collapse: collapse" >AIQON IKHLAS</td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $monthDept15; ?></td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Dept15; ?></td>
                                    </tr>

                                    
                                    <tr>
                                        <th style="border:1px solid black;  border-collapse: collapse"  scope="row">16</th>
                                        <td style="border:1px solid black;  border-collapse: collapse" >AIQON ANGKASA</td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $monthDept16; ?></td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Dept16; ?></td>
                                    </tr>

                                    
                                    <tr>
                                        <th style="border:1px solid black;  border-collapse: collapse" scope="row">17</th>
                                        <td style="border:1px solid black;  border-collapse: collapse">COLLECTIUS</td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $monthDept17; ?></td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Dept17; ?></td>
                                    </tr>

                                    
                                    <tr>
                                        <th style="border:1px solid black;  border-collapse: collapse" scope="row">18</th>
                                        <td style="border:1px solid black;  border-collapse: collapse">COOP PERTAMA</td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $monthDept18; ?></td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Dept18; ?></td>
                                    </tr>

                                    <tr>
                                        <th style="border:1px solid black;  border-collapse: collapse" scope="row">19</th>
                                        <td style="border:1px solid black;  border-collapse: collapse">SINGER NPL</td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $monthDept19; ?></td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Dept19; ?></td>
                                    </tr>

                                    <tr>
                                        <th style="border:1px solid black;  border-collapse: collapse" scope="row">20</th>
                                        <td style="border:1px solid black;  border-collapse: collapse">SINGER EAST</td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $monthDept20; ?></td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Dept20; ?></td>
                                    </tr>

                                    <tr>
                                        <th style="border:1px solid black;  border-collapse: collapse" scope="row">21</th>
                                        <td style="border:1px solid black;  border-collapse: collapse">RHB BANK</td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $monthDept21; ?></td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Dept21; ?></td>
                                    </tr>

                                    <tr>
                                        <th style="border:1px solid black;  border-collapse: collapse" scope="row">22</th>
                                        <td style="border:1px solid black;  border-collapse: collapse">UUM</td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $monthDept22; ?></td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Dept22; ?></td>
                                    </tr>

                                    <tr>
                                        <th style="border:1px solid black;  border-collapse: collapse" scope="row">23</th>
                                        <td style="border:1px solid black;  border-collapse: collapse">ANGKASA</td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $monthDept23; ?></td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Dept23; ?></td>
                                    </tr>

                                    <tr>
                                        <th style="border:1px solid black;  border-collapse: collapse" scope="row">24</th>
                                        <td style="border:1px solid black;  border-collapse: collapse">BSNC</td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $monthDept24; ?></td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Dept24; ?></td>
                                    </tr>

                                    <tr>
                                        <th style="border:1px solid black;  border-collapse: collapse" scope="row">25</th>
                                        <td style="border:1px solid black;  border-collapse: collapse">KOPUTRA</td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $monthDept25; ?></td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Dept25; ?></td>
                                    </tr>

                                    <tr>
                                        <th style="border:1px solid black;  border-collapse: collapse" scope="row">26</th>
                                        <td style="border:1px solid black;  border-collapse: collapse">MARA</td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $monthDept26; ?></td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Dept26; ?></td>
                                    </tr>

                                    <tr>
                                        <th style="border:1px solid black;  border-collapse: collapse" scope="row">27</th>
                                        <td style="border:1px solid black;  border-collapse: collapse">BSN</td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $monthDept27; ?></td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Dept27; ?></td>
                                    </tr>

                                    <tr>
                                        <th style="border:1px solid black;  border-collapse: collapse" scope="row">28</th>
                                        <td style="border:1px solid black;  border-collapse: collapse">HUMAN RESOURCE</td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $monthDept28; ?></td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Dept28; ?></td>
                                    </tr>

                                    <tr>
                                        <th style="border:1px solid black;  border-collapse: collapse" scope="row">29</th>
                                        <td style="border:1px solid black;  border-collapse: collapse">ADMIN</td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $monthDept29; ?></td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Dept29; ?></td>
                                    </tr>

                                    <tr>
                                        <th style="border:1px solid black;  border-collapse: collapse" scope="row">30</th>
                                        <td style="border:1px solid black;  border-collapse: collapse">FINANCE</td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $monthDept30; ?></td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Dept30; ?></td>
                                    </tr>

                                    <tr>
                                        <th style="border:1px solid black;  border-collapse: collapse" scope="row">31</th>
                                        <td style="border:1px solid black;  border-collapse: collapse">COMPLIANCE</td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $monthDept31; ?></td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Dept31; ?></td>
                                    </tr>

                                    <tr>
                                        <th style="border:1px solid black;  border-collapse: collapse" scope="row">32</th>
                                        <td style="border:1px solid black;  border-collapse: collapse">TRAINING</td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $monthDept32; ?></td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Dept32; ?></td>
                                    </tr>

                                    <tr>
                                        <th style="border:1px solid black;  border-collapse: collapse" scope="row">33</th>
                                        <td style="border:1px solid black;  border-collapse: collapse">FACILITY ASSETS</td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $monthDept33; ?></td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Dept33; ?></td>
                                    </tr>

                                    <tr>
                                        <th style="border:1px solid black;  border-collapse: collapse" scope="row">34</th>
                                        <td style="border:1px solid black;  border-collapse: collapse">INFORMATION TECHNOLOGY</td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $monthDept34; ?></td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Dept34; ?></td>
                                    </tr>

                                    <tr>
                                        <th style="border:1px solid black;  border-collapse: collapse" scope="row">35</th>
                                        <td style="border:1px solid black;  border-collapse: collapse">DIGITAL MARKETING</td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $monthDept35; ?></td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Dept35; ?></td>
                                    </tr>

                                    <tr>
                                        <th style="border:1px solid black;  border-collapse: collapse" scope="row">36</th>
                                        <td style="border:1px solid black;  border-collapse: collapse">MANAGEMENT/SLT</td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $monthDept36; ?></td>
                                        <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Dept36; ?></td>
                                    </tr>


                                    <tr>
                                        <th style="border:1px solid black;  border-collapse: collapse" scope="row"></th>
                                        <td style="background-color: #D6EEEE; border:1px solid black;  border-collapse: collapse">Total Reported Issue</td>
                                        <td style="text-align: center; background-color: #D6EEEE; border:1px solid black;  border-collapse: collapse">  <?php echo $monthDept; ?></td>
                                        <td style="text-align: center; background-color: #D6EEEE; border:1px solid black;  border-collapse: collapse">  <?php echo $Dept; ?></td>
                                    </tr>



                                </tbody>
                        </table>
                                </div>

                    </center>

            
                    <br>

                    <div class="line"></div>

                <center>

                    <h3>TOTAL REPORTED ISSUES SOLVED BY IT STAFF</h3>

                    <br>

                    <br>
                    
                    <h4>NAME: Muhathir Makhtar</h4>

                    <h4>EMPLOYEE ID: JHR190

                    <h4>SOLVED REPORTED ISSUES  :  <?php echo $muha; ?></h4>

                    <table class="center" style="border:1px solid black;  border-collapse: collapse">
                            <thead>
                                <tr>
                                <th style="border:1px solid black;  border-collapse: collapse; background-color:#3869ab" scope="col">No</th>
                                <th style="border:1px solid black;  border-collapse: collapse; background-color:#3869ab" scope="col">Issues (Solved by En Muhathir Makhtar)</th>
                                <th style="border:1px solid black;  border-collapse: collapse; background-color:#3869ab" scope="col">Total Solved Issues (April 2024)</th>
                                <th style="border:1px solid black;  border-collapse: collapse; background-color:#3869ab" scope="col">Total Solved Issues</th>
                                </tr>
                            </thead>
                            <tbody>

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row"></th>
                                    <td style="border:1px solid black;  border-collapse: collapse">Facility Assets Issue</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $muha1; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Muhaissues1; ?></td>
                                </tr>
                           
                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">1</th>
                                    <td style="border:1px solid black;  border-collapse: collapse">Hardware Issue</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $muha2; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Muhaissues2; ?></td>
                                </tr>

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">2</th>
                                    <td style="border:1px solid black;  border-collapse: collapse">Software Issue (PD)</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $muha3; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Muhaissues3; ?></td>
                                </tr>

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">3</th>
                                    <td style="border:1px solid black;  border-collapse: collapse">Software Issue (DDMS)</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $muha4; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Muhaissues4; ?></td>
                                </tr>

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">4</th>
                                    <td style="border:1px solid black;  border-collapse: collapse">Software Issue (OS/WINDOWS FAULTY)</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $muha5; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Muhaissues5; ?></td>
                                </tr>

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">5</th>
                                    <td style="border:1px solid black;  border-collapse: collapse">Microsoft Office Issue</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $muha6; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Muhaissues6; ?></td>
                                </tr>

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">6</th>
                                    <td style="border:1px solid black;  border-collapse: collapse">Printer Issue</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $muha7; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Muhaissues7; ?></td>
                                </tr>

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">7</th>
                                    <td style="border:1px solid black;  border-collapse: collapse">Network Issue</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $muha8; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Muhaissues8; ?></td>
                                </tr>

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">8</th>
                                    <td style="border:1px solid black;  border-collapse: collapse">Setup New PC</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $muha9; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Muhaissues9; ?></td>
                                </tr>

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">9</th>
                                    <td style="border:1px solid black;  border-collapse: collapse">DNPBACKUP Error</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $muha10; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Muhaissues10; ?></td>
                                </tr>

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">10</th>
                                    <td style="border:1px solid black;  border-collapse: collapse">SMS Issue</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $muha11; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Muhaissues11; ?></td>
                                </tr>

                              

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row"></th>
                                    <td style="background-color: #D6EEEE; border:1px solid black;  border-collapse: collapse">Total Solved Reported Issue</td>
                                    <td style="text-align: center; background-color: #D6EEEE; border:1px solid black;  border-collapse: collapse">  <?php echo $muhaMonth; ?></td>
                                    <td style="text-align: center; background-color: #D6EEEE; border:1px solid black;  border-collapse: collapse">  <?php echo $muha; ?></td>
                                </tr>
                            </tbody>
                        </table>
                       
                    <br>

                        <div class="line"></div>

                        <h4>NAME: Hairul Nizam Mohd</h4>

                        <h4>EMPLOYEE ID: JHR018

                        <h4>SOLVED REPORTED ISSUES  :  <?php echo $nizam; ?></h4>



                        <table class="center" style="border:1px solid black;  border-collapse: collapse">
                            <thead>
                                <tr>
                                <th style="border:1px solid black;  border-collapse: collapse; background-color:#3869ab" scope="col">No</th>
                                <th style="border:1px solid black;  border-collapse: collapse; background-color:#3869ab" scope="col">Issues (Solved by Hairul Nizam Mohd)</th>
                                <th style="border:1px solid black;  border-collapse: collapse; background-color:#3869ab" scope="col">Total Solved Issues (April 2024)</th>
                                <th style="border:1px solid black;  border-collapse: collapse; background-color:#3869ab" scope="col">Total Solved Issues</th>
                                </tr>
                            </thead>
                            <tbody>

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row"></th>
                                    <td style="border:1px solid black;  border-collapse: collapse">Facility Assets Issue</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $nizam1; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Nizamissues1; ?></td>
                                </tr>
                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">1</th>
                                    <td style="border:1px solid black;  border-collapse: collapse" >Hardware Issue</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $nizam2; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Nizamissues2; ?></td>
                                </tr>
                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">2</th>
                                    <td style="border:1px solid black;  border-collapse: collapse">Software Issue (PD)</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $nizam3; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Nizamissues3; ?></td>
                                </tr>

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">3</th>
                                    <td style="border:1px solid black;  border-collapse: collapse">Software Issue (DDMS)</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $nizam4; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Nizamissues4; ?></td>
                                </tr>

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">4</th>
                                    <td style="border:1px solid black;  border-collapse: collapse">Software Issue (OS/WINDOWS FAULTY)</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $nizam5; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Nizamissues5; ?></td>
                                </tr>

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">5</th>
                                    <td style="border:1px solid black;  border-collapse: collapse">Microsoft Office Issue</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $nizam6; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Nizamissues6; ?></td>
                                </tr>

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">6</th>
                                    <td style="border:1px solid black;  border-collapse: collapse">Printer Issue</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $nizam7; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Nizamissues7; ?></td>
                                </tr>

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">7</th>
                                    <td style="border:1px solid black;  border-collapse: collapse">Network Issue</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $nizam8; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Nizamissues8; ?></td>
                                </tr>

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">8</th>
                                    <td style="border:1px solid black;  border-collapse: collapse">Setup New PC</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $nizam9; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Nizamissues9; ?></td>
                                </tr>

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">9</th>
                                    <td style="border:1px solid black;  border-collapse: collapse">DNPBACKUP Error</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $nizam10; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Nizamissues10; ?></td>
                                </tr>

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">10</th>
                                    <td style="border:1px solid black;  border-collapse: collapse">SMS Issue</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $nizam11; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Nizamissues11; ?></td>
                                </tr>

                              
                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row"></th>
                                    <td style="background-color: #D6EEEE; border:1px solid black;  border-collapse: collapse">Total Solved Reported Issue</td>
                                    <td style="text-align: center; background-color: #D6EEEE; border:1px solid black;  border-collapse: collapse">  <?php echo $nizamMonth; ?></td>
                                    <td style="text-align: center; background-color: #D6EEEE; border:1px solid black;  border-collapse: collapse">  <?php echo $nizam; ?></td>
                                </tr>
                            </tbody>
                        </table>

                        <br>

                        <div class="line"></div>

                        <h4>NAME: MUHAMMAD WAFRIHAZIQ</h4>

                        <h4>EMPLOYEE ID: JHRI010

                        <h4>SOLVED REPORTED ISSUES  :  <?php echo $wafri; ?></h4>



                        <table class="center" style="border:1px solid black;  border-collapse: collapse">
                            <thead>
                                <tr>
                                <th style="border:1px solid black;  border-collapse: collapse; background-color:#3869ab" scope="col">No</th>
                                <th style="border:1px solid black;  border-collapse: collapse; background-color:#3869ab" scope="col">Issues (Solved by Muhammad Wafrihaziq)</th>
                                <th style="border:1px solid black;  border-collapse: collapse; background-color:#3869ab" scope="col">Total Solved Issues (April 2024)</th>
                                <th style="border:1px solid black;  border-collapse: collapse; background-color:#3869ab" scope="col">Total Solved Issues</th>
                                </tr>
                            </thead>
                            <tbody>

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row"></th>
                                    <td style="border:1px solid black;  border-collapse: collapse">Facility Assets Issue</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $wafri1; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Wafriissues1; ?></td>
                                </tr>

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">1</th>
                                    <td style="border:1px solid black;  border-collapse: collapse" >Hardware Issue</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $wafri2; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Wafriissues2; ?></td>
                                </tr>
                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">2</th>
                                    <td style="border:1px solid black;  border-collapse: collapse">Software Issue (PD)</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $wafri3; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Wafriissues3; ?></td>
                                </tr>

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">3</th>
                                    <td style="border:1px solid black;  border-collapse: collapse">Software Issue (DDMS)</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $wafri4; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Wafriissues4; ?></td>
                                </tr>

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">4</th>
                                    <td style="border:1px solid black;  border-collapse: collapse">Software Issue (OS/WINDOWS FAULTY)</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $wafri5; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Wafriissues5; ?></td>
                                </tr>

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">5</th>
                                    <td style="border:1px solid black;  border-collapse: collapse">Microsoft Office Issue</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $wafri6; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Wafriissues6; ?></td>
                                </tr>

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">6</th>
                                    <td style="border:1px solid black;  border-collapse: collapse">Printer Issue</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $wafri7; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Wafriissues7; ?></td>
                                </tr>

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">7</th>
                                    <td style="border:1px solid black;  border-collapse: collapse">Network Issue</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $wafri8; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Wafriissues8; ?></td>
                                </tr>

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">8</th>
                                    <td style="border:1px solid black;  border-collapse: collapse">Setup New PC</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $wafri9; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Wafriissues9; ?></td>
                                </tr>

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">9</th>
                                    <td style="border:1px solid black;  border-collapse: collapse">DNPBACKUP Error</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $wafri10; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Wafriissues10; ?></td>
                                </tr>

                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row">10</th>
                                    <td style="border:1px solid black;  border-collapse: collapse">SMS Issue</td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $wafri11; ?></td>
                                    <td style="text-align: center; border:1px solid black;  border-collapse: collapse">  <?php echo $Wafriissues11; ?></td>
                                </tr>

                             


                                <tr>
                                    <th style="border:1px solid black;  border-collapse: collapse" scope="row"></th>
                                    <td style="background-color: #D6EEEE; border:1px solid black;  border-collapse: collapse">Total Solved Reported Issue</td>
                                    <td style="text-align: center; background-color: #D6EEEE; border:1px solid black;  border-collapse: collapse">  <?php echo $wafriMonth; ?></td>
                                    <td style="text-align: center; background-color: #D6EEEE; border:1px solid black;  border-collapse: collapse">  <?php echo $wafri; ?></td>
                                </tr>
                            </tbody>
                        </table>


                       
                    <br>

                   


                </center>

            </div>

        
             <!-- <div align="center">
                    <form method="post" id="make_pdf" action="create_pdf.php">
                        <input type="hidden" name="hidden_html" id="hidden_html" />
                        <button type="button" name="create_pdf" id="create_pdf" class="btn btn-warning">Generate PDF</button>
                    </form>
                </div> -->
            
            </div>    

          <div class="line"></div> 

                <footer>
            <p class="text-center">
            Ahmad Solehin & Nur Elinadira &copy;<?php echo date("Y ");?>Copyright. Dhir & Partners Sdn Bhd    
            </p>
            </footer>
            </div>
            
        </div>



        

        
        <script type="text/javascript">
            var counter = 1;
            setInterval(function(){
            document.getElementById('radio' + counter).checked = true;
            counter++;
            if(counter > 10){
                counter = 1;
            }
            }, 5000);
        </script>


        <!-- jQuery CDN -->
         <script src="assets/js/jquery-1.10.2.js"></script>
         <!-- Bootstrap Js CDN -->
         <script src="assets/js/bootstrap.min.js"></script>

         <script type="text/javascript">
             $(document).ready(function () {
                 $('#sidebarCollapse').on('click', function () {
                     $('#sidebar').toggleClass('active');
                 });
             });
             $('sams').on('click', function(){
                 $('makota').addClass('animated tada');
             });
         </script>

            <script>
                $(document).ready(function(){
                    $('#create_pdf').click(function(){
                    $('#hidden_html').val($('#testing').html());
                    $('#make_pdf').submit();
                });
                });
            </script>

            <script>
                var btn = $('#button');

                $(window).scroll(function() {
                if ($(window).scrollTop() > 300) {
                    btn.addClass('show');
                } else {
                    btn.removeClass('show');
                }
                });

                btn.on('click', function(e) {
                e.preventDefault();
                $('html, body').animate({scrollTop:0}, '300');
                });
            </script>

    </body>
</html>
