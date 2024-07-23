<?php require_once('includes/session.php');
       require_once('includes/conn.php');
       require_once('check.php');    

       if($_SESSION['permission']==3) {
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
        </style>
    </head>
    <body>
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
                    <?php }?>

                    
                    <li>
                        <a href="compose_mail.php">
                            <i class="fa-regular fa-paper-plane"></i>
                            Compose Mail                        
                        </a>
                    </li>

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
                        <a href="v_issue.php">
                            <i class="fa fa-table"></i>
                            View Issues
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

                            $sql_get = mysqli_query($mysqli,"SELECT * FROM mail WHERE status=0 AND (`sendTo` = 'fa' OR `sendTo` = 'all')");
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
                                    <a href="v_issue.php">
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
                 <!-- <input type="radio" name="radio-btn" id="radio2"> -->

                   
                    <!--radio buttons end-->
                    <!--slide images start-->
                  
                    <div class="slide first">
                        <img src="../admin/assets/image/event16.png" alt="">
                    </div>
                    
                    <div class="slide">
                        <img src="../admin/assets/image/event2.jpg" alt="">
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
            <div>
                <center>
                <div>
                    <div id="piechart" style="width: 1220px; height: 500px;"><?php include('piechart.php') ?></div>
                </div>
                </center><br>
                <center>
                <div>
                    <div id="top_x_div" style="width: 1220px; height: 600px;"><?php include('barchart.php') ?></div>
                </div>
                </center>
            </div>
            
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
    </body>
</html>
