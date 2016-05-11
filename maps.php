<?php
include 'header.php'; ?>
		      		<!-- Intro -->
			<section id="intro" class="main style1 dark fullscreen">
				<div class="content container 75%">
					<header>
						<h2>Maps and Campaigns</h2>
					</header>
					<p>Explore <strong>  sites of resistance</strong> on this map from <a href="onevote.sncc"> One Person One Vote Project </a> a collaboration between the SNCC Legacy Project and Duke University</p>
					<footer>
						<a href="#one" class="button style2 down">More</a>
					</footer>
				</div>
			</section>

		<!-- One -->
			<section id="one" class="main style2 right dark fullscreen">
					<iframe src="https://www.google.com/maps/d/embed?mid=1uULFLoo0W6twViRUczdtDxFcNK0" width="900" height="600"> </iframe> <br>	
				<p><a href="#work" class="button style2 down anchored">More</a></p>
			</section>

		
		<!-- Work -->
			<section id="work" class="main style3 primary">
				<div class="content container">
					<section id="intro" class="main style1 dark fullscreen">
				<div class="content container 75%">
					<header>
						<h2>Campaigns</h2>
					</header>
					<p> Scroll down to learn about campaigns related to locations on the map</p>
				</div>
			
						<?php
include ('login.php');	
$query="SELECT * FROM locations";
$result=$conn->query($query);

if (!$result) die($conn->error);
$rows = $result->num_rows;
for ($j= 0 ; $j< $rows ; ++$j)
{
	$result->data_seek($j);
	$row = $result->fetch_row();
	echo "
    <section id=ppl-".$row[0]." class='main style3 primary'>";
	echo "<div class='content container'> <header> <h2>".$row[1].", ".$row[2]."</h2></header>";
	echo "<table> <tr>";
	$query2= "SELECT camp_name, photo FROM campaigns NATURAL JOIN camp_loc WHERE loc_id=".$row[0];
	$result2 = $conn->query($query2);
	if (!$result2) die($conn->error);
	$rows2 = $result2->num_rows;
	for ($j2 = 0 ; $j2 < $rows2 ; ++$j2)
	{
		
		$result2->data_seek($j2);
		$row2 = $result2->fetch_row();
		echo "<td><h3>".$row2[0]."</h3><p>".$row2[1]."</p></td>";
		

	}
	echo "</tr>";
	echo "</table>";
	echo "<a href=#org-".$row[0]. "class='button style2 down anchored'>Scroll down</a></section>";
	echo "</div>";

	}
	?>
</section>
<?php
	include('footer.php');
	?>