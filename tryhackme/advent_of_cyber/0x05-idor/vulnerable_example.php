<?php
// Vulnerable IDOR Example - DO NOT USE IN PRODUCTION
session_start();
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

$user_id = $_GET['view_id'] ?? $_SESSION['user_id'];  // No ownership check!

// Simulated database
$users = [
    10 => ["name" => "You", "children" => 2],
    15 => ["name" => "Super Parent", "children" => 10],
    20 => ["name" => "Regular Parent", "children" => 3]
];

if (!isset($users[$user_id])) {
    die("User not found");
}

$user = $users[$user_id];
?>
<h1>Viewing Profile: <?= htmlspecialchars($user['name']) ?></h1>
<p>Number of children: <?= $user['children'] ?></p>
