<?php
$conn = new mysqli("localhost", "root", "", "medical_clinic");
if ($conn->connect_error) die("Connection failed: " . $conn->connect_error);

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $phone = $_POST['phone'];
    
    $sql = "INSERT INTO patient (first_name, last_name, phone_number) VALUES ('$first_name', '$last_name', '$phone')";
    if ($conn->query($sql) === TRUE) {
        header("Location: index.php"); // Redirect back
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}
$conn->close();
?>
