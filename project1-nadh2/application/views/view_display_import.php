<h2>Display Import Result</h2>
<br>
<table class="table table-striped">
  <thead>
    <tr>
      <th>Cl</th>
      <th>Ex. rate</th>
      <th>From</th>
      <th>To</th>
      <th>Valid from</th>
      <th>Exch. rate</th>
      <th>Ratio</th>
      <th>Ratio</th>
  </tr>
  </thead>
  <tbody>
    <?php foreach ($list_import->result() as $row) {
    ?>
    <tr>
      <td><?php echo $row->cl;?></td>
      <td><?php echo $row->exrate;?></td>
      <td><?php echo $row->from_curr;?></td>
      <td><?php echo $row->to_curr;?></td>
      <td><?php echo $row->valid;?></td>
      <td><?php echo $row->exch;?></td>
      <td><?php echo $row->ratio;?></td>
      <td><?php echo $row->ratio_b;?></td>
    </tr>
    <?php
    } ?>
  </tbody>
</table>
