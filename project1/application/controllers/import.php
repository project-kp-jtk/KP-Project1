<?php
  class Import extends CI_Controller{

    function __construct(){
      parent::__construct();
      $this->load->model('m_import');
    }

    function index(){
      $data['content_view'] = "import_view.php";
      $this->load->view('template',$data);
    }

    function insertDB(){
      
    }
  }
?>
