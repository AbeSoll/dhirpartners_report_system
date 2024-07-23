<html>
    <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Malaysia Research Institute for Vocational Education & Training</title>
        <link rel="Stylesheet" href="style.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@700&family=Koulen&family=Oleo+Script+Swash+Caps&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
        <script src="https://kit.fontawesome.com/c93f14d0e6.js" crossorigin="anonymous"></script>
    </head>


<body>


<?php require_once('includes/session.php');
      require_once('includes/conn.php');
$error=""; 
$message = "Too Short";  

$id="";
$employee_id="";
$date="";
$issues="";
$notes="";
$case_num="";
$status="";


if(isset($_POST['btnsave']))
{
    $id=$_POST['txtid']; 
    $employee_id=$_POST['txtemployee_id'];
    $date=$_POST['txtldate']; 
    $issues=$_POST['txtissues']; 
    $notes=$_POST['txtnotes']; 
    $case_num=$_POST['txtcase_num'];
    $status=$_POST['txtstatus'];

    //compare textbox1 vs 2 

    if(strlen($employee_id)<4)
    {
        echo("<SCRIPT LANGUAGE='JavaScript'>
        window.alert('$message')</SCRIPT>");

        exit();
    }
}

//check id for delete
if(isset($_GET['read'])){
    $sql="UPDATE cases SET status = 1 where id='{$_GET['id']}' ";
    $result=$mysqli->query($sql);
    if($result)
    {
        {
            echo "
            <script>
            alert('Status changed');
                document.location.href = 'v_issue.php';
            </script>
        ";
            header('Refresh:0;v_issue.php');
        }
    }
}
?>



</body>
</html>
