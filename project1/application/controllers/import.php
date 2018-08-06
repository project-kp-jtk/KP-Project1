<?php
  class Import extends CI_Controller{

    function __construct(){
      parent::__construct();
      $this->load->model('m_import');
      $this->load->model('m_exrate');
      $this->load->helper(array('form', 'url'));
    }

    function index(){
      $data['content_view'] = "import_view.php";
      $this->load->view('template',$data);
    }

    function import_file(){
        $this->m_import->importing();
        redirect(base_url('index.php/import/display_import/'));
    }

    function display_import(){
      $tgl = $this->input->post('tgl');
      $data['list_import'] = $this->m_import->show_data_import($tgl);
      $data['content_view'] = "view_display_import.php";
      $this->load->view('template',$data);
    }
  }
?>
