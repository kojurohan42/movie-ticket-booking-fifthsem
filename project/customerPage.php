<?php 
if (!session_id()) {
# code...
	session_start();
} 
include 'db.php';
?>
  
<!DOCTYPE html>
<html>
<head>
    <link href="block.css" rel='stylesheet' type='text/css' />
  <link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
  <link href="css/rotating-card.css" rel="stylesheet">
  <link href="css/style.css" rel="stylesheet">
  <link href="css/anotherDefault.css" rel="stylesheet">
</head>
<body>
  <?php 
  if (!empty($_SESSION['msg'])) {
    echo "
    <p style='font-family: cursive; text-align: center; color: #5c865c; font-size: 2vw;'>".$_SESSION['msg']."</p>
    ";
    $_SESSION['msg']="";
    $_SESSION['movieId']="";
  }

  ?><div class="container">

  <div  class="panel with-nav-tabs panel-success">
    <div class="panel-heading">
      <ul class="nav nav-tabs">
        <li class="active"><a href="#nowshowing" data-toggle="tab">Showing Now</a></li>
      </ul>
    </div>
    <div class="panel-body">
      <div class="tab-content">
        <div class="tab-pane fade in active" id="nowshowing">


          <?php 
          $count=0;
          $res=$conn->query("select * from movielist;");
          while ($row=$res->fetch_object()) {
             // $_SESSION['movie']=;

            if ($count==4) {
              echo "<div class='row'>";
              $count=0;
            }

            echo " 
            <div class='col-md-3 col-sm-12'>
              <div class='card-container'>
                <div class='card'>
                  <div class='front'>
                    <div class='cover'>
                      <img src='image/".$row->image."'/> 
                    </div>
                    <div class='content'>
                      <div class='main'>
                        <h3 class='name' style='color:black;'>".$row->Name ."</h3>

                        <p style='color:black;'><b>IMDB: </b>".$row->imdb."</p>

                        <p class='profession'><b>Genre: </b>".$row->Genre ."</p>

                        <p class='profession'><b>Director: </b> " .$row->Director ."</p>
                        

                      </div>
                    </div>
                  </div>
                  <!-- end front panel -->
                  <div class='back'>
                    <div class='content'>
                      <div class='main'>
                        <h4 class='text-center'>".$row->Name ."</h4>
                        <p class='text-center' style='color:#828384; font-size:15px;'>".$row->Description ." </p>
                      </div>
                      <div style='margin-top: 10vw;' class='buy_ticket'>

                       <form action='ticketProcessing.php' method='post' >
                        <input type='hidden' name='movieId' value='".$row->movieId."' >
                        <input type='submit'  class='btn btn-primary btn-xs btn-block' type='submit' value='Click to book ticket' name='submit'>
                      </form>

                    </div>
                  </div>
                </div> <!-- end card -->
              </div> <!-- end card-container -->
            </div>
          </div>";

          $count++;
        } ?>




      </div>
    </div>
  </div>
</div>
</div>

</div>
</div>
<div id="bottom">
<?php include 'footer.php'; ?>
</div>
</body>
</html>