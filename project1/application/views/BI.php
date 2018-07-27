<h2>Bank Indonesia<h2>
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
      <td><?php echo number_format($row->NILAI, 2, ".", ",");?></td>
      <td><?php echo number_format($row->KURS_JUAL, 2, ".", ",");?></td>
      <td><?php echo number_format($row->KURS_BELI, 2, ".", ",");?></td>
      <td><?php echo number_format($row->KURS_TENGAH, 2, ".", ",");?></td>
    </tr>
  <?php } ?>
  </tbody>
</table>
</font>