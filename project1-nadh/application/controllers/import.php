<?php
  class Import extends CI_Controller{

    function __construct(){
      parent::__construct();
      $this->load->model('m_import');
      $this->load->helper(array('form', 'url'));
    }

    function index(){
      $data['content_view'] = "import_view.php";
      $this->load->view('template',$data);
    }

    function import_file(){
        $this->m_import->importing();
        $data['content_view'] = "import_view.php";
        $this->load->view('template',$data);
    }

  }
?>
