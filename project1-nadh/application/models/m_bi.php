<?php
class M_bi extends CI_Model{
  function get_list_kurs(){
      $query = $this->db->query("SELECT * FROM ex_rate ORDER BY id_source");
      return $query;
    }
}

?>
