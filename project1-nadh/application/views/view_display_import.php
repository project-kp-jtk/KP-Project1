<?php
  $row = $list_import->row();
  $date = $row->valid;
  $cl = $row->cl;

?>

<h2>Display Import Result</h2>
<font size="2" color="#337ab7">Cl: <?php echo $cl; ?> </font>
<font size="2" color="#337ab7">Valid From: <?php echo $date; ?> </font>
<br>
  <form action="<?php echo base_url('index.php/import/display_import/')?>" method="POST">
    Group by: <input type="date" name="tgl">
    <button type="submit" class="btn btn-success">
      <span class="glyphicon glyphicon-search"></span>  Search
    </button>
  </form>
  <br>
  <div id="constrainer3">
<table class="table table-striped mytable">
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
      <td>
      <?php
        $type = $row->exrate;
        $date = $row->valid;
        $from = $row->from_curr;
        $to = $row->to_curr;
        $display = 0;
        if($from == 'USDN'){$from = 'USD';};
        $ratio = 1000;
        if((in_array($from, array('JPY', 'THB'))) OR (in_array($to, array('USD', 'HKD')))){$ratio = 1;};
        if(in_array($type, array('M', 'B', 'G'))){
          $source = 'BI';
          $result = $this->m_exrate->getCurr($from, $source, '2018-08-01');
          $compRow = $result->row();
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
            $anotherResult = $this->m_exrate->getCurr($to, $source, '2018-08-01');
            $anotherRow = $anotherResult->row();
            $display = ($compRow->KURS_TENGAH/$compRow->NILAI)/$anotherRow->KURS_TENGAH;
          }
          echo number_format($display, 5, ".", ",");

        }

      ?>
      </td>
      <td><?php echo $ratio;?></td>
      <?php
        $diff = $row->exch - $display;
        $diff = number_format($diff, 5, ".", ",");
        if($diff > 0){
          $color = '#99e58f';
        }else if($diff == 0){
          $color = '#337ab7';
        }else{
          $color = '#ff6767';
        }
      ?>
      <td bgcolor="<?php echo $color;?>">
        <?php echo $diff;?>
      </td>
    </tr>
    <?php
    } ?>
  </tbody>
</table>
</div>
