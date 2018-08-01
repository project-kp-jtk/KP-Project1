<?php

    class M_exrate extends CI_Model{

        public function __construct(){
            $this->load->database();

        }

        function get_data_sourcebased($source_id){
            $sql_select = "SELECT * FROM exchange_rate WHERE SOURCE='".$source_id."' ORDER BY TANGGAL DESC, MATA_UANG ASC";
            $result = $this->db->query($sql_select);
            return $result;
        }

        function get_data_datebased($source_id){
            $sql_select = "SELECT * FROM exchange_rate WHERE TANGGAL=(SELECT MAX(TANGGAL) FROM exchange_rate WHERE ID_SOURCE='$source_id')";
            $result = $this->db->query($sql_select);
            return $result;
        }

        function insert_data($table, $data, $source){
            $this->db->insert($table, $data);
            }
        }

?>
