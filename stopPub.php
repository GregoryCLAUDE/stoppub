<?php
$servername = "localhost";
$database = "stopPub";
$username = "root";
$password = "root";

//create a connection using PDO
try {

  $conn = new PDO('mysql:host=localhost;dbname=stopPub', $username, $password);
  print "Connected successfully";

} catch (\Exception $e) {
print "Error!:" .$e->getMessage()."<br/>";

}

//create link to $database
$users = $conn->query('SELECT * FROM user');
$alerts = $conn->query('SELECT * FROM alert');
$company = $conn->query('SELECT * FROM company');

//create class $users
class user {

}

//class alert
class alert{

  var $id_alert_type;
  var $user_id;
  var $id_company;

}

//class $company
class company{

  var $id_social_siege;
}


 ?>
