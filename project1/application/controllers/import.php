<?php
  class Import extends CI_Controller{

    function __construct(){
      parent::__construct();
      $this->load->model('m_import');
      $this->load->helper(array('form', 'url'));
    }

    function index(){
      $data['content_view'] = "import_view.php";
      $data['error'] = '';
      $this->load->view('template',$data);
    }

    function upload_file(){
      $config['upload_path'] = './tmp/';
      $config['allowed_types'] = 'txt';

      $this->load->library('upload', $config);

      // $this->upload->do_upload('file');
      if(!$this->upload->do_upload('file')){
        $data['error'] = $this->upload->display_errors();
        $data['content_view'] = "import_view.php";
        $this->load->view('template',$data);

      }else {
        $data['content_view'] = "import_view.php";
        $this->load->view('template',$data);
      }

    }

    function openFile(){
      $file = fopen('./tmp/'.);
    }
  }
?>
