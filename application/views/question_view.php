<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Sergey Pozhilov (GetTemplate.com)">

    <title>Check your knowledge and have fun</title>

    <link rel="shortcut icon" href="../../assets/images/gt_favicon.png">

    <link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
    <link rel="stylesheet" href="../../assets/css/bootstrap.css">
    <link rel="stylesheet" href="../../assets/css/font-awesome.min.css">

    <!-- Custom styles for our template -->
    <link rel="stylesheet" href="../../assets/css/bootstrap-theme.css" media="screen">
    <link rel="stylesheet" href="../../assets/css/main.css">
</head>

<body class="home" onload="getSessionTime()">
<!-- Fixed navbar -->
<div class="navbar navbar-inverse navbar-fixed-top headroom">
    <div class="container">
        <div class="navbar-header">
            <!-- Button for smallest screens -->
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span
                    class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span></button>
            <a class="navbar-brand" href="index.html"><img src="../../assets/images/quiz.png"> QUIZ TIME</a>

        </div>
    </div>
</div>
<!-- /.navbar -->

<!-- Header -->
<header id="head">
    <div class="container">
        <!-- Category View -->
        <?php if (!isset($question) && !isset($score)) { ?>
            <form name="userinput" action="getQuestionFromCategory" method="post">
                <br><br><br>
                <h1>Select a quiz category according to your area of interest</h1>

                <!--                <div class="dropdown btn-group">-->
                <!--                    <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1"-->
                <!--                            data-toggle="dropdown" name="category_name" aria-haspopup="true" aria-expanded="true">-->
                <!--                        Category-->
                <!--                        <span class="caret"></span>-->
                <!--                    </button>-->
                <!--                    <ul class="dropdown-menu" aria-labelledby="dropdownMenu1" id="category_name">-->
                <!--                        <li value="Sport"><a>Sport</a></li>-->
                <!--                        <li value="General Knowledge"><a>General Knowledge</a></li>-->
                <!--                        <li value="Entertainment"><a>Entertainment</a></li>-->
                <!--                    </ul>-->
                <!--                </div>-->
                <div class="btn-group">
                    <select id="category_name" name="category_name" class="dropdown btn-group">
                        <option value="Sport">Sport</option>
                        <option value="General Knowledge">General Knowledge</option>
                        <option value="Entertainment">Entertainment</option>
                    </select>
                </div>
                <p>
                    <button type="submit" class="btn btn-default btn-lg"
                            role="button" id="go_btn" name="go_btn"
                            value="go_btn">GO
                    </button>
                </p>
            </form>
            <?php
        } else if (isset($question)) {
            ?>
            <form name="userinput" action="getNextQuestions" method="post">
                <!-- Question View -->
                <h3><?php echo $question[0]["questionname"] ?></h3>
                <?php
                $answers = $question[0]["answers"];
                for ($i = 0; $i < count($answers); $i++) {
                    ?>
                    <h4>
                        <input type="radio" name="answer" value="<?php echo($i + 1) ?>"/>
                        <?php echo $answers[$i]["answer"] ?></br>
                    </h4>
                    <?php
                }
                if (isset($error)) {
                    ?>
                    <h3 style="color:#FF0000">Please answer the question and click next</h3>
                <?php } ?>
                <p>
                    <button type="submit" class="btn btn-default btn-lg"
                            id="next" name="next_btn" onclick="stopCount()" value="next_btn">
                        Next
                    </button>
                </p>
            </form>
            <h1 align="right" id="timer">00.00</h1>
            <?php
        } else if ($score != NULL) { ?>
            <!--Score View Page -->
            <form name="userinput" action="index" method="get">

                <h1>Your Score is <?php echo $score ?>%</h1>

                <p>
                    <button type="submit" class="btn btn-default btn-lg"
                            id="next" name="try_again_btn" value="try_again_btn">
                        Try Again
                    </button>
                </p>
                <h1 align="Right" id="timeText">Total spents time for quiz :</h1>

                <h1 align="Right" id="timer">00.00</h1>
            </form>
        <?php } ?>
        <input type="hidden" id="time_store"/>

    </div>

</header>
<!-- /Header -->

<footer id="footer" class="top-space navbar-fixed-bottom">
    <div class="footer2">
        <div class="container">
            <div class="row">

                <div class="col-md-6 widget">
                    <div class="widget-body">
                        <p class="simplenav">
                            <a href="#">Home</a> |
                            <a href="about.html">About</a> |
                        </p>
                    </div>
                </div>

                <div class="col-md-6 widget">
                    <div class="widget-body">
                        <p class="text-right">
                            Copyright &copy; 2015, Sachith Ushan
                        </p>
                    </div>
                </div>

            </div>
            <!-- /row of widgets -->
        </div>
    </div>
</footer>

<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
<script type="text/javascript" src="../../assets/js/timehandle.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="../../assets/js/headroom.min.js"></script>
<script src="../../assets/js/headroom.min.js"></script>
</body>
</html> 