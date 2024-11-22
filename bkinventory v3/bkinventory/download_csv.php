<?php
include_once("connections/connection.php");
$con = connection();

function getSalesDataForCSV($filter, $con) {
    $currentDate = date("Y-m-d");

    if ($filter == 'today') {
        $sql = "SELECT p.product_name, s.sales_total_amount, s.sales_quantity_sold, s.sales_total_invested_price, s.sales_date 
                FROM Sales s
                JOIN Products p ON s.product_id = p.product_id
                WHERE DATE(s.sales_date) = '$currentDate'";
    } elseif ($filter == 'this_week') {
        $startOfWeek = date("Y-m-d", strtotime('monday this week'));
        $sql = "SELECT p.product_name, s.sales_total_amount, s.sales_quantity_sold, s.sales_total_invested_price, s.sales_date 
                FROM Sales s
                JOIN Products p ON s.product_id = p.product_id
                WHERE s.sales_date BETWEEN '$startOfWeek' AND '$currentDate'";
    } elseif ($filter == 'this_month') {
        $startOfMonth = date("Y-m-01");
        $sql = "SELECT p.product_name, s.sales_total_amount, s.sales_quantity_sold, s.sales_total_invested_price, s.sales_date 
                FROM Sales s
                JOIN Products p ON s.product_id = p.product_id
                WHERE s.sales_date BETWEEN '$startOfMonth' AND '$currentDate'";
    } elseif ($filter == 'this_year') {
        $startOfYear = date("Y-01-01");
        $sql = "SELECT p.product_name, s.sales_total_amount, s.sales_quantity_sold, s.sales_total_invested_price, s.sales_date 
                FROM Sales s
                JOIN Products p ON s.product_id = p.product_id
                WHERE s.sales_date BETWEEN '$startOfYear' AND '$currentDate'";
    } else {
        $sql = "SELECT p.product_name, s.sales_total_amount, s.sales_quantity_sold, s.sales_total_invested_price, s.sales_date 
                FROM Sales s
                JOIN Products p ON s.product_id = p.product_id"; // No filter, return all data
    }

    $result = $con->query($sql);
    $salesData = [];

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $salesData[] = $row;
        }
    } else {
        error_log("No sales data found for filter: " . $filter); // Debugging: Log if no data found
    }

    return $salesData;
}

if (isset($_POST['csv_filter'])) {
    $filter = $_POST['csv_filter'];
    $salesData = getSalesDataForCSV($filter, $con);

    error_log("Filter: " . $filter . " - Data count: " . count($salesData)); // Debugging: Log data count

    $filename = $filter . "_sales_data.csv";

    header('Content-Type: text/csv');
    header('Content-Disposition: attachment; filename="' . $filename . '"');

    $output = fopen('php://output', 'w');
    // Make sure to include product_name in the header
    fputcsv($output, ['Product Name', 'Total Amount', 'Quantity Sold', 'Total Invested Price', 'Sales Date']);

    foreach ($salesData as $row) {
        // Ensure that the keys are correct here
        fputcsv($output, [
            $row['product_name'],  // Output Product Name
            $row['sales_total_amount'], 
            $row['sales_quantity_sold'], 
            $row['sales_total_invested_price'], 
            $row['sales_date']
        ]);
    }

    fclose($output);
    exit();
}


?>
