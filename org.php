<?php  include 'header.php'; ?>
<!-- One -->
			<section id="intro" class="main style1 dark fullscreen">
				<div class="content container 75%">
					<header>
						<h2>Organizations</h2>
					</header>
					<p>Scroll through this list to find out which organizers were affiliated to learn more about how people were invovled in the Mississippi Freedom Movement </p>
				</div>
				<a href="#one" class="button style2 down anchored">Next</a>
			</section>

		<!-- One -->
		
<?php
include ('login.php');	
$query="SELECT * FROM organizations";
$result=$conn->query($query);

if (!$result) die($conn->error);
$rows = $result->num_rows;
for ($j= 0 ; $j< $rows ; ++$j)
{
	$result->data_seek($j);
	$row = $result->fetch_row();
	echo "
    <section id=org-".$row[0]." class='main style3 primary'>";
	echo "<div class='content container' <header> <h2> <a href=".$row[4].">".$row[1]."</a></h2><p>".$row[5]."</p> </header>";
	echo "<table> <tr>";
	$query2= "SELECT first_name, last_name, photo FROM ppl NATURAL JOIN affiliations WHERE org_id=".$row[0];
	$result2 = $conn->query($query2);
	if (!$result2) die($conn->error);
	$rows2 = $result2->num_rows;
	for ($j2 = 0 ; $j2 < $rows2 ; ++$j2)
	{
		
		$result2->data_seek($j2);
		$row2 = $result2->fetch_row();
		echo "<td> <section id=ppl-".$row2[0]."> <a>".$row2[2]."</a> <div class=secret>".$row2[0]." ".$row2[1]."</a></td>";
		
		
	}
	echo "</tr>";
	echo "</table>";
	echo "<a href=#org-".$row[0]. "class='button style2 down anchored'>Scroll down</a>";
	echo "</section>";

	}
		
		
?> 

        <?php  include 'footer.php'; ?>