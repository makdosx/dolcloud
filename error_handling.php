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

function FriendlyErrorType($type) 
{ 
    $return =""; 
    if($type & E_ERROR) // 1 // 
        $return.='& E_ERROR '; 
    if($type & E_WARNING) // 2 // 
        $return.='& E_WARNING '; 
    if($type & E_PARSE) // 4 // 
        $return.='& E_PARSE '; 
    if($type & E_NOTICE) // 8 // 
        $return.='& E_NOTICE '; 
    if($type & E_CORE_ERROR) // 16 // 
        $return.='& E_CORE_ERROR '; 
    if($type & E_CORE_WARNING) // 32 // 
        $return.='& E_CORE_WARNING '; 
    if($type & E_COMPILE_ERROR) // 64 // 
        $return.='& E_COMPILE_ERROR '; 
    if($type & E_COMPILE_WARNING) // 128 // 
        $return.='& E_COMPILE_WARNING '; 
    if($type & E_USER_ERROR) // 256 // 
        $return.='& E_USER_ERROR '; 
    if($type & E_USER_WARNING) // 512 // 
        $return.='& E_USER_WARNING '; 
    if($type & E_USER_NOTICE) // 1024 // 
        $return.='& E_USER_NOTICE '; 
    if($type & E_STRICT) // 2048 // 
        $return.='& E_STRICT '; 
    if($type & E_RECOVERABLE_ERROR) // 4096 // 
        $return.='& E_RECOVERABLE_ERROR '; 
    if($type & E_DEPRECATED) // 8192 // 
        $return.='& E_DEPRECATED '; 
    if($type & E_USER_DEPRECATED) // 16384 // 
        $return.='& E_USER_DEPRECATED '; 
    return substr($return,2); 
} 

//echo "error_reporting = " .FriendlyErrorType(ini_get('error_reporting')) ."<br>"; 



  echo '<pre>'; print_r(FriendlyErrorType(ini_get('error_reporting'))); echo '</pre>';


?>
