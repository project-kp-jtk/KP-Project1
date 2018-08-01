<h2>Import Data</h2>

<font size="3">
<form action="" method="POST" enctype="multipart/form-data">
  Select a file: <input type="file" name="file">
  <input type="submit" name="preview" value="Preview">
</form>
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
  <?php
  if(isset($_POST['preview'])){
  $file = $_FILES['file']['tmp_name'];
  $open = fopen($file,'r');
  while (!feof($open))
  {
  	$getTextLine = fgets($open);
  	$explodeLine = explode("\t",$getTextLine);
  	@list($dump,$cl,$exrate,$from,$to,$valid,$exch,$ratio,$ratio_b) = $explodeLine;
   ?>
  <tr>
    <td><?php echo $cl;?></td>
    <td><?php echo $exrate;?></td>
    <td><?php echo $from;?></td>
    <td><?php echo $to;?></td>
    <td><?php echo $valid;?></td>
    <td><?php echo $exch;?></td>
    <td><?php echo $ratio;?></td>
    <td><?php echo $ratio_b;?></td>
  </tr>
<?php } ?>
  <button name="import" type="button" class="btn btn-primary" action="<?php echo base_url('index.php/import/insertDB')?>">Import</button>
<?php } ?>
</tbody>
</table>

</font>
