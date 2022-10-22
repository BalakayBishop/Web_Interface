<?php
    //Hello Mate

    $db_host = 'localhost';
     $db_user = 'id19725964_root';
     $db_password = '!Baylee9899!';
     $db_name = 'id19725964_admin';
    
    $mysqli = @new mysqli($db_host, $db_user, $db_password, $db_name);

    if ($mysqli->connect_error) {
        echo $mysqli->connect_errno.' - '.'Error: '.$mysqli->connect_error;
        exit();
    }

    $query = $mysqli->query("SELECT * FROM flowers WHERE name = 'Carnation'");
    $get_season = $mysqli->query("SELECT s.name FROM season AS s JOIN flowers AS f ON (f.season = s.id) WHERE f.name = 'Carnation'");
    $get_lighting = $mysqli->query("SELECT ss.location FROM shade_sun AS ss JOIN flowers AS f ON (f.shade_sun = ss.id) WHERE f.name = 'Carnation'");
    $get_placement = $mysqli->query("SELECT io.location FROM inside_outside AS io JOIN flowers AS f ON (f.inside_outside = io.id) WHERE f.name = 'Carnation'");

    $flower = $query->fetch_assoc();
    $season = $get_season->fetch_assoc();
    $lighting = $get_lighting->fetch_assoc();
    $placement = $get_placement->fetch_assoc();
    
    $colors = array();

    $get_color = $mysqli->query("SELECT c.color FROM color AS c JOIN flowers AS f ON (f.id = c.flower_id) WHERE f.name = 'Carnation'");
    while($color = $get_color->fetch_assoc()) {
        array_push($colors, $color['color']);
    }
    $color = implode(", ", $colors);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carnation</title>
    <link href="flower.css" rel="stylesheet">
</head>
<body>
    <div id="container">
        <div id="header">
            <h2 id="flowers_header">Flowers 101</h2>
            <a href="index.php">
                <button type="button" class="header_button">Home</button>
            </a>
            <button type="button" class="header_button">About</button>
            <button type="button" class="header_button">Contact Us</button>
            <div>
                <input type="search" id="search_bar" placeholder="Search">
            </div>
        </div> <!-- End of Header-->

        <div id="content">
            <div id="flower_card">
                <?php
                    echo '<img id="flower_img" src="'.$flower['link'].'">';
                    echo '<div id="flower_detail">';
                
                    echo '<h2 id="flower_name">'.$flower['name'].'</h2>';
                    echo '<br>';
                    echo '<p class="flower_details">Scientific Name: '.$flower['scientific_name'].'</p> ';
                    echo '<p class="flower_details">Best Season: '.$season['name'].'</p>';
                    echo '<p class="flower_details">Best Lighting: '.$lighting['location'].'</p>';
                    echo '<p class="flower_details">Best Placement: '.$placement['location'].'</p>';
                    echo '<p class="flower_details">Most Common Colors: '.$color.'</pre>';
                ?>
                </div>
            </div>

            <hr>

            <div id="flower_description">
                <?php
                    echo '<p id="p_desc">'.$flower['description'].'</p>';
                ?>
            
                </div>
        </div>

    </div> <!-- End of Container-->
</body>
</html>