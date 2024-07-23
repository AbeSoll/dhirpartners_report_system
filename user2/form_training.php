<?php require_once('includes/session.php');
      require_once('includes/conn.php');

      if($_SESSION['permission']==2) {
        header("Location:../user1/dashboard.php");
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

        <title>D&P Intranet Web System | TR DEPT</title>

         <!-- Bootstrap CSS CDN -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <!-- Our Custom CSS -->
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/awesome/font-awesome.css">
        <link rel="stylesheet" href="assets/css/animate.css">
        <script src="https://kit.fontawesome.com/75c3dd07ff.js" crossorigin="anonymous"></script>
        <style>
            .btn-baik {
                color: #fff;
                background-color: #1b5eb8;
            }
            .btnn {
                display: inline-block;
                padding: 6px 12px;
                margin-bottom: 0;
                font-size: 14px;
                font-weight: 400;
                line-height: 1.42857143;
                text-align: center;
                white-space: nowrap;
                vertical-align: middle;
                -ms-touch-action: manipulation;
                touch-action: manipulation;
                cursor: pointer;
                -webkit-user-select: none;
                -moz-user-select: none;
                -ms-user-select: none;
                user-select: none;
                background-image: none;
                border: 1px solid transparent;
                border-radius: 4px;
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
                    <li>
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
                    <li class="active">
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

                            $sql_get = mysqli_query($mysqli,"SELECT * FROM mail WHERE status=0 AND (`sendTo` = 'all')");
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
                                if($_SESSION['permission']==3){
                            ?>
                                <li >
                                    <a href="compose_mail.php">
                                    <i class="fa-regular fa-paper-plane" style="color: gold;"></i>
                                    <span class="notify" id="count" style="color: gold;"><?php echo $countMail; ?></span>
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
                <?php
                    if($_SESSION['permission']==1 or $_SESSION['permission']==2){
                        ?>
                <div>
                <a href="a_trainingform.php" class="btn btn-warning"><span class="fa fa-plus"></span> Add Document</a> 
                </div><br>
                <?php }?>
                

                <div class="panel panel-default sammacmedia">
                    <div class="panel-heading">TRAINING FORM</div>
                    <div class="panel-body">
                        <table class="table table-striped thead-dark table-bordered table-hover" id="myTable">
                            <thead>
                               <tr>
                               
                            </thead>

                            <tr>
                                   

                                <th>No</th>
                                    <th>Title</th>
                                    <th><center>Type</center></th>
                                    <th><center>Uploaded Date</center></th>
                                    <th><center>Action</center></th> 
                                </tr>
                                <tr>
                                    <td>i</td> 
                                    <td>GOOGLE SITES TRAINING</td>
                                    <td><center>WEBSITE</center></td>
                                    <td><center>2022-12-22</center></td> 
                                    <td><center><a href="https://t.ly/-oQx" target="_blank" data-toggle="modal" class="btnn btn-baik"><span class="fa fa-external-link"></span> Open</a></center></td> 
                                </tr>
                                <tr>
                                    <td>ii</td> 
                                    <td>ATTENDANCE SHEET TRAINING</td>
                                    <td><center>GOOGLE FORM</center></td>
                                    <td><center>2022-12-22</center></td>
                                    <td><center><a href="https://docs.google.com/forms/d/e/1FAIpQLScx2XIUqSiF-dLPiPXY0vnDGwFG3YR-aaUHW9-7jVNyqv-HSQ/viewform" target="_blank" data-toggle="modal" class="btnn btn-baik"><span class="fa fa-external-link"></span> Open</a></center></td> 
                                </tr>
                                <tr>
                                    <td>iii</td> 
                                    <td>FOLLOW UP PROGRESS FORM</td>
                                    <td><center>GOOGLE FORM</center></td>
                                    <td><center>2022-12-22</center></td> 
                                    <td><center><a href="https://docs.google.com/forms/d/e/1FAIpQLScgcTcdkkw6eUh_CI8Xs6FiXj2ZBKTOVIzB4cwZH80NmDlZ6g/viewform" target="_blank" data-toggle="modal" class="btnn btn-baik"><span class="fa fa-external-link"></span> Open</a></center></td> 
                                </tr>
                                <tr>
                                    <td>iv</td> 
                                    <td>TRAINING NEED ANALYSIS FORM</td>
                                    <td><center>GOOGLE FORM</center></td>
                                    <td><center>2022-12-22</center></td> 
                                    <td><center><a href="https://docs.google.com/forms/d/e/1FAIpQLSdP6SdqNbQfg8jOBf5Oz3dnM4wdHH4ZlGrh-nHJiEGenY3ckQ/viewform" target="_blank" data-toggle="modal" class="btnn btn-baik"><span class="fa fa-external-link"></span> Open</a></center></td> 
                                </tr>
                                <tr>
                                    <td>v</td> 
                                    <td>PERFORMANCE IMPROVEMENT PLAN ACTION PLAN</td>
                                    <td><center>GOOGLE FORM</center></td>
                                    <td><center>2022-12-22</center></td>
                                    <td><center><a href="https://docs.google.com/forms/d/e/1FAIpQLSdL6YKbPMk7l5OSmQQKWgijIpcc0bLA2vDvSCzZh3YvdDKOgQ/viewform" target="_blank" data-toggle="modal" class="btnn btn-baik"><span class="fa fa-external-link"></span> Open</a></center></td> 
                                </tr>
                                <tr>
                                    <td>vi</td> 
                                    <td>PERFORMANCE MONITORING FORM (ADDENDUM)</td>
                                    <td><center>GOOGLE FORM</center></td>
                                    <td><center>2022-12-22</center></td> 
                                    <td><center><a href="https://docs.google.com/forms/d/e/1FAIpQLSdZf5pqf3ik8gqwd0V8xbD1BH3vgxJOKVLJ1-R3AvStmy-uuQ/viewform" target="_blank" data-toggle="modal" class="btnn btn-baik"><span class="fa fa-external-link"></span> Open</a></center></td> 
                                </tr>
                                <tr>
                                    <td>vii</td> 
                                    <td>PERFORMANCE MONITORING FORM (NEW)</td>
                                    <td><center>GOOGLE FORM</center></td>
                                    <td><center>2022-12-22</center></td> 
                                    <td><center><a href="https://docs.google.com/forms/d/e/1FAIpQLSdNewv0Hp8Ueo1lkmgXLOi-jJGIEK7cjXaDpFtaIBJ-BJ2slA/viewform" target="_blank" data-toggle="modal" class="btnn btn-baik"><span class="fa fa-external-link"></span> Open</a></center></td> 
                                </tr>
                                <tr>
                                    <td>viii</td> 
                                    <td>BORANG SEMAKAN SOAL SELIDIK DAN UJIAN PRE</td>
                                    <td><center>GOOGLE FORM</center></td>
                                    <td><center>2022-12-22</center></td> 
                                    <td><center><a href="https://docs.google.com/forms/d/e/1FAIpQLSeqi7iMjMYb_yo8gU6sRII3nKbiReXm2jKpGyIrbcjA8NmyEA/viewform" target="_blank" data-toggle="modal" class="btnn btn-baik"><span class="fa fa-external-link"></span> Open</a></center></td> 
                                </tr>
                                <tr>
                                    <td>ix</td> 
                                    <td>BORANG SEMAKAN SOAL SELIDIK DAN UJIAN POST</td>
                                    <td><center>GOOGLE FORM</center></td>
                                    <td><center>2022-12-22</center></td>
                                    <td><center><a href="https://docs.google.com/forms/d/e/1FAIpQLScBJ2_Su7WykGq-gIF8eQX9yfIWTfSlT_8Rc3tQMaXiF-3qYw/viewform" target="_blank" data-toggle="modal" class="btnn btn-baik"><span class="fa fa-external-link"></span> Open</a></center></td> 
                                </tr>

                                <tr>
                                    <td>x</td> 
                                    <td>HANDLE AGGRESIVE CUSTOMER</td>
                                    <td><center>VIDEO</center></td>
                                    <td><center>2023-4-4</center></td>
                                    <td><center><a href="https://drive.google.com/file/d/1amKxacqo2u3Ffg29gGBVwPq-qg4nQ5jb/view?usp=sharing" target="_blank" data-toggle="modal" class="btnn btn-baik"><span class="fa fa-external-link"></span> Open</a></center></td> 
                                </tr>

                                <tr>
                                    <td>xi</td> 
                                    <td>THE POWER OF ATTITUDE</td>
                                    <td><center>VIDEO</center></td>
                                    <td><center>2023-4-4</center></td>
                                    <td><center><a href="https://drive.google.com/file/d/1UIHgnMyOGyNbAs25042VFf7zUDhhZJwH/view?usp=share_link" target="_blank" data-toggle="modal" class="btnn btn-baik"><span class="fa fa-external-link"></span> Open</a></center></td> 
                                </tr>
                      

                            </thead>
                    <?php
                                   $a=1;
                    $query=mysqli_query($mysqli,"select *from `training` ");
                     while($row=mysqli_fetch_array($query))
                        {
                          
                          ?>

                          <tr>
                            <td><?php echo $a;?></td> 
                            <td><?php echo $row['title'];?></td>
                            <td><center><?php echo $row['type'];?></center></td>
                            <td><center><?php echo $row['date'];?></center></td>  
                            
                            <td>
                            <center>

                            <a href="form_training_view.php?view=1&id=<?php echo $row['id'];?>" target="_blank" data-toggle="modal" class="btn btn-warning"><span class="fa fa-eye"></span></a>   
                            <a href="form_training_dw.php?tmp=<?php echo $row['tmp'];?>" data-toggle="modal" class="btnn btn-baik" onclick="return confirm('Download Document?');"><span class="fa fa-download"></span></a>
                            <?php
                                if($_SESSION['permission']==1 or $_SESSION['permission']==2){
                            ?>
                            <a href="form_training.php?edited=1&idx=<?php echo $row['id']; ?>" data-toggle="modal" class="btn btn-danger" onclick="return confirm('Delete Document?');"><span class="fa fa-trash"></span></a> </center>
                            <?php }?> 
                            </td>
                            </tr>
                            <?php

                            $a++;
                      }
                       

          
                      if (isset($_GET['idx']) && is_numeric($_GET['idx']))
                      {
                          $id = $_GET['idx'];
                          if ($stmt = $mysqli->prepare("DELETE FROM training WHERE id = ? LIMIT 1"))
                          {
                              $stmt->bind_param("i",$id);
                              $stmt->execute();
                              $stmt->close();
                               ?>
                    <div class="alert alert-success strover" id="sams1">
                    <a href="#" class="close" data-dismiss="alert">&times;</a>
                    <strong> Successfully! </strong><?php echo'Record Successfully deleted please refresh this page';?></div>
               
                    <?php
                          }
                          else
                          {
                    ?>
                    <div class="alert alert-danger samuel" id="sams1">
                    <a href="#" class="close" data-dismiss="alert">&times;</a>
                    <strong> Danger! </strong><?php echo'OOPS please try again something went wrong';?></div>
                    <?php
                          }
                          $mysqli->close();

                      }
                else

                {

                }
                      ?>
                      
                        </table>
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
        <!-- jQuery CDN -->
         <script src="assets/js/jquery-1.10.2.js"></script>
         <!-- Bootstrap Js CDN -->
         <script src="assets/js/bootstrap.min.js"></script>
         <script src="vendors/ckeditor/sammacmedia.js"></script>

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
         <script type="text/javascript">

        $(document).ready(function () {
 
            window.setTimeout(function() {
        $("#sams1").fadeTo(1000, 0).slideUp(1000, function(){
        $(this).remove(); 
        });
            }, 5000);
 
        });
              ClassicEditor
                .create( document.querySelector( '#editor' ) )
                .then( editor => {
                console.log( editor );
		} )
                .catch( error => {
                console.error( error );
		} );
    </script>
    </body>
</html>

