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


 session_start();

?>



<html>
<head>

 <link rel="stylesheet" type="text/css" href="register.css">

<title> Dolcloud ERP & CRM </title>
<link rel="shortcut icon" href="favicon.ico" />


 <meta charset="utf-8">

</head>


<body id="body">


   <div align="center">
    <table id="table">
  

   <img src="exten.png" height="200" width="250"> 

    <h3 id="h3"> <b> <i> Dolcloud ERP & CRM </i> </b> </h3>
      <hr id="hr">   


      <h3 id="h4"> <b> <i> Step 1 (Register) </i> </b> </h4>
   
  <form action="" method="post" autocomplete="off">
       <tr>
    <td colspan="2"> <input type="text"    name="username" id="user" placeholder="Username" autofocus="autofocus" required> </td>
      <td colspan="2"> <input type="email" name="email" id="mail" placeholder="Email" required> </td>
        </tr>


        </tr> <td> </td> </tr>


    <tr>
                <tr>
         <td colspan="3"> <input type="text" name="afm" id="afm" placeholder="Α.Φ.Μ" autofocus="autofocus" pattern="^[0-9]{9,9}$" minlength="9" maxlength="9" required> </td> 
           </tr>
        </tr>


 </tr> <td> </td> </tr>

       <tr>
    <td colspan="2"> <input type="password" name="password" id="pass" placeholder="Password" required> </td>
    <td colspan="2"> <input type="password" name="password_again" id="pass" placeholder="Password Again" required> </td>
       </tr>


  
         </tr> <td> </td> </tr>


         <tr>
          <td align="center" colspan="2"> <a href="index.php" id="a"> Back to Sign in </a> </td>
       <td> <input type="submit" name="submit_register" id="sub" value="Register"> </td>
        </tr>



   </form>
       </table>
    </div>


</body>
</html>






<?php


ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);


sleep(1);



   if(isset($_POST['submit_register']))
     {


     require_once('class_func.php');

     $obj_data = new INPUT;

     $username       =  $obj_data->SAFE_DATA($_POST['username']);
     $email          =  $obj_data->SAFE_DATA($_POST['email']);
     $password       =  $obj_data->SAFE_DATA($_POST['password']);
     $password_again =  $obj_data->SAFE_DATA($_POST['password_again']);


   
       if($password == $password_again)
         {

      // created shell files

      // create file for unclock user folder
 

    $unlock = fopen("shell/copy.sh", "w") or die("Unable to open file!");
    $lines_unlock = "#!/bin/bash" .PHP_EOL
                  ."cp -avr /var/www/dolcloud/default/ /var/www/dolcloud/$username/" .PHP_EOL;
    fwrite($unlock, $lines_unlock);
    fclose($unlock);




     // create file for permissions shell scripts   
  
    $chmod = fopen("shell/chmod.sh", "w") or die("Unable to open file!");
    $lines_chmod = "#!/bin/bash" .PHP_EOL
                  ."chmod -R 777 /var/www/dolcloud/$username" .PHP_EOL;
    fwrite($chmod, $lines_chmod);
    fclose($chmod);

   

     

   


      // unclock shell files

      chmod("/var/www/dolcloud/shell/copy.sh", 0777);

      chmod("/var/www/dolcloud/shell/chmod.sh", 0777);






      // excute shell files

     shell_exec('shell/./copy.sh');

     shell_exec('shell/./chmod.sh');

    
     


   require_once('class_con.php');

 
   if (class_exists('CONNECT_ADMINISTRATOR')) 
    {
       
     $obj_con =  new CONNECT_ADMINISTRATOR;

      
    $host = $obj_con->connector[0];
    $user = $obj_con->connector[1];
    $pass = $obj_con->connector[2];


    $conn = new mysqli ($host,$user,$pass);


    if ($conn->connect_error) 
     {
     die("Connect error " .$conn->connect_error);
      } 



    else 
      {


          // Chech if exists email or username for security users

          $sql_details = "select user,email from dolcloud.accounts";
          $result_details = $conn->query($sql_details);


               while ($row_details = $result_details->fetch_assoc())
                 {

                   if ($row_details['user'] == $username)
                      {
               echo '<script type="text/javascript">alert("Register fail! This username exists");
                 </script>';
               echo ("<script>location.href='register.php'</script>");
                        exit();
                         }


               if ($row_details['email'] == $email)
                      {
               echo '<script type="text/javascript">alert("Register fail! This email exists");
                 </script>';
               echo ("<script>location.href='register.php'</script>");
                        exit();
                         }

                     }
                       
                   


  
     $sql_create_user = " CREATE USER '$username'@'localhost' IDENTIFIED BY '$password';";
     $result_create_user = $conn->query($sql_create_user);   


     $sql_create_db = "create database $username";
     $result_create_db = $conn->query($sql_create_db);


     $sql_privileges = "GRANT ALL PRIVILEGES ON `$username` . * TO 
                        '$username'@'localhost' WITH GRANT OPTION ;";
     $result_privileges = $conn->query($sql_privileges);


    




            // chech if user is same
 
         if ($result_create_user == true)
           {

            $conn->close(); // Close the administrator connect

            $host_use = "localhost";
            $user_use = $username;
            $pass_use = $password;
            $db_use   = $username;

            $conn_use = new mysqli ($host_use,$user_use,$pass_use,$db_use);

           
           if ($conn_use->connect_error) 
            {
            die("Connect error " .$conn_use->connect_error);
             } 




       else 
         {

   
          // $sql = file_get_contents('tables.sql');
           //$result_tables = $conn_use->multi_query($sql);
                 
          // system("mysql --user=root --password=*#Cw-12-04-81#@ $db_use < sql/table1.sql");
          // system("mysql --user=root --password=*#Cw-12-04-81#@ $db_use < sql/table2.sql");
          // system("mysql --user=root --password=*#Cw-12-04-81#@ $db_use < sql/table3.sql");
          // system("mysql --user=root --password=*#Cw-12-04-81#@ $db_use < sql/table4.sql");
          // system("mysql --user=root --password=*#Cw-12-04-81#@ $db_use < sql/table5.sql");
         //system("mysql --user=root --password=*#Cw-12-04-81#@ $db_use < sql/table6.sql");


            
            //$sql = file_get_contents('sql/table1.sql');
           //$sql .= file_get_contents('sql/table1.sql');
           // $sql .= file_get_contents('sql/table1.sql');
            //$sql .= file_get_contents('sql/table1.sql');
           // $sql .= file_get_contents('sql/table1.sql');
           // $sql .= file_get_contents('sql/table1.sql');


          //$result_tables = $conn_use->multi_query($sql);


$filename = 'sql/tables.sql'; //How to Create SQL File Step : url:http://localhost/phpmyadmin->detabase select->table select->Export(In Upper Toolbar)->Go:DOWNLOAD .SQL FILE
$op_data = '';
$lines = file($filename);
foreach ($lines as $line)
{
    if (substr($line, 0, 2) == '--' || $line == '')//This IF Remove Comment Inside SQL FILE
    {
        continue;
    }

    $op_data .= $line;
    if (substr(trim($line), -1, 1) == ';')//Breack Line Upto ';' NEW QUERY
    {
        $conn_use->query($op_data);
        $op_data = '';
    }
}

           $result_tables ="ok";

           if ($result_tables == "ok")
               {

                    // utf-8 for all tables in database

                   $con_utf8 = mysql_connect($host_use,$user_use,$pass_use);
                   if(!$con_utf8) { echo "Cannot connect to the database ";die();}
                   mysql_select_db($db_use);
                   $result_utf8=mysql_query('show tables');
                   while($tables_utf8 = mysql_fetch_array($result_utf8))  
                              {
                    foreach ($tables_utf8 as $key_utf8 => $value_utf8)
                          {
              mysql_query("ALTER TABLE $value_utf8 CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci");
                       }}


             $length = 16;
             $rand= substr(str_shuffle("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"),0, $length);
       
          

                $_SESSION['host_user']       =  $host_use;
                $_SESSION['username_user']   =  $user_use;
                $_SESSION['password_user']   =  $pass_use;
                $_SESSION['db_user']         =  $db_use;   
                $_SESSION['mail']            =  $email;
                $_SESSION['serial_number1']  =  $rand[0].$rand[1].$rand[2].$rand[3];
                $_SESSION['serial_number2']  =  $rand[4].$rand[5].$rand[6].$rand[7];
                $_SESSION['serial_number3']  =  $rand[8].$rand[9].$rand[10].$rand[11];
                $_SESSION['serial_number4']  =  $rand[12].$rand[13].$rand[14].$rand[15];
                $_SESSION['afm']             =  $obj_data->SAFE_DATA($_POST['afm']);   
                $_SESSION['step1']           =  true;
            


            
              require "/var/www/dolcloud/default/mail/PHPMailerAutoload.php";


               $message = "

 <h2> <b> Dolcloud ERP & CRM </b> </h2> <br><br>

Γλώσσα ελληνικά <br>

Το κλειδί για την ενεργοποίηση του λογαριασμού σας στο Dolcloud είναι το εξής: 
<font color=black> <u> 
$rand[0]$rand[1]$rand[2]$rand[3] - $rand[4]$rand[5]$rand[6]$rand[7] - $rand[8]$rand[9]$rand[10]$rand[11] - $rand[12]$rand[13]$rand[14]$rand[15]
 </u> </font> <br> 
Προσοχή: Αποθηκεύστε το κλειδί σας και έπειτα σβήστε το email που σας στείλαμε για λόγους ασφαλείας. <br>

Με εκτίμηση η ομάδα ασφαλείας του Dolcloud <br>

<br><br>


<img src=cid:account_activate>


<br><br>

Language English <br>


The key to activating your Dolcloud ERP & CRM account is as follows: 
<font color=black> <u> 
$rand[0]$rand[1]$rand[2]$rand[3] - $rand[4]$rand[5]$rand[6]$rand[7] - $rand[8]$rand[9]$rand[10]$rand[11] - $rand[12]$rand[13]$rand[14]$rand[15]
</u> </font> <br> 
Attention: Save your key and then clear the email we sent you for security reasons. <br>

Sincerely, the computer security team of Dolcloud
";




  $mail = new PHPMailer;
  

$mail->CharSet = 'UTF-8';
$mail->isSMTP();                                 
$mail->Host = 'smtp.gmail.com';                   
$mail->SMTPAuth = true;                        
$mail->Username = 'makindosx@gmail.com';            
$mail->Password = 'mak*.m01m';           
$mail->SMTPSecure = 'tls';               
$mail->Port = 25;                   

$from='makindosx@gmail.com';

$mail->setFrom($from,'Dolcloud');
$mail->FromName = 'Dolcloud';

$mail->addAddress($email);                                


$mail->isHTML(true);


$mail->AddEmbeddedImage('account_activate', 'account_activate' ,'account_activate');

$mail->Subject = 'Account Activate';

$mail->Body = $message;

//$mail->AltBody = $message;



 if(!$mail->send()) 
    {   
      echo "<script language='javascript'>alert('Registration failed! Please try again');</script>";
     echo 'Mailer Error: ' .$mail->ErrorInfo;
      }        
      

   else
    {
    echo '<script type="text/javascript">alert("Registration was successful! Chech your email");
         </script>';
     echo ("<script>location.href='register2.php'</script>");
     }
    
    
            

                 } // end $result_tables

             

            } // end of else for conn_use

             $conn_use->close();

             }









        else if ($result_create_user!=true)
           {  
           echo '<script type="text/javascript">alert("Register failed. Please try again !");
                 </script>';
           echo ("<script>location.href=''</script>");

             }   
  



          } // end else of connect


        } // end if of class exist
     
 
      } // end if password == retype password






 
    else if ($password != $password_again)
        {
        echo '<script type="text/javascript">alert("Password and password retype do not match. please try again !");
                 </script>';
          echo ("<script>location.href=''</script>");
         }













   } // end of submit
 



?>
