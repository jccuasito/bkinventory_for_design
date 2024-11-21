<?php
include_once("connections/connection.php");
$con = connection();

$sql = "SELECT DATE_FORMAT(sales_date, '%b') AS month, SUM(sales_quantity_sold) AS sales_quantity_sold 
        FROM Sales
        WHERE MONTH(sales_date) <= 11
        GROUP BY month
        ORDER BY MONTH(sales_date)";
$result = $con->query($sql);

$salesData = array();
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $salesData[] = $row;
    }
}
$con->close();

echo json_encode($salesData);
?>
