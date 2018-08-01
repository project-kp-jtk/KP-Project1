<?php
class Import extends CI_Controller{

	function __construct(){
		parent::__construct();
		$this->load->model('m_import');
	}

  function insertDB(){
    if(isset($_POST['preview'])){
    $file = $_FILES['file']['tmp_name'];
    $open = fopen($file,'r');
    while (!feof($open))
    {
    	$getTextLine = fgets($open);
    	$explodeLine = explode("\t",$getTextLine);
    	@list($dump,$cl,$exrate,$from,$to,$valid,$exch,$ratio,$ratio_b) = $explodeLine;
    if($this->input->post('import') != null){
      $$this->input->post('tgl')
    }
  }
}
 ?>
