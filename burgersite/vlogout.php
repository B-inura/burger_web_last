<?php
session_start();
session_destroy();
header("Location: vlogin.html");
exit;
?>
