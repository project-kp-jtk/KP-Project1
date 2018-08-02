<?php

class M_import extends CI_Model{

    public function __construct(){
        $this->load->database();
    }

    function insertDB($table, $data){
        $this->db->insert($table, $data);
    }
  }
 ?>
