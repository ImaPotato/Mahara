<?php
define('INTERNAL', 1);
require(dirname(dirname(dirname(__FILE__))) . '/init.php');
define('TITLE', get_string('mobile_login'));

echo"
	<script language='javascript'>
	var config = {
		loggedin:1
				};
	</script>";

$new_token = md5(openssl_random_pseudo_bytes(8));

$old_tokenstring = $USER->get_account_preference('mobileuploadtoken');

$tokenarray = explode('|', trim($old_tokenstring, '|'));

array_push($tokenarray, $new_token);

$new_tokenstring = empty($tokenarray) ? null : ('|' . join('|', $tokenarray) . '|');

set_account_preference($USER->id, 'mobileuploadtoken', $new_tokenstring);

$arr = array ('token'=>$new_token, 'user'=>$USER->get('username'));

$USER->commit();

echo json_encode($arr);