<?php



error_reporting(0);

session_start();
        if(!isset($_SESSION['tcname'])){
            $_GLOBALS['message']="Session Timeout.Click here to <a href=\"index.php\">Re-LogIn</a>";
        }
        else if(isset($_REQUEST['logout'])){
           unset($_SESSION['tcname']);
            $_GLOBALS['message']="You are Loggged Out Successfully.";
            header('Location: index.php');
        }
?>

<html>
    <head>
        <title>VEQ-DashBoard</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <link rel="stylesheet" type="text/css" href="../oes.css"/>
    </head>
    <body>
        <?php


        if($_GLOBALS['message']) {
            echo "<div class=\"message\">".$_GLOBALS['message']."</div>";
        }
        ?>
        <div id="container">
            <div class="header">
                <img style="margin:10px 2px 2px 10px;float:left;" height="80" width="200" src="../images/logo.gif" alt="OES"/><h3 class="headtext"> &nbsp;VIT UNIVERSITY </h3><h4 style="color:#ffffff;text-align:center;margin:0 0 5px 5px;"><i>...A place to learn; A chance to grow</i></h4>
            </div>
            <div class="menubar">

                <form name="tcwelcome" action="tcwelcome.php" method="post">
                    <ul id="menu">
                        <?php if(isset($_SESSION['tcname'])){ ?>
                        <li><input type="submit" value="LogOut" name="logout" class="subbtn" title="Log Out"/></li>
                        <?php } ?>
                    </ul>
                </form>
            </div>
            <div class="admpage">
                <?php if(isset($_SESSION['tcname'])){ ?>


                <img height="550" width="100%" alt="back" class="btmimg" src="../images/trans.png"/>
                <div class="topimg"><br><br><br>
                    <p><img height="500" width="600" style="border:none;"  src="../images/tcwelcome.jpg" alt="image"  usemap="#oesnav" /></p>

                    <map name="oesnav">
                        <area shape="circle" coords="150,120,70" href="submng.php" alt="Manage Subjects" title="This takes you to Subjects Management Section" />
                        <area shape="circle" coords="450,120,70" href="testmng.php" alt="Manage Tests" title="This takes you to Tests Management Section" />
                        <area shape="circle" coords="300,250,60" href="editprofile.php" alt="Edit Your Profile" title="This takes you to Edit Profile Section" />
                        <area shape="circle" coords="150,375,70" href="rsltmng.php" alt="Manage Test Results" title="Click this to view Test Results." />
                        <area shape="circle" coords="450,375,70" href="testmng.php?forpq=true" alt="Prepare Questions" title="Click this to prepare Questions for the Test" />
                    </map>
                </div>
                <?php }?>

            </div>

           <div id="footer">
          <p style="font-size:70%;color:#ffffff;"> Developed By-<b>Vora Chirag & Rout Lalit</b><br/>
  </p>
          <p style="font-size:70%;color:#ffffff;">M.Tech - IT </p>
</div>
      </div>
  </body>
</html>
