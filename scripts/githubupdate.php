<?php
$output1 = shell_exec('git --git-dir=/var/www/ams-core.git fetch --verbose 2>&1');
echo "<pre>$output1</pre>";
$output2 = shell_exec('git --git-dir=/var/www/ams-core-debian.git fetch  --verbose 2>&1');
echo "<pre>$output2</pre>";
?>
