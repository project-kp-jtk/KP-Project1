<?php

class C_exrate extends CI_Controller
{

  function __construct()
  {
    parent::__construct();
    $this->load->model('m_exrate','',TRUE);
  }

  public function display(){
      $data['list_kurs'] = $this->m_exrate->get_list_kurs_BI();
      $data['content_view'] = "BI.php";
      $this->load->view('v_template', $data);
  }
}


 ?>
