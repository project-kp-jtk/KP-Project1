<?php

class C_BI extends CI_Controller
{

  function __construct()
  {
    parent::__construct();
    $this->load->model('m_bi','',TRUE);
  }

  public function display(){
      $data['list_kurs'] = $this->m_bi->get_list_kurs();
      $data['content_view'] = "BI.php";
      $this->load->view('v_template', $data);
  }
}


 ?>
