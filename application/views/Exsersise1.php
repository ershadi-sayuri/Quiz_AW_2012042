<?php

/**
 * Created by IntelliJ IDEA.
 * User: Ushan
 * Date: 10/15/2015
 * Time: 11:30 AM
 */
include 'Movie.php';
$movie1 = new Movie("Ewannda Garadiya",8.2,"Romantic","12/09/08","15/10/08");
$movie2 = new Movie("Ewannda Garadiya part2",8.5,"Romantic","12/09/09","15/10/09");

$movies = array($movie1,$movie2); ?>

<html>
<head>
    <!--<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">-->
</head>
<body>
<table border="1">
    <tr>
        <td>Title</td>
        <td>Rating</td>
        <td>Genre</td>
        <td>Start Date</td>
        <td>End Date</td>
    </tr>
    <?php foreach ($movies as $film => $value) { ?>
        <tr>
            <td><?php echo $movies[$film]->getTitle() ?></td>
            <td><?php echo $movies[$film]->getRating() ?></td>
            <td><?php echo $movies[$film]->getGerne() ?></td>
            <td><?php echo $movies[$film]->getStartingDate() ?></td>
            <td><?php echo $movies[$film]->getEndingDate() ?></td>
        </tr>
    <?php } ?>
</table>
<br>
<form></form>
</body>
</html>


