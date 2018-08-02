<?php
class Import extends CI_Controller{

	function __construct(){
		parent::__construct();
		$this->load->model('m_import');
	}

  function insertDB(){
		if($this->input->post('import') != null){
			$data['data_input'] = array(
				'cl' => $this->input->post('cl'),
				'exrate' => $this->input->post('exrate'),
				'from_curr' => $this->input->post('from'),
				'to_curr' => $this->input->post('to'),
				'valid' => $this->input->post('valid'),
				'exch' => $this->input->post('exch'),
				'ratio' => $this->input->post('ratio'),
				'ratio_b' => $this->input->post('ratio_b')
			);
			$this->import->insertDB('import',$data);
		}
		redirect(base_url('index.php/home/import'));
  }
}
 ?>
