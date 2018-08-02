<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Monitoring Kurs Harian</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>assets/css.css">
    <script src="main.js"></script>
</head>
<body>
	<nav class="navbar navbar-inverse">
  	<div class="container-fluid">
    	<div class="navbar-header">
				<a class="navbar-brand" href="#"><img class="logoicon" src="<?php echo base_url()?>assets/img/Logo-Pertamina.png"></a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
	      <ul class="nav navbar-nav">
	        <li class="li-menu"><a href="<?php echo base_url('index.php/web/index');?>">Display Kurs</a></li>
	        <li class="li-menu"><a href="<?php echo base_url('index.php/import/');?>">Import</a></li>
	      </ul>
			</div>
		</div>
</nav>


  <div class="sidenav">
      <ul class="nav nav-pills nav-stacked">
        <li><a href="<?php echo base_url('index.php/web/source/bi');?>">Bank Indonesia</a></li>
        <li><a href="<?php echo base_url('index.php/web/source/hsbc');?>">HSBC</a></li>
        <li><a href="<?php echo base_url('index.php/web/source/mas');?>">MAS</a></li>
        <li><a href="<?php echo base_url('index.php/web/source/yahoo');?>">Yahoo Finance</a></li>
      </ul>
    </div>

		<div id="main" align="center">
			<?php $this->load->view($content_view); ?>
		</div>


<!--
<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer> -->

</body>
</html>
