<?php
include "config.php";

if(empty($_FILES['new-image']['name'])){
  $new_name = $_POST['old_image'];
}else{
  $errors = array();

  $file_name = $_FILES['new-image']['name'];
  $file_size = $_FILES['new-image']['size'];
  $file_tmp = $_FILES['new-image']['tmp_name'];
  $file_type = $_FILES['new-image']['type'];
  $file_ext = end(explode('.',$file_name));

  $extensions = array("jpeg","jpg","png");

  if(in_array($file_ext,$extensions) === false)
  {
    $errors[] = "This extension file not allowed, Please choose a JPG or PNG file.";
  }

  if($file_size > 2097152){
    $errors[] = "File size must be 2mb or lower.";
  }

  if($file_size > 2097152){
    $errors[] = "File size must be 2mb or lower.";
  }
  $new_name = time(). "-".basename($file_name);
  $target = "upload/".$new_name;
  $image_name = $new_name;
  if(empty($errors) == true){
    move_uploaded_file($file_tmp, $target);
  }else{
    print_r($errors);
    die();
  }
}

// if(isset($_POST['submit'])){
//   include "config.php";

//   $userid =mysqli_real_escape_string($conn,$_POST['user_id']);
//   $fname =mysqli_real_escape_string($conn,$_POST['f_name']);
//   $lname = mysqli_real_escape_string($conn,$_POST['l_name']);
//   $user = mysqli_real_escape_string($conn,$_POST['username']);
//   $role = mysqli_real_escape_string($conn,$_POST['role']);

//   $sql = "UPDATE user SET first_name = '{$fname}', last_name = '{$lname}', username = '{$user}', role = '{$role}' WHERE user_id = {$userid}";

//     if(mysqli_query($conn,$sql)){
//       header("Location: {$hostname}/admin/users.php");
//     }
// }

$title = mysqli_real_escape_string($conn, $_POST['title']);
$description = mysqli_real_escape_string($conn, $_POST['description']);
$genre = mysqli_real_escape_string($conn, $_POST['genre']);
$post_img = mysqli_real_escape_string($conn, $_POST['post_img']);
$post_id = mysqli_real_escape_string($conn, $_POST['post_id']);

$sql = "UPDATE post SET title='{$title}', description='{$description}',genre={$genre}, post_img='{$image_name}'
        WHERE post_id={$post_id};";
if($_POST['old_genre'] != $_POST["genre"] ){
  $sql .= "UPDATE genre SET post= post - 1 WHERE genre_id = {$_POST['old_genre']};";
  $sql .= "UPDATE genre SET post= post + 1 WHERE genre_id = {$_POST["genre"]};";
}

$result = mysqli_multi_query($conn, $sql);

if($result){
  header("location: {$hostname}/admin/post.php");
}else{
  echo "Query Failed";
}

?>