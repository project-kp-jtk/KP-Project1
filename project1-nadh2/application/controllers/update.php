<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Update extends CI_Controller{

	function __construct(){
		parent::__construct();
		$this->load->model('m_exrate');
    }

	function bi(){

		$this->m_exrate->bi();
		redirect(base_url('index.php/home/source/bi'));
	}

	function hsbc(){
		$this->m_exrate->hsbc();
		redirect(base_url('index.php/home/source/hsbc'));
	}

	function mas(){
		$this->m_exrate->mas();
		redirect(base_url('index.php/home/source/mas'));
	}

}
