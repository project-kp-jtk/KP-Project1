<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Web extends CI_Controller{

	function __construct(){
		parent::__construct();
		$this->load->model('m_exrate');
	}

	function index(){
		$data['list_bi'] = $this->m_exrate->get_data_datebased(strtoupper(1));
		$data['list_hsbc'] = $this->m_exrate->get_data_datebased(strtoupper(3));
		$data['list_mas'] = $this->m_exrate->get_data_datebased(strtoupper(2));
		$data['content_view'] = "display_kurs.php";
		$this->load->view('template',$data);
	}

	function source(){
		$src = $this->uri->segment(3);
		$data['list_kurs'] = $this->m_exrate->get_data_sourcebased(strtoupper($src));
		$data['comp'] = $this->m_exrate->getCurr('USD', strtoupper($src));
		$data['content_view'] = "source.php";
		$data['source_string'] = array(
			'bi' => array('Bank Indonesia', 'IDR'),
			'mas' => array('Monetary Authority Singapore', 'SGD'),
			'hsbc' => array('Hongkong & Shanghai Bank Corporation', 'HKD'),
			'yahoo' => array('Yahoo Finance', '')
		);
		$this->load->view('template',$data);

	}
}
