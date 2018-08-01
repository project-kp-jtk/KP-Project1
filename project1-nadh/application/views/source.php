<h2>
  <?php
    $src = $this->uri->segment(3);
    foreach ($comp->result() as $row) {
      // code...
      $comparator = $row->KURS_TENGAH;
      $date = $row->TANGGAL;
    }
    echo $source_string[$src];
    if($src == 'bi'){
      $dec = 2;
    }else{
      $dec = 5;
    }
  ?>
<h2>

<font size="3">
  <form action="<?php echo base_url('index.php/home/source/'.$src)?>" method="POST">
    Group by: <input type="date" name="tgl">
    <input type="submit">
  </form>
  <br>
  Updated: <?php echo $date; ?>
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
          switch ($src) {
            case 'bi':
              // code...
              echo "IDR";
              break;

            case 'hsbc':
                // code...
                echo "HKD";
              break;
            case 'mas':
                // code...
                echo "SGD";
                break;
            default:
              // code...
              break;
          }
        ?>
      </td>
    </tr>
    <tr>
      <td><?php echo $row->KODE;?></td>
      <td><?php echo number_format($row->NILAI, 2, ".", ",");?></td>
      <td><?php echo number_format($row->KURS_JUAL, $dec, ".", ",");?></td>
      <td><?php echo number_format($row->KURS_BELI, $dec, ".", ",");?></td>
      <td><?php echo number_format($row->KURS_TENGAH, 5, ".", ",");?></td>
      <td><?php echo number_format($row->KURS_TENGAH/$comparator, 5, ".", ",");?></td></td>
      <td>USD</td>
    </tr>
  <?php } ?>
  </tbody>
</table>
</font>
