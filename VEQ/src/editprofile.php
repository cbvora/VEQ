


<?php

error_reporting(0);
session_start();
include_once '../oesdb.php';

if(!isset($_SESSION['tcname'])) {
    $_GLOBALS['message']="Session Timeout.Click here to <a href=\"index.php\">Re-LogIn</a>";
}
else if(isset($_REQUEST['logout']))
{

    unset($_SESSION['tcname']);
    header('Location: index.php');

}
else if(isset($_REQUEST['dashboard'])){

     header('Location: tcwelcome.php');

    }else if(isset($_REQUEST['savem']))
{
 
 
    if(empty($_REQUEST['cname'])||empty ($_REQUEST['password'])||empty ($_REQUEST['email']))
    {
         $_GLOBALS['message']="Some of the required Fields are Empty.Therefore Nothing is Updated";
    }
    else
    {
     $query="update testconductor set tcname='".htmlspecialchars($_REQUEST['cname'],ENT_QUOTES)."', tcpassword=ENCODE('".htmlspecialchars($_REQUEST['password'],ENT_QUOTES)."','oespass'),emailid='".htmlspecialchars($_REQUEST['email'],ENT_QUOTES)."',contactno='".htmlspecialchars($_REQUEST['contactno'],ENT_QUOTES)."',address='".htmlspecialchars($_REQUEST['address'],ENT_QUOTES)."',city='".htmlspecialchars($_REQUEST['city'],ENT_QUOTES)."',pincode='".htmlspecialchars($_REQUEST['pin'],ENT_QUOTES)."' where tcid='".$_REQUEST['tc']."';";
     if(!@executeQuery($query))
        $_GLOBALS['message']=mysql_error();
     else
        $_GLOBALS['message']="Your Profile is Successfully Updated.";
    }
    closedb();

}


?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
  <head>
    <title>VEQ-Edit Profile</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" type="text/css" href="../oes.css"/>
    <script type="text/javascript" src="../validate.js" ></script>
    </head>
  <body >
       <?php

        if($_GLOBALS['message']) {
            echo "<div class=\"message\">".$_GLOBALS['message']."</div>";
        }
        ?>
      <div id="container">
     <div class="header">
                <img style="margin:10px 2px 2px 10px;float:left;" height="80" width="200" src="../images/logo.gif" alt="OES"/><h3 class="headtext"> &nbsp;VIT UNIVERSITY </h3><h4 style="color:#ffffff;text-align:center;margin:0 0 5px 5px;"><i>...A place to learn; A chance to grow</i></h4>
            </div>
           <form id="editprofile" action="editprofile.php" method="post">
          <div class="menubar">
               <ul id="menu">
                        <?php if(isset($_SESSION['tcname'])) {
                         // Navigations
                         ?>
                        <li><input type="submit" value="LogOut" name="logout" class="subbtn" title="Log Out"/></li>
                        <li><input type="submit" value="DashBoard" name="dashboard" class="subbtn" title="Dash Board"/></li>
                        <li><input type="submit" value="Save" name="savem" class="subbtn" onclick="validateform('editprofile')" title="Save the changes"/></li>
                     
               </ul>
          </div>
      <div class="page">
          <?php
                       
 
                         $result=executeQuery("select tcid,tcname,DECODE(tcpassword,'oespass') as tcpass ,emailid,contactno,address,city,pincode from testconductor where tcname='".$_SESSION['tcname']."';");
                        if(mysql_num_rows($result)==0) {
                           header('Location: tcwelcome.php');
                        }
                        else if($r=mysql_fetch_array($result))
                        {
                           //editing components
                 ?>
           <table cellpadding="20" cellspacing="20" style="text-align:left;margin-left:15em" >
              <tr>
                  <td>User Name</td>
                  <td><input type="text" name="cname" value="<?php echo htmlspecialchars_decode($r['tcname'],ENT_QUOTES); ?>" size="16" onkeyup="isalphanum(this)"/></td>

              </tr>

                      <tr>
                  <td>Password</td>
                  <td><input type="password" name="password" value="<?php echo htmlspecialchars_decode($r['tcpass'],ENT_QUOTES); ?>" size="16" onkeyup="isalphanum(this)" /></td>
                 
              </tr>

              <tr>
                  <td>E-mail ID</td>
                  <td><input type="text" name="email" value="<?php echo htmlspecialchars_decode($r['emailid'],ENT_QUOTES); ?>" size="16" /></td>
              </tr>
                       <tr>
                  <td>Contact No</td>
                  <td><input type="text" name="contactno" value="<?php echo htmlspecialchars_decode($r['contactno'],ENT_QUOTES); ?>" size="16" onkeyup="isnum(this)"/></td>
              </tr>

                  <tr>
                  <td>Address</td>
                  <td><textarea name="address" cols="20" rows="3"><?php echo htmlspecialchars_decode($r['address'],ENT_QUOTES); ?></textarea></td>
              </tr>
                       <tr>
                  <td>City</td>
                  <td><input type="text" name="city" value="<?php echo htmlspecialchars_decode($r['city'],ENT_QUOTES); ?>" size="16" onkeyup="isalpha(this)"/></td>
              </tr>
                       <tr>
                  <td>PIN Code</td>
                  <td><input type="hidden" name="tc" value="<?php echo $r['tcid']; ?>"/><input type="text" name="pin" value="<?php echo htmlspecialchars_decode($r['pincode'],ENT_QUOTES); ?>" size="16" onkeyup="isnum(this)" /></td>
              </tr>

            </table>
<?php
                        closedb();
                        }
                        
                        }
  ?>
      </div>

           </form>
      <div id="footer">
          <p style="font-size:70%;color:#ffffff;"> Developed By-<b>Vora Chirag & Rout Lalit</b><br/>
  </p>
          <p style="font-size:70%;color:#ffffff;">M.Tech - IT </p>
</div>
      </div>
  </body>
</html>

