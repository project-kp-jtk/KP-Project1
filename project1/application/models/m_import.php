<?php

class M_import extends CI_Model{

    public function __construct(){
    }

    function insertDB($table, $data){
        $this->db->insert($table, $data);
    }
  }
 ?>
