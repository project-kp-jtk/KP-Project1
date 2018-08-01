<?php

    class M_exrate extends CI_Model{

        public function __construct(){
            $this->load->database();

        }

        function get_data_sourcebased($source_id){
            $sql_select = "SELECT * FROM exchange_rate WHERE SOURCE='".$source_id."' ORDER BY KODE ASC, TANGGAL DESC";
            $result = $this->db->query($sql_select);
            return $result;
        }

        function insert_data($table, $data){
            $this->db->insert($table, $data);
        }

        function get_data_datebased($source_id){
            $sql_select = "SELECT * FROM exchange_rate WHERE DATE(TANGGAL)=(SELECT MAX(DATE(TANGGAL)) FROM (SELECT * FROM exchange_rate WHERE ID_SOURCE=".$source_id.") AS `derived`) AND ID_SOURCE=".$source_id;
            $result = $this->db->query($sql_select);
            return $result;
        }
    }
    
?>