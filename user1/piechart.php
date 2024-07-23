<?php require_once('includes/session.php');
       require_once('includes/conn.php');
    
    $query = "SELECT issues, count(id) as number FROM cases GROUP BY issues";
    $result = mysqli_query($mysqli, $query);


?>


    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Issues', 'Total Number'],
         // ['Work',     11],
          //['Eat',      2],
          //['Commute',  2],
          //['Watch TV', 2],
          //['Sleep',    7]

          <?php
          while ($row = mysqli_fetch_array($result))
          {
            echo "['".$row["issues"]."', ".$row["number"]."],";
          }
          ?>

        ]);

        var options = {
          title: 'Reported Issues'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>
