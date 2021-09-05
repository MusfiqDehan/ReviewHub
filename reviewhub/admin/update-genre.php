<?php include "header.php";
if($_SESSION["user_role"] == '0'){
  header("Location: {$hostname}/admin/post.php");
}
?>
  <div id="admin-content">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
            <h1 class="adin-heading">Update Genre</h1>
        </div>
        <div class="col-md-offset-3 col-md-6">
        <?php
        include 'config.php';
          $cat_id = $_GET['id'];
          /* query record for modify*/
          $sql = "SELECT * FROM genre WHERE genre_id ='{$cat_id}'";
          $result = mysqli_query($conn, $sql);
          if (mysqli_num_rows($result) > 0) {
              while($row = mysqli_fetch_assoc($result)) { ?>
              <!-- Form Start -->
              <form action="<?php $_SERVER['PHP_SELF']; ?>" method ="POST">
                  <div class="form-group">
                      <input type="hidden" name="cat_id"  class="form-control" value="<?php echo $row['genre_id']; ?>">
                  </div>
                  <div class="form-group">
                      <label>genre Name</label>
                      <input type="text" name="cat_name" class="form-control" value="<?php echo $row['genre_name']; ?>"  placeholder="" required>
                  </div>
                  <input type="submit" name="submit" class="btn btn-default" value="Update" />
              </form>
               <!-- Form End-->
              <?php
              }
          }
        ?>
        </div>
      </div>
    </div>
  </div>
  <?php
  if(isset($_POST['submit'])){
    /* query for update genre table */
    $sql1 = "UPDATE genre SET genre_id='{$_POST['cat_id']}', genre_name='{$_POST['cat_name']}'  WHERE  genre_id={$_POST['cat_id']}";

    if (mysqli_query($conn,$sql1)){
      // redirect all genre page
      header("location: {$hostname}/admin/genre.php");
    }
  }
  ?>
<?php include "footer.php"; ?>
