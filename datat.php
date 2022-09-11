<?php
    
//Necessary Information To Connect To The DataBase 
$Server_name = "localhost";
$User_name = "root";
$Password = "";
$Db_name = "tree_view";

//Option For Preventing errors and displaying correct data (such as Persian data)
$options = array(
    PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES UTF8",
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
);

//Connect to the database 
$con = new PDO("mysql:host=$Server_name;dbname=$Db_name", "$User_name", "$Password", $options);

//Get All Parents Or Branch Root 
$parents = $con->query("select * from category where catid = 0")->fetchAll(PDO::FETCH_ASSOC);


function TreeView($arr){
    //Access To Variable Connection To DataBase
    global $con;

    echo "<ul>";
    //$arr Is A Nested Array Where We Should Access To Value
    //Each Value Is An Array
    foreach($arr as $key => $value){

        echo "<li>" . $value["title"] . "</li>";

        //Checking That Array To Find A Child
        $child =  $con->query("select * from category where catid = " . $value["id"])->fetchAll(PDO::FETCH_ASSOC);

        //If Our Array Has A Child, It Calls Its Own Function
        //This Process Continues Until There Are No More Children
        if($child)
            TreeView($child);

    }
    echo "</ul>";
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Show Data As tree View</title>
    <style>
        li{
            margin: 10px 0;
        }
    </style>
</head>
<body>

<?php
    TreeView($parents);
?>
    
</body>
</html>