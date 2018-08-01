<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller{

	function __construct(){
		parent::__construct();
		$this->load->model('m_exrate');
	}

	function index(){
		$data['content_view'] = "display_kurs.php";
		$this->load->view('template',$data);
	}

	function history(){
		$data['content_view'] = "display_history.php";
		$this->load->view('template',$data);
	}

	function source(){
		$src = $this->uri->segment(3);
		$data['list_kurs'] = $this->m_exrate->get_data_sourcebased(strtoupper($src));
		$data['content_view'] = "source.php";
		$data['source_string'] = array(
			'bi' => 'Bank Indonesia',
			'mas' => 'Monetary Authority Singapore',
			'hsbc' => 'Hongkong & Shanghai Bank Corporation'
		);
		$this->load->view('template',$data);
		
	}
}