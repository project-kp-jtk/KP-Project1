<?php

class Template extends CI_Controller{

	function __construct(){
		parent::__construct();
		$this->load->model('m_exrate');
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
		$data['active'] = $src;
		switch ($src) {
			case 'bi':
				# code...

				$data['list_kurs'] = $this->m_exrate->get_data_sourcebased('BI');
				$data['content_view'] = "bi.php";
				$this->load->view('v_template',$data);
				break;
			
			case 'hsbc':
				# code...

				$data['content_view'] = "hsbc.php";
				$this->load->view('v_template',$data);
				break;

			case 'mas':
				# code...

				$data['content_view'] = "mas.php";
				$this->load->view('v_template',$data);
				break;

			case 'yahoo':
				# code...

				$data['content_view'] = "yf.php";
				$this->load->view('v_template',$data);
				break;

			default:
				# code...
				break;
		}

	}

	function update(){
		$src = $this->uri->segment(3);
		

	}
}
