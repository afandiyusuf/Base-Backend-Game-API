<?php

$user 		= "root";
$password 	= "";
$server 	= "localhost";
$db_name 	= "tkn_db";

$database = new medoo([
    'database_type' => 'mysql',
    'database_name' => $db_name,
    'server' => $server,
    'username' => $user,
    'password' => $password,
    'charset' => 'utf8'
]);





?>