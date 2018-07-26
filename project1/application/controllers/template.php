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
	function BI(){
			$data['content_view'] = "BI.php";
			$this->load->view('v_template',$data);
	}
	function MAS(){
			$data['content_view'] = "MAS.php";
			$this->load->view('v_template',$data);
	}
	function HSBC(){
			$data['content_view'] = "HSBC.php";
			$this->load->view('v_template',$data);
	}
	function YF(){
			$data['content_view'] = "YF.php";
			$this->load->view('v_template',$data);
	}
}
