<?php

class Template extends CI_Controller{

	function __construct(){
		parent::__construct();
	}

	function index(){
		$data['content_view'] = "display_kurs.php";
		$this->load->view('v_template',$data);
	}

	function history(){
		$data['content_view'] = "display_history.php";
		$this->load->view('v_template',$data);
	}

	function source(){
		$src = $this->uri->segment(3);

	}
}
