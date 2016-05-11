
	
<footer>
	<form method="get" action="search.php">
	<fieldset>
		<legend> Search here! </legend>
		<input type="text" name="name" required><br> 
		<input type="submit" name="submit">
	</fieldset>
</form>
<?php
			$result->close();
			$conn->close();
?>

	<div class="container">
        	<p> &copy; 2015 m.bruner </p>
    </div>
</footer>
</div>

	<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>        
</body>
</html>