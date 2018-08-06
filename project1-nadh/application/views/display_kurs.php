
  <center><h2>Kurs Mata Uang Terakhir</h2></center>
  <br>
  <div class="row">
    <div class="col-sm-4">
      <div id="constrainer">
      <table class="table table-striped">
        <thead>
          <tr>
            <th colspan="2"><img class="logo-BI" src="<?php echo base_url()?>assets/img/BI.png"></th>
          </tr>
          <tr>
            <th>Kode</th>
            <th>Tengah</th>
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
    </div>

    <div class="col-sm-4">
      <div id="constrainer">
      <table class="table table-striped">
        <thead>
          <tr>
            <th colspan="2"><img class="logo-HSBC" src="<?php echo base_url()?>assets/img/HSBC.png"></th>
          <tr>
            <th>Kode</th>
            <th>Tengah</th>
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
    </div>

    <div class="col-sm-4">
      <div id="constrainer">
      <table class="table table-striped">
        <thead>
          <tr>
            <th colspan="2"><img class="logo-MAS" src="<?php echo base_url()?>assets/img/MAS.png"></th>
          </tr>
          <tr>
            <th>Kode</th>
            <th>Tengah</th>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($list_mas->result() as $row) {
          ?>
            <tr>
              <td><?php echo $row->KODE;?></td>
              <td><?php echo number_format($row->KURS_TENGAH, 5, ".", ",");?></td>
            </tr>
          <?php } ?>
        </tbody>
      </table>
    </div>
  </div>
  </div>
