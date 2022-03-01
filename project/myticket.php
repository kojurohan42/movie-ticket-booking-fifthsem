<?php
include 'header.php';
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <title>Ticket</title>
  <link rel="stylesheet" type="text/css" href="css/style2.css">
</head>

<body>
  <div class="main-div">
    <h3>Tickets</h3>
    <div class="center-div">
      <div class="content">
        <table>
          <thead>
            <tr>
              <th>Movie</th>
              <th>Date</th>
              <th>Theater</th>
              <th>TimeSlot</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>

            <?php
            $user = $_SESSION['username'];
            $sql = "SELECT showOrderId FROM hall WHERE username='$user' GROUP BY showOrderId";
            $query = mysqli_query($con, $sql);
            $nums = mysqli_num_rows($query);
            while ($res = mysqli_fetch_array($query)) {
              $id = $res['showOrderId'];
              $sqli = "SELECT * FROM showorder WHERE showOrderId='$id'";
              $qry = mysqli_query($con, $sqli);
              $nums = mysqli_num_rows($qry);
              while ($reso = mysqli_fetch_array($qry)) {
            ?>

                <tr>
                  <td><?php echo $reso['movieName'] ?></td>
                  <td><?php echo $reso['date'] ?></td>
                  <td><?php echo $reso['theater'] ?></td>
                  <td><?php echo $reso['timeslot'] ?></td>
                  <td><button class="btn"><a href="download.php?ids=<?php echo $reso['showOrderId'] ?>">Download</a> </button></td>
                </tr>
                <br>

            <?php
              }
            }
            ?>

          </tbody>
        </table>
      </div>
    </div>

  </div>

</body>

</html>