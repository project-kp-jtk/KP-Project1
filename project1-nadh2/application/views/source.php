<h2>
  <?php
    $src = $this->uri->segment(3);
    $date = "";
    foreach ($comp->result() as $row) {
      // code...
      $comparator = $row->KURS_TENGAH;
      $date = $row->TANGGAL;
    }
    echo $source_string[$src][0];
    if($src == 'bi'){
      $dec = 2;
    }else{
      $dec = 5;
    }
  ?>
<h2>
<hr>
<font size="3">
  <font size="2" color="#337ab7">Updated: <?php echo $date; ?> </font>
  <br>
  <form action="<?php echo base_url('index.php/web/source/'.$src)?>" method="POST">
    Group by: <input type="date" name="tgl">
    <button type="button" class="btn btn-success">
      <span class="glyphicon glyphicon-search"></span>  Search
    </button>
  </form>
  <br>
  <table class="table table-striped">
    <thead>
      <tr>
      <th>Mata Uang</th>
      <th>Nilai</th>
      <th>Jual</th>
      <th>Beli</th>
      <th>Tengah</th>
      <th>Dir.Quote</th>
      <th>To</th>
      <th>SAP</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($list_kurs->result() as $row) {
    ?>
    <tr>
      <td><?php echo $row->KODE;?></td>
      <td><?php echo number_format($row->NILAI, 2, ".", ",");?></td>
      <td><?php echo number_format($row->KURS_JUAL, $dec, ".", ",");?></td>
      <td><?php echo number_format($row->KURS_BELI, $dec, ".", ",");?></td>
      <td><?php echo number_format($row->KURS_TENGAH, 5, ".", ",");?></td>
      <td><?php echo number_format($row->KURS_TENGAH, 5, ".", ",");?></td>
      <td>
        <?php
          echo $source_string[$src][1]
        ?>
      </td>
      <td></td>
    </tr>
    <tr>
      <td><?php echo $row->KODE;?></td>
      <td><?php echo number_format($row->NILAI, 2, ".", ",");?></td>
      <td><?php echo number_format($row->KURS_JUAL, $dec, ".", ",");?></td>
      <td><?php echo number_format($row->KURS_BELI, $dec, ".", ",");?></td>
      <td><?php echo number_format($row->KURS_TENGAH, 5, ".", ",");?></td>
      <td><?php echo number_format($row->KURS_TENGAH/$comparator, 5, ".", ",");?></td></td>
      <td>USD</td>
      <td></td>
    </tr>
  <?php } ?>
  </tbody>
</table>
</font>
