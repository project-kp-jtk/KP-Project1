<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require(APPPATH.'libraries/simple_html_dom.php');

class Update extends CI_Controller{

	function __construct(){
		parent::__construct();
		$this->load->model('m_exrate');
		$this->load->model('m_matauang');
        $this->load->helper('url_helper');
    }   

	function bi(){

		$html = new simple_html_dom();
        $html = file_get_html('https://www.bi.go.id/id/moneter/informasi-kurs/transaksi-bi/Default.aspx');
        $rows = $html->find('table[id=ctl00_PlaceHolderMain_biWebKursTransaksiBI_GridView1] tr');

        $i=0;
        foreach ($rows as $row) {
            # code...
            if($i>0){
                $kurs_jual = floatval(preg_replace("/[^-0-9\.]/","",$row->children(2)->plaintext));
                $kurs_beli = floatval(preg_replace("/[^-0-9\.]/","",$row->children(3)->plaintext));
                $kurs_tengah = ($kurs_beli+$kurs_jual)/2;
                $tanggal = date('Y-m-d H:i:s');
                $data = array(
                    'id_source' => 1,
                    'kode_matauang' => $row->children(0)->plaintext,
                    'tanggal' => $tanggal,
                    'nilai' => $row->children(1)->plaintext,
                    'kurs_jual' => $kurs_jual,
                    'kurs_beli' => $kurs_beli,
                    'kurs_tengah' => $kurs_tengah
                );
                
                $this->m_exrate->insert_data('ex_rate', $data);
            }
            $i++;
		}
		redirect(base_url('index.php/home/source/bi'));
	}

	function hsbc(){
		$matauang = ["-", "-", "-", "USD", "AUD", "CAD", "EUR", "JPY", "MYR", "NZD", "PHP", "GBP", "CNY", "SGD", "CHF", "THB"];
		$html = new simple_html_dom();
		$html = file_get_html('https://www.personal.hsbc.com.hk/1/2/hk/investments/mkt-info/fcy/rates');
		$rows = $html->find('tr');

		$i=0;
		foreach ($rows as $row) {
			# code...
			if($i>2){
				$kurs_jual = floatval(preg_replace("/[^-0-9\.]/","",$row->children(3)->plaintext));
				$kurs_beli = floatval(preg_replace("/[^-0-9\.]/","",$row->children(4)->plaintext));
				$kurs_tengah = ($kurs_beli+$kurs_jual)/2;
				$tanggal = date('Y-m-d H:i:s');
				$data = array(
					'id_source' => 3,
					'kode_matauang' => $matauang[$i],
					'tanggal' => $tanggal,
					'nilai' => 1,
					'kurs_jual' => $kurs_jual,
                    'kurs_beli' => $kurs_beli,
                    'kurs_tengah' => $kurs_tengah
				);

				$this->m_exrate->insert_data('ex_rate', $data);
			}
			$i++;
		}
		redirect(base_url('index.php/home/source/hsbc'));
	}
    
}