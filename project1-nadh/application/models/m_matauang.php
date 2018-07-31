<?php

    class M_matauang extends CI_Model{

        public function __construct(){
            $this->load->database();

        }

        function get_data($curr){
            $sql_select = "SELECT * FROM matauang WHERE nama_matauang LIKE '".$curr."'";
            $result = $this->db->query($sql_select);
            return $result;
        }

    }
    
?>