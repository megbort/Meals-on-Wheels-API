<?php

  class Database {
    private $host = "localhost";
    private $username = "root";
    private $password = "";
    private $db_name = "mom_db";

    public $conn;

      //method to get connection
      public function getConnection(){

        $this->conn = null;

        try{
            $this->conn = new PDO("mysql:host=$this->host;dbname=$this->db_name", $this->username, $this->password);
            $this->conn->exec("SET NAMES utf8");
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        }

        catch(PDOException $exception) {
            echo "Connection error:" . $exception->getMessage();
        }

        return $this->conn;

    }
  }

?>