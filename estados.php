<?php

require_once 'conn_db.php';

$query = "SELECT * FROM stc_estados";
$result = mysqli_query($conn, $query);

if (!$result) {
    die('Query Failed'. mysqli_error($conn));
}

$json = array();

while ($row = mysqli_fetch_array($result)) {
    $json[] = array(
        'id' => $row['id_estado'],
        'estado' => $row['estado'],
        'capital' => $row['capital'],
        'estadis' => $row['estadis1'],
        'latitud' => $row['latitud'],
        'longitud' => $row['longitud']
  );
};
  
$jsonstring = json_encode($json);

echo $jsonstring;