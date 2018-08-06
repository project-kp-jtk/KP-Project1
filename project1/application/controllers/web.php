<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Web extends CI_Controller{

	function __construct(){
		parent::__construct();
		$this->load->model('m_exrate');
		$this->load->model('m_import');
	}

	function index(){
		$data['list_bi'] = $this->m_exrate->get_data_sourcebased('BI', null);
		$data['list_hsbc'] = $this->m_exrate->get_data_sourcebased('HSBC', null);
		$data['list_mas'] = $this->m_exrate->get_data_sourcebased('MAS', null);
		$data['content_view'] = "display_kurs.php";
		$this->load->view('template',$data);
	}

	function source(){
		$src = $this->uri->segment(3);
		$tgl = $this->input->post('tgl');
		$data['list_kurs'] = $this->m_exrate->get_data_sourcebased(strtoupper($src), $tgl);
		$data['comp'] = $this->m_exrate->getCurr('USD', strtoupper($src), $tgl);
		$data['content_view'] = "source.php";
		$data['source_string'] = array(
			'bi' => array('Bank Indonesia', 'IDR'),
			'mas' => array('Monetary Authority Singapore', 'SGD'),
			'hsbc' => array('Hongkong & Shanghai Bank Corporation', 'HKD'),
		);
		$this->load->view('template',$data);
	}


}
