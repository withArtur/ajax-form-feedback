<?php
define('DS', DIRECTORY_SEPARATOR);
require_once dirname(dirname(__FILE__)).DS.'libraries'.DS.'mysqli.php';
header('Content-type: application/json');

$db = new Database_Mysqli('localhost', 'root', '', 'gianlucacosetta');

$name = $_POST['name'];
$surname = $_POST['surname'];
$message = $_POST['message'];

$feedbackArray = array(
	'id' => null,
	'name' => $name,
	'surname' => $surname,
	'message' => $message,
	'status' => 'INREVISION',
	//'ts_created' => date('Y-m-d H:i:s'),
	//'ts_edit' => date('Y-m-d H:i:s')
);

$last_id = $db->insert('feedbacks', $feedbackArray);

$db->query("SELECT * FROM `feedbacks` WHERE id = {$last_id}");
$last_feedback = $db->fetch();

if($last_id > 0){
	mail('withArtur@gmail.com', 'Inserito un Feedback sul sito ....', 'Testo della mail magari un link alla pagina da aprire ...');
	echo json_encode(array('success' => true, 'feedback' => $last_feedback));
	return;
} else {
	echo json_encode(array('success' => false));
	return;
}
