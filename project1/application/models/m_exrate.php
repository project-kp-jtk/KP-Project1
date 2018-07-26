<?php
class M_exrate extends CI_Model{
  function get_list_kurs_BI(){
      $query = $this->db->query("SELECT * FROM ex_rate WHERE id_source=1 ORDER BY tanggal");
      return $query;
    }
}

?>
