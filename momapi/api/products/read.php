<?php

    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset-UTF-8");

    //include database and object files
    include_once '../config/database.php';
    include_once '../objects/product.php';

    //include database and location object
    $database = new Database();
    $db = $database->getConnection();

    //initialize object with the db connection
    $product = new Product($db);

    // sanitize the query parameters
    $_GET = filter_input_array(INPUT_GET, FILTER_SANITIZE_FULL_SPECIAL_CHARS);

    // get all our prameter statements
    $sort_param = strtolower(isset($_GET["sort"]) ? $_GET["sort"] : "");
    $filter_param = strtolower(isset($_GET["filter"]) ? $_GET["filter"] : "");
    $keyword_param = strtolower(isset($_GET["keyword"]) ? $_GET["keyword"] : "");
    $sku_param = strtolower(isset($_GET["sku"]) ? $_GET["sku"] : "");

    // the executed query is returned by the read member
    $stmt = $product->read($sort_param, $filter_param, $keyword_param, $sku_param);

    //capture the number of records
    $num =$stmt->rowCount();

    //check if more than 0 records
    if($num>0){
        //product array will be the JSON result
        $product_arr=array();
        //root member to give the count
        $product_arr["count"]=$num;
        //root member which is an array of the products
        $product_arr["products"]=array();

        // loop and populate the array
        // retrieve our table of contents
        // fetch() returns and associative array so we can use keys instead of indecies
        while($row = $stmt->fetch(PDO::FETCH_ASSOC)){
            //extract() is native PHP method that extracts all the array memebers as variables
            extract($row);

            // so here we can use them like variables even though we havent declared them
            $product_item=array(
                "id" => $id,
                "name" => $name,
                "sku" => $sku,
                "image" => $image,
                "category" => $category,
                "description" => $description,
                "retail" => $retail,
            );
        
            //push onto the result each product
            array_push($product_arr["products"],$product_item);
        }

        //set response code - 200 ok
        http_response_code(200);
        //return products data in json format
        echo json_encode($product_arr);
    }
    else {
        // set response code - 404 not found
        http_response_code(404);

        // tell the user no products found
        echo json_encode(
            array("message" => "No products found.")
        );
    }

?>