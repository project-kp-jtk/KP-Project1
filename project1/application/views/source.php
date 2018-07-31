<h2>
  <?php
    $src = $this->uri->segment(3);
    echo $source_string[$src];
    if($src == 'bi'){
      $dec = 2;
    }else{
      $dec = 5;
    }
  ?>
<h2>
<font size="3">
  <table class="table table-striped">
    <thead>
      <tr>
      <th>Mata Uang</th>
      <th>Tanggal Update</th>
      <th>Nilai</th>
      <th>Kurs Jual</th>
      <th>Kurs Beli</th>
      <th>Kurs Tengah</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($list_kurs->result() as $row) {
    ?>
    <tr>
      <td><?php echo $row->MATA_UANG;?></td>
      <td><?php echo $row->TANGGAL;?></td>
      <td><?php echo number_format($row->NILAI, $dec, ".", ",");?></td>
      <td><?php echo number_format($row->KURS_JUAL, $dec, ".", ",");?></td>
      <td><?php echo number_format($row->KURS_BELI, $dec, ".", ",");?></td>
      <td><?php echo number_format($row->KURS_TENGAH, $dec, ".", ",");?></td>
    </tr>
  <?php } ?>
  </tbody>
</table>
</font>