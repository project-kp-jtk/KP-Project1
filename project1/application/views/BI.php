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
      <td><?php echo $row->kode_matauang;?></td>
      <td><?php echo $row->tanggal;?></td>
      <td><?php echo $row->nilai;?></td>
      <td><?php echo $row->kurs_jual;?></td>
      <td><?php echo $row->kurs_beli;?></td>
      <td><?php echo $row->kurs_tengah;?></td>
    </tr>
  <?php } ?>
  </tbody>
</table>
</font>
