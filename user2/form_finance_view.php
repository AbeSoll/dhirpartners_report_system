<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>D&P Reporting Web System | FINANCE DEPT</title>
    <style media="screen">
      embed{
        border: 2px solid black;
        margin-top: 30px;
      }
      .div1{
        margin-left: 35px;
      }
    </style>
  </head>
  <body>
    <div class="div1">
      <?php
      require_once('includes/session.php');
      require_once('includes/conn.php');

        if(isset($_GET['view']))
        {

            $sql="SELECT tmp from finance  where id='{$_GET['id']}'";
            $query=mysqli_query($mysqli,$sql);
            while ($info=mysqli_fetch_array($query)) {
            ?>
            <embed type="application/pdf" src="../admin/assets/document/finance/<?php echo $info['tmp'] ; ?>" width="1200" height="700">
          
        <?php
            }
        }

      ?>

    </div>

  </body>
</html>
