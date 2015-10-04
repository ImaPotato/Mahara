<?php

define('INTERNAL', 1);
define('PUBLIC', 1);
define('JSON', 1);
define('NOSESSKEY', 1);

$response = array('valid' => 'true');
/* cors */
echo $_GET['callback']. '(' . json_encode($response) . ');';  
