<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>We Will Shoot Back</title>	
	<link href='https://fonts.googleapis.com/css?family=Cabin|Lobster' rel='stylesheet' type='text/css'>
	<link href="style.css" rel="stylesheet" type="text/css">
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
	</head>
	</head>
	<body class="landing">
			<!-- Page Wrapper -->
			<div id="page-wrapper">

		<!-- Header -->
			<header id="header">

				<!-- Logo -->
					<h1 id="logo">We Will Shoot Back </h1>

				<!-- Nav -->
					<nav id="nav">
						<ul>
							<li><a href="#intro">Home</a></li>
							<li><a href="ppl.php">People</a></li>
							<li><a href="org.php">Organizations</a></li>
							<li><a href="maps.php">Map</a></li>
							<li><a href="search.php">Search</a></li>
						</ul>
					</nav>

			</header>
		<?php
//login
			include ('login.php');	
			$conn = new mysqli($hn, $un, $pw, $db);
			if ($conn->connect_error) die($conn->connect_error);
		?>
