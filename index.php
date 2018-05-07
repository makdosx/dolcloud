<?php

/*
 * Copyright (c) 2017-2018 Barchampas Gerasimos <makindosx@gmail.com>
 * Dolcloud is the dolibarr in cloud format.
 *
 * Dolcloud is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 *
 * Dolcloud is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License, version 3,
 * along with this program.  If not, see <http://www.gnu.org/licenses/>
 *
 */

?>


<html>
<head>

 <link rel="stylesheet" type="text/css" href="index.css">

<title> Dolcloud ERP & CRM </title>
<link rel="shortcut icon" href="favicon.ico" />


</head>


<body id="body">


   <div align="center">
    <table id="table">
  

   <img src="exten.png" height="230" width="280"> 

    <h3 id="h3"> <b> <i> Dolcloud ERP & CRM  </i> </b> </h3>
      <hr id="hr">   
   
  <form action="" method="post" autocomplete="off">

    
           <tr>
         <td> <input type="text" name="afm" id="afm" placeholder="X-X-X-X-X-X-X-X-X" autofocus="autofocus" pattern="^[0-9]{9,9}$" minlength="9" maxlength="9" required> </td> 
           </tr>
 
  
          <tr> <td></td> </tr> 


           <tr>
      <td colspan="7">  <input type="submit" name="submit" id="sub" value="Sign in"> </td>
         </tr>


          <tr> <td></td> </tr>       
 
 
        <tr>
       <td align="center" colspan="7"> OR </td>
        </tr>
 

       <tr> <td></td> </tr> 

       <tr>
       <td align="center" colspan="7"> <a href="register.php" id="a"> Register now </a> </td>
        </tr>
      



   </form>
       </table>
    </div>


</body>
</html>






<?php


sleep(1);



   if(isset($_POST['submit']))
     {

   require_once('class_con.php');

 
   if (class_exists('CONNECT_ADMINISTRATOR')) 
    {
       
    $obj_con =  new CONNECT_ADMINISTRATOR;

      
    $host = $obj_con->connector[0];
    $user = $obj_con->connector[1];
    $pass = $obj_con->connector[2];
    $db   = $obj_con->connector[3];


    $conn = new mysqli ($host,$user,$pass,$db);


    if ($conn->connect_error) 
     {
     die("Connect error " .$conn->connect_error);
      } 


      
     else
       {  

               //require_once('class_func.php');

               //$obj_data = new INPUT;
     
               //$afm =  $obj_data->SAFE_DATA($_POST['afm']);

                $afm =  $_POST['afm'];

               $sql = "select afm,user_path from accounts where afm = '$afm' ";
               $result = $conn->query($sql);


               while ($row = $result->fetch_assoc())
                 {

                   if ($row['afm'] == $afm)
                      {
 
                       $path = $row['user_path'];  
 
                     //header('Location: http://localhost/'.$row['user_path']);
                      echo '<script type="text/javascript">alert("Afm ok");
                     </script>';
                    echo ("<script>location.href='$path'</script>");
                         }

                    

                  

                else if ($row['afm'] != $afm)
                 {
                 echo '<script type="text/javascript">alert("Afm error. please try again");
                     </script>';;
                    echo ("<script>location.href='index.php'</script>");
                 }

   
               } // end of while

             


                


        } //end of else data


        } // end of class exists


       } // end of submit



?>


