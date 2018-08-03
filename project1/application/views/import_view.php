<h2>Import Data</h2>
<br>
<font size="3">

<div class="head">
  <center>
<form action="" method="POST" enctype="multipart/form-data">
  <div class="form-group">
    <input type="file" class="form-control-file" name="file" aria-describedby="fileHelp">
    <small id="fileHelp" class="form-text text-muted">Input file to import.</small>
  </div>
  <button type="submit" name="preview" class="btn btn-success btn-sm">
    <span class="glyphicon glyphicon-eye-open"></span> Preview
  </button>
</form>
</center>
</div>
<br>
<?php
if(isset($_POST['preview'])){
$file = $_FILES['file']['tmp_name'];
$open = fopen($file,'r');
 ?>
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
  <button name="import" type="button" class="btn btn-primary" action="<?php echo base_url('index.php/import/insertDB')?>">
    <span class='glyphicon glyphicon-upload'></span> Import
  </button>
  <hr>
<?php } ?>
</tbody>
</table>
<div class="alert alert-success">
  <strong>Success!</strong> Import data success.
</div>
<div class="alert alert-danger">
  <strong>Failed!</strong> Import data failed.
</div>
</font>
