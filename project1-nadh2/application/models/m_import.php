<?php

class M_import extends CI_Model{

    public function __construct(){

    }

    function insert_data($table, $data){
        $this->db->insert($table, $data);
    }

    function importing(){
        $open = $_FILES['file']['tmp_name'];
        $file = fopen($open, 'r');
        $i = 0;
        while (!feof($file)){
          $getTextLine = fgets($file);
          if($getTextLine != null && $i > 4){
            $explodeLine = explode("\t", $getTextLine);
            list($dump,$cl,$exrate,$from,$to,$valid,$exch,$ratio,$ratio_b) = $explodeLine;
            $valid = str_replace(".", "-", $valid);
            $valid = strtotime($valid);
            $valid = date('Y-m-d', $valid);
            $exch = floatval(preg_replace("/[^-0-9\.]/","",$exch));
            $data = array(
              'cl' => $cl,
              'exrate' => $exrate,
              'from_curr' => $from,
              'to_curr' => $to,
              'valid' => $valid,
              'exch' => $exch,
              'ratio' => $ratio,
              'ratio_b' => $ratio_b
            );
            $this->insert_data('import', $data);
          }
          $i++;

        }
    }

    function show_data_import(){
      if($this->input->post('tgl') != null){
        $sql_select = "SELECT * FROM import WHERE valid='".$this->input->post('tgl')."' ORDER BY from_curr ASC";
    }else {
        $sql_select = "SELECT * FROM import WHERE valid=(SELECT MAX(valid) FROM import) ORDER BY exrate ASC, from_curr ASC";
      }
      $result = $this->db->query($sql_select);
      return $result;
    }
  }
 ?>
