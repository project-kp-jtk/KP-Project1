
  <center><h2>Kurs Mata Uang Terakhir</h2></center>
  <hr>
  <div class="row">
    <div class="col-sm-4">
      <img class="logo-BI" src="<?php echo base_url()?>assets/img/BI.png">
      <table class="table table-striped">
        <thead>
          <tr>
            <th>Kode</th>
            <th>Tengah</th>
            <th>SAP</th>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($list_bi->result() as $row) {
          ?>
            <tr>
              <td><?php echo $row->KODE;?></td>
              <td><?php echo number_format($row->KURS_TENGAH, 3, ".", ",");?></td>
            </tr>
          <?php } ?>
        </tbody>
      </table>
    </div>

    <div class="col-sm-4">
      <img class="logo-HSBC" src="<?php echo base_url()?>assets/img/HSBC.png">
      <table class="table table-striped">
        <thead>
          <tr>
            <th>Kode</th>
            <th>Tengah</th>
            <th>SAP</th>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($list_hsbc->result() as $row) {
          ?>
            <tr>
              <td><?php echo $row->KODE;?></td>
              <td><?php echo number_format($row->KURS_TENGAH, 5, ".", ",");?></td>
            </tr>
          <?php } ?>
        </tbody>
      </table>
    </div>
    <div class="col-sm-4">
      <img class="logo-MAS" src="<?php echo base_url()?>assets/img/MAS.png">
      <table class="table table-striped">
        <thead>
          <tr>
            <th>Kode</th>
            <th>Tengah</th>
            <th>SAP</th>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($list_mas->result() as $row) {
          ?>
            <tr>
              <td><?php echo $row->KODE;?></td>
              <td><?php echo number_format($row->KURS_TENGAH, 5, ".", ",");?></td>
              <td></td>
            </tr>
          <?php } ?>
        </tbody>
      </table>
    </div>
  </div>
