<?php
include 'header.php'; ?>
<!-- Banner -->
		<section id="intro" class="main style1 dark fullscreen">
				<div class="content container 75%">
					<header>
						<h2>We Will Shoot Back</h2>
						<h3> Armed resistance in the Mississippi Freedom Movement </h3>
					</header>
					<p>This website explores political relationships within the Mississippi Freedom Movement<br/>
							 with special attention to activists, grass-root campaigns and local organizations<br />
							All information is from Akinyele Omowale Umoja's <a href="http://www.amazon.com/Will-Shoot-Back-Resistance-Mississippi/dp/0814725244"><strong> We Will Shoot Back</strong>
							</a>.</p>
					<table>
         <tr>
         <td>
	      <?php  $sql = "SELECT ppl_id, photo FROM ppl ORDER BY RAND () LIMIT 1"; $result = $conn->query($sql); if ($result->num_rows > 0) { while($row = $result->fetch_assoc()) { echo "<a href=\"ppl.php#ppl-".$row["ppl_id"]."\">".$row["photo"]; } } else { echo "0 results"; } ?>
        </td>
       <tdzz>
         <?php  $sql = "SELECT org_id, photo FROM organizations ORDER BY RAND () LIMIT 1"; $result = $conn->query($sql); if ($result->num_rows > 0) { while($row = $result->fetch_assoc()) { echo "<a href=\"ppl.php#org-".$row["org_id"]."\">".$row["photo"]; } } else { echo "0 results"; } ?>

    </td>
      <td>
         <?php  $sql = "SELECT camp_id, photo FROM campaigns ORDER BY RAND () LIMIT 1"; $result = $conn->query($sql); if ($result->num_rows > 0) { while($row = $result->fetch_assoc()) { echo "<a href=\"map.php#camp-".$row["camp_id"]."\">".$row["photo"]; } } else { echo "0 results"; } ?>
       </td>
    </tr>
     </table>
  </div>
					<footer>
						<a href="#one" class="button style2 down">More</a>
					</footer>

		<section id="one" class="main style2 right dark fullscreen">
				<div class="content box style2">
					<header>
						<h2>Learn more</h2>
					</header>
					<p>The Notion that the Civil Rights Movementin the Southern United States was a nonviolent movement 
						remains a dominant theme of Civil Rights memory and representation in popular culture. 
						Yet in dozens of Southern communities, Black people picked up arms to defend their leaders, 
						communities and lives.</p>
					<p><strong>Search to learn more</strong></p>
				
					 <?php
include 'footer.php'; ?>
			
</div>
			</section>

