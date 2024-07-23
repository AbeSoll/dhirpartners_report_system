<?php require_once('includes/session.php');
       require_once('includes/conn.php');
    
    $query = "SELECT department, count(id) as number FROM cases GROUP BY department";
    $result = mysqli_query($mysqli, $query);


?>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawStuff);

      function drawStuff() {
        var data = new google.visualization.arrayToDataTable([
          ['Department', 'Total issues from each department'],
          //["King's pawn (e4)", 44],
          //["Queen's pawn (d4)", 31],
          //["Knight to King 3 (Nf3)", 12],
          //["Queen's bishop pawn (c4)", 10],
          //['Other', 3]

          <?php
          while ($row = mysqli_fetch_array($result))
          {
            echo "['".$row["department"]."', ".$row["number"]."],";
          }
          ?>

        ]);

        var options = {
          width: 1220,
          legend: { position: 'none' },
          chart: {
            title: 'TOTAL REPORT ISSUES BY DEPARTMENT',
            subtitle: 'Total report' },
          axes: {
            x: {
              0: { side: 'top', label: 'DEPARTMENT'} // Top x-axis.
            }
          },
          bar: { groupWidth: "90%" }
        };

        var chart = new google.charts.Bar(document.getElementById('top_x_div'));
        // Convert the Classic options to Material options.
        chart.draw(data, google.charts.Bar.convertOptions(options));
      };
    </script>