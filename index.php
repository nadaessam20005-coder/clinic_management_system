<!DOCTYPE html>
<html>
<head>
    <title>Clinic Management</title>
    <style>
        body { font-family: Arial; padding: 20px; }
        table { border-collapse: collapse; width: 80%; margin: 20px 0; }
        th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
        th { background-color: #f2f2f2; }
        form { margin: 20px 0; }
        input { padding: 8px; margin-right: 10px; }
        button { padding: 8px 15px; background: #4CAF50; color: white; border: none; }
    </style>
</head>
<body>
    <h1>Patient Records</h1>
    
    <!-- Form to Add New Patient -->
    <form action="add_patient.php" method="POST">
        <input type="text" name="first_name" placeholder="First Name" required>
        <input type="text" name="last_name" placeholder="Last Name" required>
        <input type="text" name="phone" placeholder="Phone" required>
        <button type="submit">Add Patient</button>
    </form>
    
    <!-- Display Patients from MySQL -->
    <table>
        <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Phone</th>
        </tr>
        <?php
        $conn = new mysqli("localhost", "root", "", "medical_clinic");
        if ($conn->connect_error) die("Connection failed: " . $conn->connect_error);
        
        $sql = "SELECT * FROM patient";
        $result = $conn->query($sql);
        
        while ($row = $result->fetch_assoc()) {
            echo "<tr>
                <td>{$row['patient_id']}</td>
                <td>{$row['first_name']}</td>
                <td>{$row['last_name']}</td>
                <td>{$row['phone_number']}</td>
            </tr>";
        }
        $conn->close();
        ?>
    </table>
</body>
</html>