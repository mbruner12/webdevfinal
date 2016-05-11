<?php  include 'header.php'; ?>
<!-- One -->
			<section id="intro" class="main style1 dark fullscreen">
				<div class="content container 75%">
					<header>
						<h2>People</h2>
					</header>
					<p>Scroll through this list to explore the work of major organizers in the Mississippi Freedom Movement </p>
				</div>
				<a href="#one" class="button style2 down anchored">Next</a>
			</section>

		<!-- One -->
		
<?php
include ('login.php');	
$query="SELECT * FROM ppl";
$result=$conn->query($query);

if (!$result) die($conn->error);
$rows = $result->num_rows;
for ($j= 0 ; $j< $rows ; ++$j)
{
	$result->data_seek($j);
	$row = $result->fetch_row();
	echo "
    <section id=ppl-".$row[0]." class='main style3 primary'>";
	echo "<div class='content container'> <header> <h2>".$row[2]." ".$row[1]."</h2></header>";
	echo $row[4];
	echo "<table> <tr>";
	$query2= "SELECT org_name, photo FROM organizations NATURAL JOIN affiliations WHERE ppl_id=".$row[0];
	$result2 = $conn->query($query2);
	if (!$result2) die($conn->error);
	$rows2 = $result2->num_rows;
	for ($j2 = 0 ; $j2 < $rows2 ; ++$j2)
	{
		
		$result2->data_seek($j2);
		$row2 = $result2->fetch_row();
		echo "<td><a>".$row2[1]."</a><div class=secret>".$row2[0]."</div></td>";
		

	}
	echo "</tr>";
	echo "</table>";
	echo "<a href=#org-".$row[0]. "class='button style2 down anchored'>Scroll down</a></section>";
	echo "</div>";

	}
		
		
?> 

        <?php  include 'footer.php'; ?>