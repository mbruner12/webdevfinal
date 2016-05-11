
<?php
include 'header.php';

?>

<div class=searchtitle> Results </div>

<?php
include ('login.php');

if (isset($_GET['submit']))
	{ //check if the form has been submitted
	if (empty($_GET['name']))
		{
		echo "<p>Please fill out all of the form fields!</p>";
		}
	  else
		{
		$conn = new mysqli($hn, $un, $pw, $db);
		if ($conn->connect_error) die($conn->connect_error);
		$name = sanitizeMySQL($conn, $_GET['name']);
		$query = "SELECT ppl_id, photo, last_name, first_name FROM ppl WHERE last_name LIKE '%$name%' OR first_name LIKE '%$name%'";
		$result = $conn->query($query);
		if (!$result)
			{
			die("Database access failed: " . $conn->error);
			}
		  else
			{
			$rows = $result->num_rows;
			if ($rows)
				{
					while ($row = $result->fetch_assoc()) {
						echo "<aside> <h2> People </h2> <a href=\'ppl.php#ppl-'".$row['ppl_id'].">".$row['photo']."<br><h1>".$row['first_name']." ".$row['last_name']."</h1></a></aside>";
					}
				}
			  else
				{
				echo "<aside> <h2> People </h2> <p>No results!</p></aside>";
				}
			}
		}
	}

if (isset($_GET['submit']))
	{ //check if the form has been submitted
	if (empty($_GET['name']))
		{
		echo "<p>Please fill out all of the form fields!</p>";
		}
	  else
		{
		$conn = new mysqli($hn, $un, $pw, $db);
		if ($conn->connect_error) die($conn->connect_error);
		$name = sanitizeMySQL($conn, $_GET['name']);
		$query2 = "SELECT org_id, org_name, photo FROM organizations WHERE org_name LIKE '%$name%' OR acronym LIKE '%$name%'";
		$result2 = $conn->query($query2);
		if (!$result2)
			{
			die("Database access failed: " . $conn->error);
			}
		  else
			{
			$rows2 = $result2->num_rows;
			if ($rows2)
				{
				while ($row2 = $result2->fetch_assoc()) {
					echo "<aside> <h2> Organizations </h2> <a href=\'org.php'>".$row2['photo']."<br><h1>".$row2['org_name']."</h1></a></aside>";
					}
				}
			  else
				{
				echo "<aside> <h2> Organizations </h2> <p> No results! </p></aside>";
				}
			}
		}
	}

if (isset($_GET['submit']))
	{ //check if the form has been submitted
	if (empty($_GET['name']))
		{
		echo "<p>Please fill out all of the form fields!</p>";
		}
	  else
		{
		$conn = new mysqli($hn, $un, $pw, $db);
		if ($conn->connect_error) die($conn->connect_error);
		$name = sanitizeMySQL($conn, $_GET['name']);
		$query3 = "SELECT camp_name FROM campaigns WHERE camp_name LIKE '%$name%'";
		$result3 = $conn->query($query3);
		if (!$result3)
			{
			die("Database access failed: " . $conn->error);
			}
		  else
			{
			$rows3 = $result3->num_rows;
			if ($rows3)
				{
				echo "<h2>Results</h2>";
				while ($row3 = $result3->fetch_row())
					{
					echo "<aside> <h2> Campaigns </h2>
					<a href=\"map.php#camp-" . $row3[0] . "\">" . $row3[1] . "</a><h1>" . $row3[2] . "</h1></aside>";
					}
				}
			  else
				{
				echo "<aside> <h2> Campaigns </h2> <p>No results!</p></aside>";
				}
			}
		}
	}

function sanitizeString($var)
	{
	$var = stripslashes($var);
	$var = strip_tags($var);
	$var = htmlentities($var);
	return $var;
	}

function sanitizeMySQL($connection, $var)
	{
	$var = $connection->real_escape_string($var);
	$var = sanitizeString($var);
	return $var;
	}

?>

<aside>
	<h2>Search Again</h2> 
	<form method="get" action="search.php">
	<fieldset>
		<legend>Search</legend>
		<input type="text" name="name" required><br /> 
		<input type="submit" name="submit">
	</fieldset>
	</form>
</aside>

	<div class="container">
        	<p> &copy; 2015 m.bruner </p>
    </div>
</footer>
</div>

<!-- END OF PAGE-->
        
</body>
</html>
 
