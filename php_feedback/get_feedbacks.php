<?php
define('DS', DIRECTORY_SEPARATOR);
require_once dirname(dirname(__FILE__)).DS.'libraries'.DS.'mysqli.php';
header('Content-type: application/json');

$db = new Database_Mysqli('localhost', 'root', '', 'gianlucacosetta');

$db->query("SELECT * FROM `feedbacks` ORDER BY id");
$feedbacks = $db->fetchAll();

echo json_encode(array('success' => true, 'feedbacks' => $feedbacks));
return;
