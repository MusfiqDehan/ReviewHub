<?php
    $hostname = "http://localhost/reviewhub";

    $db_host = "localhost";
    $db_user = "dehan";
    $db_pass = "24680";
    $db_name = "reviewhub";

    $conn = mysqli_connect(
        $db_host, 
        $db_user, 
        $db_pass, 
        $db_name
    ) or die("Connection failed : " . mysqli_connect_error());