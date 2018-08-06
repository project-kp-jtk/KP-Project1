<?php
  $cl = 0;
  $date = "";
  $row = $list_import->row();
  if($row != null){
    $date = $row->valid;
    $cl = $row->cl;
  }

?>

<h2>Display Import Result</h2>
<font size="2" color="#337ab7">Client: <?php echo $cl; ?> </font>
<font size="2" color="#337ab7">Valid From: <?php echo $date; ?> </font>
<br>
  <form action="<?php echo base_url('index.php/import/display_import/')?>" method="POST">
    Group by: <input type="date" name="tgl">
    <button type="submit" class="btn btn-success">
      <span class="glyphicon glyphicon-search"></span>  Search
    </button>
  </form>
  <br>
<table class="table table-striped">
  <thead>
    <tr>
      <th>Ex. rate</th>
      <th>From</th>
      <th>To</th>
      <th>Exch. rate</th>
      <th>Ratio</th>
      <th>Ratio</th>
      <th>Comparator</th>
      <th>Ratio</th>
      <th>Difference</th>
  </tr>
  </thead>
  <tbody>
    <?php foreach ($list_import->result() as $row) {
    ?>
    <tr>
      <td><?php echo $row->exrate;?></td>
      <td><?php echo $row->from_curr;?></td>
      <td><?php echo $row->to_curr;?></td>
      <td><?php echo $row->exch;?></td>
      <td><?php echo $row->ratio;?></td>
      <td><?php echo $row->ratio_b;?></td>
      <?php
        $type = $row->exrate;
        $date = $row->valid;
        $from = $row->from_curr;
        $to = $row->to_curr;
        $display = 0;
        $ratio = 0;
        if($from == 'USDN'){$from = 'USD';};
        if(in_array($type, array('M', 'B', 'G'))){
          $ratio = 1000;
          if((in_array($from, array('JPY', 'THB'))) OR ($to != 'IDR')){$ratio = 1;};
          $source = 'BI';
          $result = $this->m_exrate->getCurr($from, $source, $date);
          $compRow = $result->row();
          if($compRow != null){
            if($to == 'IDR'){
              switch ($type) {
                case 'M':
                  $display = ($compRow->KURS_TENGAH/$compRow->NILAI)/$ratio;
                  break;
                
                case 'B':
                  $display = ($compRow->KURS_JUAL/$compRow->NILAI)/$ratio;
                  break;
                
                case 'G':
                  $display = ($compRow->KURS_BELI/$compRow->NILAI)/$ratio;
                  break;
              }
            }else{
              $anotherResult = $this->m_exrate->getCurr($to, $source, $date);
              $anotherRow = $anotherResult->row();
              if($anotherRow != null){
                $display = (($compRow->KURS_TENGAH/$compRow->NILAI)/$anotherRow->KURS_TENGAH/$ratio);
              }
            }
          }
        }else{
          if($from == 'HKD' OR $to == 'HKD'){
            $ratio = 1;
            $source = 'HSBC';
            if($from == 'HKD'){$from = $to;};
            $result = $this->m_exrate->getCurr($from, $source, $date);
            $compRow = $result->row();
            if($compRow != null){
              $display = ($compRow->KURS_TENGAH/$compRow->NILAI)/$ratio;
              if($to != 'HKD'){
                $display = 1/$display;
              }
            }
          }else{
            $ratio = 1;
            $source = 'MAS';
            if($to == 'IDR'){$ratio = 1000;}
            if($from != 'SGD'){
              $result = $this->m_exrate->getCurr($from, $source, $date);
              $compRow = $result->row();
              if($compRow != null){
                $anotherResult = $this->m_exrate->getCurr($to, $source, $date);
                $anotherRow = $anotherResult->row();
                if($anotherRow != null){
                  $display = (($compRow->KURS_TENGAH*$anotherRow->NILAI)/$anotherRow->KURS_TENGAH)/$ratio;
                }
              }
            }else{
              $result = $this->m_exrate->getCurr($to, $source, $date);
              $compRow = $result->row();
              if($compRow != null){
                $display = 1/(($compRow->KURS_TENGAH/$compRow->NILAI)/$ratio);
              }
            }

          }

        }

        $display = number_format($display, 5, ".", ",");
        
      ?>
      <td><?php echo $display;?></td>
      <td><?php echo $ratio;?></td>
      <?php
        $diff = $row->exch - $display;
        $color = '';
        if($diff > 0){
          $color = '#99e58f';
        }else if($diff < 0){
          $color = '#ff6767';
        }
      ?>
      <td bgcolor="<?php echo $color;?>">
        <?php echo number_format($diff, 5, ".", ",");?>
      </td>
    </tr>
    <?php
    } ?>
  </tbody>
</table>
