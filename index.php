<?php require_once 'core/dbConfig.php'; ?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<style>
		table, th, td {
		  border:1px solid black;
		  padding:2px;
		  text-align: center;
		}
	</style>
</head>
<body>
	<?php
//number 3	
	// Selecting the total prescriptions that each customer has under the optometrist with an ID of '1'
//	$stmt = $pdo->prepare("SELECT
//							Customers.last_name AS customer_surname,
//							Optometrists.last_name AS optometrist_surname,
//							COUNT(Prescriptions.eye_exam_date) AS total_prescriptions
//						FROM Customers
//						INNER JOIN Prescriptions ON
//							Customers.customer_id = Prescriptions.customer_id
//						INNER JOIN Optometrists ON
//							Prescriptions.optometrist_id = Optometrists.optometrist_id
//						WHERE Optometrists.optometrist_id = 1
//						GROUP BY customer_surname
//						ORDER BY total_prescriptions DESC;
//						");

//	if ($stmt->execute()) {
//	echo "<pre>";
//	print_r($stmt->fetchAll());
//	echo "<pre>";
//	}


//number 4	
	//Selecting the total sales made between January 1, 2024 and September 30, 2024 that were paid with a credit card
//	$query = "SELECT SUM(total_amount) AS total_sales
//			FROM Orders
//			WHERE payment_date
//			BETWEEN '2024-01-01' AND '2024-09-30’'
//			AND payment_method = 'Credit Card'";

//	 $stmt = $pdo->prepare($query);

//	 if ($stmt->execute()) {
//	 	$total_sales = $stmt->fetch();
//	 	echo "<pre>";
//	 	print_r($total_sales);
//	 	echo "<pre>";
//	 }

	
//number 5
	// Inserting a new product into the Products table
//	$query = "INSERT INTO Products (product_id, product_name, category, price, stock_quantity) VALUES (?,?,?,?,?)";

//	 $stmt = $pdo->prepare($query);

//	 $executeQuery = $stmt->execute(
//	 	[8,"Anti Blue Light Glasses","Eyewear",2000.00 , 10]
//		);

//	 if ($executeQuery) {
//	 	echo "Query successful!";
//	 	}
//	 else {
//	 	echo "Query failed";
//	}



//number 6
	// Deleting an order transaction with an ID of '12' from the Orders table
//	$query = "DELETE FROM Orders 
//	 		  WHERE order_id = 12
//	 		  ";

//	 $stmt = $pdo->prepare($query);

//	 $executeQuery = $stmt->execute();

//	 if ($executeQuery) {
//	 	echo "Deletion successful!";
//		}
//	 else {
//	 	echo "Query failed";
//		}


//number 7
	// Updating the information of an optometrist with an ID of '5' from the Optometrists table
//	$query = "UPDATE Optometrists 
//	 		  SET first_name = ?, last_name = ?, contact_number = ?, email_address = ?, license_number = ?
//	 		  WHERE optometrist_id = 5
//	 		  ";

//	 $stmt = $pdo->prepare($query);

//	 $executeQuery = $stmt->execute(
//	 	["Marithei", "Villanueva", "09065420000", "vmarithei@gmail.com", "872145-MV"]
//	 );

//	 if ($executeQuery) {
//	 	echo "Update successful!";
//	 }
//	 else {
//	 	echo "Query failed";
//	 }


//number 8
	// Getting the number of patients/customers handled by each optometrist
	$query = "SELECT
	 			CASE 
	 				WHEN optometrist_id = 1 THEN 'Julie Deegin'
	 				WHEN optometrist_id = 2 THEN 'Leopold Julian'
	 				WHEN optometrist_id = 3 THEN 'Valida Willstrop'
	 				WHEN optometrist_id = 4 THEN 'Sandie Leming'
	 				WHEN optometrist_id = 5 THEN 'Marithei Villanueva'	 				
	 			END AS optometrist, COUNT(*) AS patientCount
	 			FROM Prescriptions
	 			GROUP BY optometrist
	 			ORDER BY patientCount DESC;
	 		  ";

	 $stmt = $pdo->prepare($query);
	 $executeQuery = $stmt->execute();

	 if ($executeQuery) {
	 	$Prescribed = $stmt->fetchAll();
	 }

	 else {
	 	echo "Query failed";
	 }
	?>

	<table>
		<tr>
			<th>Optometrist</th>
			<th>Patient Count</th>
		</tr>
		<?php foreach ($Prescribed as $row) { ?>
		<tr>
			<td><?php echo $row['optometrist']; ?></td>
			<td><?php echo $row['patientCount']; ?></td>
		</tr>
		<?php } ?>
	</table> 
</body>
</html>

