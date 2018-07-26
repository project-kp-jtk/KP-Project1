<?php

    class M_exrate extends CI_Model{

        public function __construct(){
            $this->load->database();

        }

        function get_list_data(){
            $sql_select = "SELECT * FROM exrate"
        }
    }
    
?>