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

 <link rel="stylesheet" type="text/css" href="register2.css">

<title> Dolcloud ERP & CRM </title>
<link rel="shortcut icon" href="favicon.ico" />


</head>


<body id="body">


<div align="center">
    <table id="table">
  

   <img src="exten.png" height="200" width="250"> 
   
  <h3 id="h3"> <b> <i> Dolcloud ERP & CRM </i> </b> </h3>
      <hr id="hr">   


      <h3 id="h4"> <b> <i> Step 2 (Activate) </i> </b> </h4>


  <form action="" method="post" autocomplete="off">


           <tr>
         <td> <input type="text" name="serial_number1" id="serial" placeholder="XXXX" autofocus="autofocus" pattern="^[A-Z0-9]{4,4}$" required> </td> 
            <td> - </td>
         <td> <input type="text" name="serial_number2" id="serial" placeholder="XXXX" pattern="^[A-Z0-9]{4,4}$" required> </td>
            <td> - </td>
         <td> <input type="text" name="serial_number3" id="serial" placeholder="XXXX" pattern="^[A-Z0-9]{4,4}$" required> </td>
            <td> - </td>
         <td> <input type="text" name="serial_number4" id="serial" placeholder="XXXX" pattern="^[A-Z0-9]{4,4}$" required> </td>
           </tr>
 

            <tr>
              <td> </td>
             </tr>
 

           <tr>
         <td colspan="7"> <input type="submit" name="submit_activate" id="sub" value="Activate"> </td>
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

 if(!isset($_SESSION['step1']))
    {
     header('Location: register.php');
      }




  else
    {

   
  require_once('class_con.php');


    if (class_exists('CONNECT_ADMINISTRATOR')) 
       {

        $obj_conn = new CONNECT_ADMINISTRATOR;
     

        $host_activate  =  $obj_conn->connector[0];
        $user_activate  =  $obj_conn->connector[1];
        $pass_activate  =  $obj_conn->connector[2];


            $conn_activate = new mysqli ($host_activate,$user_activate,$pass_activate);


    if ($conn_activate->connect_error) 
     {
     die("Connect error " .$conn_activate->connect_error);
      } 



    else 
      {
 
            $afm               =  $_SESSION['afm'];
            $username_new_user =  $_SESSION['username_user'];
            $pass_new_user     =  md5($_SESSION['password_user']);
            $email_new_user    =  $_SESSION['mail'];
            $user_path         =  "/" .$username_new_user ."/" ."htdocs";
            $date_now = date('Y-m-d H:i:s');

           


               $serial1 = $_SESSION['serial_number1'];
               $serial2 = $_SESSION['serial_number2'];
               $serial3 = $_SESSION['serial_number3'];
               $serial4 = $_SESSION['serial_number4'];


               $db_administrator  =  $obj_conn->connector[3];
               $db_user           =  $_SESSION['username_user'];


               $sql_activate = "insert into $db_administrator.accounts (afm,user,email,user_path,serial1,serial2,serial3,serial4,active)
                     values ('$afm','$username_new_user','$email_new_user','$user_path','$serial1','$serial2','$serial3','$serial4','no')";
                $result_activate  = $conn_activate->query($sql_activate);        




      $sql_new_user="INSERT INTO $db_user.llx_user (`rowid`, `entity`, `ref_ext`, `ref_int`, `employee`, `fk_establishment`, `datec`, `tms`, `fk_user_creat`, `fk_user_modif`, `login`, `pass`, `pass_crypted`, `pass_temp`, `api_key`, `gender`, `civility`, `lastname`, `firstname`, `address`, `zip`, `town`, `fk_state`, `fk_country`, `job`, `skype`, `office_phone`, `office_fax`, `user_mobile`, `email`, `signature`, `admin`, `module_comm`, `module_compta`, `fk_soc`, `fk_socpeople`, `fk_member`, `fk_user`, `note_public`, `note`, `datelastlogin`, `datepreviouslogin`, `egroupware_id`, `ldap_sid`, `openid`, `statut`, `photo`, `lang`, `color`, `barcode`, `fk_barcode_type`, `accountancy_code`, `nb_holiday`, `thm`, `tjm`, `salary`, `salaryextra`, `weeklyhours`)
VALUES(1, 0, NULL, NULL, 1, 0, '$date_now','$date_now', NULL, NULL, '$username_new_user', NULL, '$pass_new_user', NULL, NULL, '', NULL, 'SuperAdmin', '', '', '', '', NULL, NULL, '', '', '', '', '', '$email_new_user', '', 1, 1, 1, NULL, NULL, NULL, NULL, NULL, '', '$date_now', '$date_now', NULL, '', NULL, 1, NULL, NULL, '', NULL, 0, '', 0, NULL, NULL, NULL, NULL, NULL);";

         $result_new_user = $conn_activate->query($sql_new_user);









     if(isset($_POST['submit_activate']))
          {


               require_once('class_func.php');

              $obj_data_serial = new INPUT;
     
              $serial1  =  $obj_data_serial->SAFE_DATA($_POST['serial_number1']);
              $serial2  =  $obj_data_serial->SAFE_DATA($_POST['serial_number2']);
              $serial3  =  $obj_data_serial->SAFE_DATA($_POST['serial_number3']);
              $serial4  =  $obj_data_serial->SAFE_DATA($_POST['serial_number4']);



               $sql_activate = "select serial1,serial2,serial3,serial4 from dolcloud.accounts 
                                 where user='$username_new_user' and email='$email_new_user'";
               $result_activate = $conn_activate->query($sql_activate);


               while ($row_activate = $result_activate->fetch_assoc())
                 {

                   if ($row_activate['serial1'] == $serial1  && $row_activate['serial2'] == $serial2 
                       && $row_activate['serial3'] == $serial3 && $row_activate['serial4'] == $serial4)
                      {


                       $sql_activate2 = "update dolcloud.accounts set active='yes' 
                                         where serial1='$serial1' and serial2='$serial2' and serial3='$serial3' and serial4='$serial4'";
                       $result_activate2 = $conn_activate->query($sql_activate2);  





                    // create file conf for login user to account erp
                   
                     $user_folder_conf =  $_SESSION['username_user'];
                     $user_db_conf     =  $_SESSION['db_user'];
                     $user_user_conf   =  $_SESSION['username_user'];
                     $user_pass_conf   =  $_SESSION['password_user'];


          $conf = fopen("$user_folder_conf/htdocs/conf/conf.php", "w") or die("Unable to open file!");
          $conf_lines = '<?php' .PHP_EOL
                      .'$dolibarr_main_url_root' ."=" ."'" ."https://localhost/$user_folder_conf/htdocs" ."';" .PHP_EOL
                      .'$dolibarr_main_document_root' ."="  ."'"  ."/var/www/dolcloud/$user_folder_conf/htdocs" ."';" .PHP_EOL
                      .'$dolibarr_main_url_root_alt' ."="  ."'"  ."/custom" ."';" .PHP_EOL
                      .'$dolibarr_main_document_root_alt' ."=" ."'"  ."/var/www/dolcloud/$user_folder_conf/htdocs/custom" ."';" .PHP_EOL
                      .'$dolibarr_main_data_root' ."="  ."'"  ."/var/www/dolcloud/$user_folder_conf/documents"  ."';" .PHP_EOL
                      .'$dolibarr_main_db_host' ."="  ."'"  ."localhost"  ."';" .PHP_EOL
                      .'$dolibarr_main_db_port' ."="  ."'"  ."3306"  ."';" .PHP_EOL
                      .'$dolibarr_main_db_name' ."=" ."'"  ."$user_db_conf"  ."';" .PHP_EOL
                      .'$dolibarr_main_db_prefix' ."="  ."'"  ."llx_"  ."';" .PHP_EOL
                      .'$dolibarr_main_db_user' ."="  ."'"  ."$user_user_conf"  ."';" .PHP_EOL
                      .'$dolibarr_main_db_pass' ."="  ."'"  ."$user_pass_conf"  ."';" .PHP_EOL
                      .'$dolibarr_main_db_type' ."="  ."'"  ."mysqli"  ."';" .PHP_EOL
                      .'$dolibarr_main_db_character_set' ."="  ."'"  ."latin1"  ."';" .PHP_EOL
                      .'$dolibarr_main_db_collation' ."="  ."'"  ."latin1_swedish_ci"  ."';" .PHP_EOL
                      .'$dolibarr_main_authentication' ."="  ."'"  ."dolibarr"  ."';" .PHP_EOL
                      .'$dolibarr_main_prod' ."="  ."'"  ."0"  ."';" .PHP_EOL
                      .'$dolibarr_main_force_https' ."="  ."'"  ."0"  ."';" .PHP_EOL
                      .'$dolibarr_main_restrict_os_commands'  ."=" ."'"  ."mysqldump, mysql, pg_dump, pgrestore"  ."';" .PHP_EOL
                      .'$dolibarr_nocsrfcheck' ."="  ."'"  ."0"  ."'" .PHP_EOL
                      .'?>';
           fwrite($conf, $conf_lines);
           fclose($conf);




               echo '<script type="text/javascript">alert("Register sucessfully! Welcome to Dolcloud");
                 </script>';
               echo ("<script>location.href='register_end.php'</script>");
                         }

                     
                  else
                    {
               echo '<script type="text/javascript">alert("Register fail! Please try again");
                 </script>';
               echo ("<script>location.href='register2.php'</script>");
                      }
                     

                   }


       
           
                } // end fo submit_activate 



 
               } // en of class exists



              } // end of else for conn_use

             $conn_activate->close();








  } // end of else session step1


?>
