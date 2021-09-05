<?php include "header.php"; ?>
  <div id="admin-content">
      <div class="container">
          <div class="row">
              <div class="col-md-12">
                  <h1 class="admin-heading">Add New Genre</h1>
              </div>
              <div class="col-md-offset-3 col-md-6">
                  <!-- Form Start -->
                  <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST" autocomplete="off">
                      <div class="form-group">
                          <label>Genre Name</label>
                          <input type="text" name="cat" class="form-control" placeholder="Genre Name" required>
                      </div>
                      <input type="submit" name="save" class="btn btn-default" value="Save" required />
                  </form>
                  <!-- /Form End -->
              </div>
          </div>
      </div>
  </div>
  <?php
    if( isset($_POST['save']) ){
        // database configuration
        include 'config.php';
        $genre =mysqli_real_escape_string($conn, $_POST['cat']);
        /* query for check input value exists in genre table or not*/
        $sql = "SELECT genre_name FROM genre where genre_name='{$genre}'";
        $result = mysqli_query($conn, $sql);
        if (mysqli_num_rows($result)> 0) {
            // if input value exists
            echo "<p style = 'color:red;text-align:center;margin: 10px 0';> genre already exists.</p>";
        }else{
            // if input value not exists
             /* query for insert record in genre name */
            $sql = "INSERT INTO genre (genre_name)
                    VALUES ('{$genre}')";

            if (mysqli_query($conn, $sql)){
                header("location: {$hostname}/admin/genre.php");
            }else{
              echo "<p style = 'color:red; text-align:center; margin: 10px 0'; >Query Failed.</p>";
            }
        }
    }
    mysqli_close($conn);

    include "footer.php";
  ?>
