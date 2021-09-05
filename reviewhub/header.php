<?php
  //echo "<h1>" .  . "</h1>";
  include "config.php";

  $page = basename($_SERVER['PHP_SELF']);

  switch($page){
    case "single.php":
      if(isset($_GET['id'])){
        $sql_title = "SELECT * FROM post WHERE post_id = {$_GET['id']}";
        $result_title = mysqli_query($conn,$sql_title) or die("Tile Query Failed");
        $row_title = mysqli_fetch_assoc($result_title);
        $page_title = $row_title['title'];
      }else{
        $page_title = "No Post Found";
      }
      break;

    case "genre.php":
      if(isset($_GET['gid'])){
        $sql_title = "SELECT * FROM genre WHERE genre_id = {$_GET['gid']}";
        $result_title = mysqli_query($conn,$sql_title) or die("Tile Query Failed");
        $row_title = mysqli_fetch_assoc($result_title);
        $page_title = $row_title['genre_name'] . "| ReviewHub";
      }else{
        $page_title = "No Post Found";
      }
      break;

    case "author.php":
      if(isset($_GET['aid'])){
        $sql_title = "SELECT * FROM user WHERE user_id = {$_GET['aid']}";
        $result_title = mysqli_query($conn,$sql_title) or die("Tile Query Failed");
        $row_title = mysqli_fetch_assoc($result_title);
        $page_title = "Review By " .$row_title['first_name'] . " " . $row_title['last_name'];
      }else{
        $page_title = "No Post Found";
      }
      break;

    case "search.php":
      if(isset($_GET['search'])){

        $page_title = $_GET['search'];
      }else{
        $page_title = "No Search Result Found";
      }
      break;

    default :
      $sql_title = "SELECT websitename FROM settings";
      $result_title = mysqli_query($conn,$sql_title) or die("Tile Query Failed");
      $row_title = mysqli_fetch_assoc($result_title);
      $page_title = $row_title['websitename'];
      break;
  }

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title><?php echo $page_title; ?></title>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
        integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
    <!-- Custom stlylesheet -->
    <link rel="stylesheet" href="css/style.css">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <!-- favicon -->
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
</head>

<body>
    <!-- HEADER -->
    <div id="header">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <!-- LOGO -->
                <div class=" col-md-offset-4 col-md-4">
                    <?php

                  include "config.php";

                  $sql = "SELECT * FROM settings";

                  $result = mysqli_query($conn, $sql) or die("Query Failed.");
                  if(mysqli_num_rows($result) > 0){
                    while($row = mysqli_fetch_assoc($result)) {
                      if($row['logo'] == ""){
                        echo '<a href="index.php"><h1>'.$row['websitename'].'</h1></a>';
                      }else{
                        echo '<a href="index.php" id="logo"><img src="admin/images/'. $row['logo'] .'"></a>';
                      }

                    }
                  }
                  ?>
                </div>
                <!-- /LOGO -->
            </div>
        </div>
    </div>
    <!-- /HEADER -->
    <!-- Menu Bar -->
    <div id="menu-bar">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <?php
                  include "config.php";
                  $live_search = "http://localhost/reviewhub/live-search.php";

                  if(isset($_GET['gid'])){
                    $genre_id = $_GET['gid'];
                  }

                  $sql = "SELECT * FROM genre WHERE post > 0";
                  $result = mysqli_query($conn, $sql) or die("Query Failed. : genre");
                  if(mysqli_num_rows($result) > 0){
                    $active = "";
                ?>
                    <ul class='menu'>
                        <li><a href='<?php echo $hostname; ?>'>Home</a></li>
                        <li><a href='<?php echo $live_search; ?>'>Live Search</a></li>
                        <?php 
                      while($row = mysqli_fetch_assoc($result)) {
                        if(isset($_GET['gid'])){
                          if($row['genre_id'] == $genre_id){
                            $active = "active";
                          }else{
                            $active = "";
                          }
                        }
                        echo "<li><a class='{$active}' href='genre.php?gid={$row['genre_id']}'>{$row['genre_name']}</a></li>";
                      } 
                    ?>
                    </ul>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>
    <!-- /Menu Bar -->