<?php

    class M_exrate extends CI_Model{

        public function __construct(){
            $this->load->database();

        }

        function get_data_sourcebased($source_id){
          if($this->input->post('tgl') != null){
            $sql_select = "SELECT * FROM exchange_rate WHERE DATE(TANGGAL)='".$this->input->post('tgl')."' AND SOURCE='".$source_id."'";
          }else {
            $sql_select = "SELECT * FROM exchange_rate WHERE DATE(TANGGAL)=(SELECT MAX(DATE(TANGGAL)) FROM (SELECT * FROM exchange_rate WHERE SOURCE='".$source_id."') AS `derived`) AND SOURCE='".$source_id."'";
          }
          $result = $this->db->query($sql_select);
          return $result;
        }

        function insert_data($table, $data){
            $this->db->insert($table, $data);
        }

        function get_data_datebased($source_id){
            $sql_select = "SELECT * FROM exchange_rate WHERE DATE(TANGGAL)=(SELECT MAX(DATE(TANGGAL)) FROM (SELECT * FROM exchange_rate WHERE ID_SOURCE='".$source_id."') AS `derived`) AND ID_SOURCE='".$source_id."'";
            $result = $this->db->query($sql_select);
            return $result;
        }

        function getCurr($currency, $source_id){
          if($this->input->post('tgl') != null){
            $sql_select = "SELECT * FROM exchange_rate WHERE DATE(TANGGAL)='".$this->input->post('tgl')."' AND SOURCE='".$source_id."' AND KODE='".$currency."'";
          }else {
            $sql_select = "SELECT * FROM exchange_rate WHERE DATE(TANGGAL)=(SELECT MAX(DATE(TANGGAL)) FROM (SELECT * FROM exchange_rate WHERE SOURCE='".$source_id."') AS `derived`) AND SOURCE='".$source_id."' AND KODE='".$currency."'";
          }
          $result = $this->db->query($sql_select);
          return $result;
        }
    }

?>
