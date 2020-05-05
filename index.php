<?php
$filename = basename($_SERVER['REQUEST_URI']);
if(empty($filename) || $filename == "dashboard.php"){ $filename = "dashboard.php"; }
include("header.php");
include($filename.".php");
include("footer.php");