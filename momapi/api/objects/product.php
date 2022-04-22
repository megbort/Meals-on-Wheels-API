<?php

    // setup Procuct class
    class Product{
        private $conn;

        //object properties
        public $id; 
        public $name; 
        public $sku; 
        public $image; 
        public $category; 
        public $description; 
        public $retail;
    
        // database connection passed in constructor
        public function __construct($db){
            $this->conn = $db;
        }

        function read($sort_term, $filter_term, $keyword_param, $sku_param){
          
          $this->sort = $this->evalSortTerm($sort_term);
          $this->filter = $this->evalFilterTerm($filter_term);
          $this->keyword = $this->evalKeywordTerm($keyword_param);
          $this->sku = $this->evalSkuTerm($sku_param);

            //mySQL statment
            $query = "
                SELECT id, name, sku, image, category, description, retail
                FROM product
                WHERE $this->filter AND $this->keyword AND $this->sku
                ORDER BY $this->sort
            ";
            $stmt = $this->conn->prepare($query);

            // for testing
            // die($query);
            
            try{
                // execute the query
                $stmt->execute();
                return $stmt;
            }
            catch(PDOException $e) {
                // print error and returning false
                return false;
            }
        }

        // function to create the sort params with SQL conditions        
        function evalSortTerm($sort){
          switch($sort) {
            case "id-asc": 
              return "id ASC";
            case "id-desc": 
              return "id DESC";
            case "name-asc": 
              return "name ASC";
            case "name-desc": 
              return "name DESC";
            case "sku-asc": 
              return "sku ASC";
            case "sku-desc": 
              return "sku DESC";
            case "category-asc": 
              return "category ASC";
            case "category-desc": 
              return "category DESC";
            case "retail-asc": 
              return "retail ASC";
            case "retail-desc": 
              return "retail DESC";
            default: 
              return "id ASC";
          }
        }        

        // function to create the filter with SQL conditions
        function evalFilterTerm($filter){
          switch($filter) {
            case "bakery":
              return "category = \"bakery\"";
            case "dairy":
              return "category = \"dairy\"";
            case "frozen":
              return "category = \"frozen\"";
            case "meat":
              return "category = \"meat\"";
            case "produce":
              return "category = \"produce\"";
            case "seafood":
              return "category = \"seafood\"";
            case "snacks":
              return "category = \"snacks\"";
            default:
              return "true";
          }
        }

        // function to create the keyword input with SQL conditions             
        function evalKeywordTerm($keyword) {
          return 
            "name LIKE '%$keyword%'";
        }

        // function to create the sku filter     
        function evalSkuTerm($sku) {
          if($sku) {
            return "sku = $sku";
          } else {
            return "true";
          }
        }

    } // close the Product class
?>