<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>ReviewHub | Live Movie Search</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">

    <style>
    body {
        margin: 0;
        padding: 0;
        background-color: #333;
        color: #fff;
    }

    span {
        text-align: center;
        display: block;
        color: #ff0;
        background-color: #000;
        border-radius: 10px;
        padding: 10px;
    }

    table td {
        text-align: justify;
    }

    table th {
        text-align: center;
    }
    </style>
</head>

<body>
    <div class="container">
        <h2><span>Live Movie Search</span></h2><br />
        <div class="form-group">
            <div class="input-group"><span class="input-group-addon">Search</span>
                <input type="text" name="search_text" id="search_text" placeholder="Search by Movie Names"
                    class="form-control" />
            </div>
        </div>
        <div id="result"></div>
    </div>
</body>

</html>
<script type="text/javascript" src="js/script.js"></script>