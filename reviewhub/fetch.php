<?php include 'config.php';?>
<?php
$output = '';
if (isset($_POST["query"])) {
    $search_value = mysqli_real_escape_string($conn, $_POST["query"]);   
    $query = "SELECT * FROM post WHERE title LIKE '%{$search_value}%' ";
} else {
    $query = "SELECT * FROM post ORDER BY post_id";
}

$result = mysqli_query($conn, $query);

if (mysqli_num_rows($result) > 0) {
    $output .= '<div class="table-responsive">
                    <table class="table table bordered"<tr>
                    <th>Movie Name</th>
                    <th>Movie Image</th>
                    <th id="desc">Description</th>
                    <th>Date</th>
                    </tr>';
    while ($row = mysqli_fetch_array($result)) {
        $output .= '
                    <tr>
                    <td>' . $row["title"] . '</td>
                    <td><img src="images/' . $row["post_img"] . '" width="156" height="156" /></td>
                    <td>' . $row["description"] . '</td>
                    <td>' . $row["post_date"] . '</td>
                    </tr>';
    }
    echo $output;
} 
else {
    echo nl2br("\nData not found");
}

?>
<?php include 'db_close.php';?>