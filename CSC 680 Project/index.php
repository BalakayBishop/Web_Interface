<?php 
    // localhost:8889
     $db_host = 'localhost';
     $db_user = 'id19725964_root';
     $db_password = '!Baylee9899!';
     $db_name = 'id19725964_admin';
    
     $mysqli = @new mysqli(
       $db_host,
       $db_user,
       $db_password,
       $db_name
     );

     if ($mysqli->connect_error) {
        echo $mysqli->connect_errno.' - '.'Error: '.$mysqli->connect_error;
        exit();
      }

      

      $all_flowers = $mysqli->query("SELECT * FROM flowers");

    
      $mysqli->close();

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Flowers 101</title>
    <link href="styles.css" rel="stylesheet">
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
            <div id="home_page_desc">
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi iaculis erat sed dolor bibendum vestibulum. Aenean eget arcu eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eu congue elit. Maecenas sit amet eros ac diam volutpat mollis id at massa. Morbi quis semper nisi, tincidunt accumsan tellus. Duis laoreet tincidunt pretium.  Morbi faucibus congue elit, at semper arcu luctus et. Nulla at neque at mi mollis rhoncus ut vitae elit. Sed accumsan arcu id justo dignissim interdum. Nullam sit amet molestie risus, volutpat lacinia tellus. Vivamus ut neque libero. Nam gravida quam metus, eu venenatis leo tristique quis. Suspendisse ut hendrerit velit, ac vehicula augue. Ut suscipit facilisis nunc sit amet blandit. Morbi iaculis ornare lorem, non dapibus elit suscipit ut.
                </p>
                <br>
                <p>
                    I'm baby dolore shabby chic VHS deserunt. Meditation yr leggings sint, schlitz bitters next level same. Pork belly letterpress pok pok schlitz proident. Microdosing tousled cliche, gatekeep hashtag vibecession gochujang. Master cleanse cillum selvage reprehenderit voluptate sint hella ipsum kogi quinoa. Put a bird on it labore fashion axe man bun consequat roof party vegan offal pickled id franzen coloring book. Hoodie slow-carb kitsch sunt biodiesel ullamco pork belly do hexagon typewriter. Cliche disrupt shoreditch meh laborum. Deserunt gatekeep jean shorts pariatur put a bird on it neutra. Tbh sus before they sold out, austin man bun eu single-origin coffee same tumblr 8-bit ugh celiac everyday carry shoreditch. Gluten-free everyday carry health goth migas meggings helvetica subway tile ea crucifix organic. Dummy text? More like dummy thicc text, amirite?
                </p>
            </div> <!-- End of Description -->

            <div id="result_tag">
                <h2 id="results_h2">Flowers</h2>
                <hr id="result_hr">
            </div>

            <?php
                $i = 0;
                echo '<div class="results_row">';
                while($flower = $all_flowers->fetch_assoc()) {
                    
                        if($i == 3) {
                            echo "</div>"; // end of row
                            echo '<div class="results_row">';
                                echo '<div class="result_column">';
                                    echo'<img src="'.$flower['link'].'"alt="picture of a"'.$flower['name'].'" class="picture">';
                                    echo '<br>';
                                    echo '<a href="'.$flower['name'].'.php">';
                                        echo '<button type="button" class="flower_button">'.$flower['name'].'</button>';
                                    echo '</a>';
                                echo "</div>"; // end of column
                            $i = 1;
                        } 
                        else {
                            echo '<div class="result_column">';
                                echo'<img src="'.$flower['link'].'"alt="picture of a"'.$flower['name'].'" class="picture">';
                                echo '<br>';
                                echo '<a href="'.$flower['name'].'.php" target="_blank">';
                                    echo '<button type="button" class="flower_button">'.$flower['name'].'</button>';
                                echo '</a>';
                            echo "</div>"; // end of column
                            $i++;
                        }   
                }
                echo "</div>"; // end of row
            ?>

        </div> <!-- End of Content Div-->

    </div> <!-- End of Container-->
</body>
</html>

<!-- 
    <div class="results_row">

              <div class="result_column">
                  <img src="https://www.teahub.io/photos/full/129-1294813_red-rose-macro-shoot-ipad-air-wallpaper-all.jpg" alt="picture of a rose" class="picture">
                  <br>
                <button type="button" class="flower_button"><a href="flower.php">Left</a></button>
            </div>
            <div class="result_column">
                <img src="https://www.teahub.io/photos/full/129-1294813_red-rose-macro-shoot-ipad-air-wallpaper-all.jpg" alt="picture of a rose" class="picture">
                <br>
                <button type="button" class="flower_button" href="flower.php">Center</button>
              </div>

              <div class="result_column">
                <img src="https://www.teahub.io/photos/full/129-1294813_red-rose-macro-shoot-ipad-air-wallpaper-all.jpg" alt="picture of a rose" class="picture">
                <br>
                <button type="button" class="flower_button" href="flower.php">Right</button>
              </div> 
            </div>
        href="'.$inner['name'].'.php"

    foreach($all_flowers as $flower) {
        $flower = $all_flowers->fetch_assoc();
        echo "<pre>";
            print_r($flower);
        echo"</pre>";
      }
-->

