<?php 

$filename = $argv[1];
$checkip = $argv[2];

$ranges = file($filename, FILE_IGNORE_NEW_LINES);

foreach($ranges as $range){
	@list($ip, $len) = explode('/', $range);

	if (($min = ip2long($ip)) !== false && !is_null($len)) {
	  $clong = ip2long($checkip);
	  $max = ($min | (1<<(32-$len))-1);
	  if ($clong > $min && $clong < $max) {
	    echo $range;
	  }
	}
}
