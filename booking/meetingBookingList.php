<?php require_once('includes/session.php');
      require_once('includes/conn.php');

     
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title>D&P Intranet Web System | REPORT</title>

         <!-- Bootstrap CSS CDN -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <!-- Our Custom CSS -->
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/awesome/font-awesome.css">
        <link rel="stylesheet" href="assets/css/animate.css">

        <!-- Our Custom CSS Select dropdown -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/css/bootstrap-select.min.css">
        
        <script src="https://kit.fontawesome.com/75c3dd07ff.js" crossorigin="anonymous"></script>
        <style>

            .register{
                min-height:100vh;
                width:100%;
                padding:10px;
                background:#023047;
            }

            .invest-text{
                text-align: justify;
                color: black;
                font-size: 1.4rem;
                display: -webkit-box;
                -webkit-line-clamp: 10;
                -webkit-box-orient: vertical;
                overflow: hidden;
                text-overflow: ellipsis;
                margin: 20px 0px;
            }
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

    <section class="register">


           

            <!-- Page Content Holder -->
            
            
                
                    <div class="container-fluid">

                      

                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav navbar-right  makotasamuel">
                             <?php
                                if($_SESSION['permission']==1 or $_SESSION['permission']==2 ){
                            ?>

                               

                              
                            <?php }?>
                                
                            </ul>
                        </div>
                    </div>
                </nav>



                </div>
                
                <br>
		        <div class="panel panel-default sammacmedia">
                    <div class="panel-heading">Meeting Room Booking List</div>
                    <div class="panel-body">
                        <table class="table table-striped thead-dark table-bordered table-hover" id="example">
                            <thead>
                                <tr>
                                    <th style="text-align: center">No</th>
                                    <th style="text-align: center">Employee ID</th>
                                    <th style="text-align: center">Name</th>
                                    <th style="text-align: center">Phone</th>
                                    <th style="text-align: center">Department</th>
                                    <th style="text-align: center">Room Selection</th>
                                    <th style="text-align: center">Purpose</th>
                                    <th style="text-align: center">Date</th>
                                    <th style="text-align: center">Time</th>

                    </tr>
                            </thead>
                    <?php
                                   $a=1;
                    $query=mysqli_query($mysqli,"SELECT * FROM `meetingbooking`");
                     while($row=mysqli_fetch_array($query))
                        {
                          
                          ?>
                          <tr>
                            <td  style="text-align: center"><?php echo $a;?></td> 
                            <td  style="text-align: center"><?php echo $row['employee_id'];?></td>
                            <td style="text-align: center"><?php echo $row['name'];?></td>
                            <td style="text-align: center"><?php echo $row['phone'];?></td>
                            <td style="text-align: center"><?php echo $row['department'];?></td>
                            <td style="text-align: center"><?php echo $row['room'];?></td>
                            <td style="text-align: center"><?php echo $row['purpose'];?></td>
                            <td style="text-align: center"><?php echo $row['date'];?></td>
                            <td style="text-align: center"><?php echo $row['time'];?></td>
                           
                        </td>  


                          
                          </tr>
                          <?php
                         require('userInfos.php');
                        ;
                            $a++;
                      }
                       

          
                   
                      ?>
              
               
                </table>

              
            
      

     </section>

      
        <!-- search dropdown-->
        

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js"></script>
        

        <script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/js/bootstrap-select.min.js"></script>
        <script src="assets/js/script_saya.js">

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
