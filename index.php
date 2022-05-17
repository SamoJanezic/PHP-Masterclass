<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<?php
    $i = 1;
    $fruits = ['Apple', 'Orange', 'Lemon', 'Banana', 'Kiwi'];
    sort($fruits);
    array_push($fruits, 'Avocado', 'Blueberry');

    foreach($fruits as $fruit) {
        if ( in_array($fruit[0], ['A', 'E', 'I', 'O', 'U']) ) {
            echo 'Fruit Nr ' . $i . ': ' .$fruit . ' ' . '<br>';
            $i++;
        }
    }

    $fruit_number = [
        'Apple' => 23,
        'Orange' => 4,
        'Lemon' => 3,
        'Banana' => 43,
        'Kiwi' => 1
        ];

    arsort($fruit_number);
    $k = array_keys($fruit_number);
    //var_dump($k);
    echo $k[0];
?>
</body>
</html>