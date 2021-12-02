

<!DOCTYPE html>
<html>
<head>  
  <link rel="stylesheet" type="text/css" href="css/registration.css">
  <style type="text/css">
    
    .MovieGenre{width: 100%;
      border: 1px solid #ccc;
      background: #FFF;
      margin: 0 0 5px;
      padding: 10px;
      font-style: normal;
      font-variant-ligatures: normal;
      font-variant-caps: normal;
      font-variant-numeric: normal;
      font-weight: 400;
      font-stretch: normal;
      font-size: 12px;
      line-height: 16px;
      font-family: Roboto, Helvetica, Arial, sans-serif;
      
    }
    body, html {
      height: 100%;
      margin: 0;
    }
    .container{width:40%;
          }
    .wrapper{
      text-align: center;
    }
    .bg { 
      /* The image used */
      background-image: url("img/addMovieBackground.jpg");
      width:100%;

      /* Full height */
      height: 100%; 

      /* Center and scale the image nicely */
      background-position: center;
      background-repeat: no-repeat;
      background-size: cover;
    }
  </style>
</head>

<body>
 <?php include('header.php') ?>
  <div class="bg">

    <div class="container">  
      <form id="contact" action="addmovie.php" method="post" enctype="multipart/form-data">
        <h2  style="text-align: center;    font-family: cursive"><b>Add Movie</b></h2>



        <input  name="MovieName" placeholder="Movie Name" type="text" tabindex="1" required autofocus>


        <select class="MovieGenre" name="Genre">
          <option value="Action">Action</option>
          <option value="Adventure">Adventure</option>
          <option value="Comedy">Comedy</option>
          <option value="Crime">Crime</option>
          <option value="Drama">Drama</option>
        </select>

        <input name="imdb" placeholder="imdb rating" type="text" tabindex="1" required>


        <input name="directorName" placeholder="Director" type="text" tabindex="1" required>

        <TEXTAREA name="description" placeholder="description" type="textArea" tabindex="1" required></TEXTAREA>


        <label>Poster 1:</label><input style="padding: 10px;" type="file" name="image" required autofocus><br>

        <label>Poster 2:</label><input style="padding: 10px;" type="file" name="image2" required autofocus>
        <input name="trailerLink" placeholder="Trailer Link" type="text" tabindex="1" required>
        <input style="font-size: larger;background-color: #c2fbb8;font-family: cursive;font-weight: bold;" 
        class="MovieGenre" type="submit" name="submit"> 
        <p class="copyright"></p>
        <p></p>


      </form>
      <div class="wrapper">
        <button class="btn btn-default" onclick="document.location.href='admin.php'" > <span class='glyphicon glyphicon-chevron-left'> </span>BACK TO THE ADMIN PAGE</button>
      </div>

    </div>

  </div>
</body>
</html> 
<?php 
if (isset($_POST['submit'] )&& !empty($_POST['submit']))

{
	
  $MovieName=$_POST['MovieName'];
  $Genre=$_POST['Genre'];
  $imdb=$_POST['imdb'];
  $Director=$_POST['directorName'];
  $Description=$_POST['description'];
    $target="image/".basename($_FILES['image']['name']);
    $image=$_FILES['image']['name'];
    $image_tmp=$_FILES['image']['tmp_name'];
    $image2=$_FILES['image2']['name'];
    $image_tmp2=$_FILES['image2']['tmp_name'];
    $trailerLink=$_POST['trailerLink'];
    echo "<script>alert('".$image2."');</script>";
  if (!(empty($MovieName) || empty($Genre) || empty($Director) || empty($Description)|| empty($imdb)))
  {
  
$sql="insert into movielist (Name, Genre, Director, Description, image, imdb, image2, trailerLink)values('$MovieName', '$Genre', '$Director', '$Description', '$image', '$imdb', '$image2', '$trailerLink')";
mysqli_query($conn, $sql);


      if(move_uploaded_file($image_tmp, $target))
      {
        //echo "<script>alert('Movie Successfully Added');</script>";
      }
      else{
        //echo "<script>alert('Movie failed to add');</script>";
      }
      if(move_uploaded_file($image_tmp2, $target))
      {
        //echo "<script>alert('Movie Successfully Added');</script>";
      }
      else{
        //echo "<script>alert('Movie failed to add');</script>";
      }

    $_SESSION['msg']="Movie Successfully Added";
    header ("Location: admin.php" );
    

  }
  

}
else{
  
}


?>






