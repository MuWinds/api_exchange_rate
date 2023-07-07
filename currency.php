<?php
$param = $_GET['currency'];
$arraylist=array("GBP","HKD","USD","CHF","DEM","FRF","SGD","SEK","DKK","NOK","JPY","CAD","AUD","EUR","MOP","PHP","THB","NZD","KRW","RUB","MYR","TWD","ESP","ITL","NLG","BEF","FIM","INR","IDR","BRL","AED","INR","ZAR","SAR","TRY");
$array_key=array_keys($arraylist,$param);
//设置数据库
$servername = "localhost";
$username = "username";
$password = "passsword";
$dbname = "dbname";
 
try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $sql = "SELECT v FROM currency_now where k=$array_key[0]"; 
    $result_query = $conn->query($sql);
    $result = $result_query->fetch();
}
catch(PDOException $e) {
    echo "Error: " . $e->getMessage();
}
print_r($result["v"]);