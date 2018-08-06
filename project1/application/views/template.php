<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Monitoring Kurs Harian</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>assets/css.css">
  <script src="main.js"></script>
</head>
<body>
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#"><img class="logoicon" src="<?php echo base_url()?>assets/img/Logo-Pertamina.png"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="<?php echo base_url('index.php/web/index/');?>">Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<?php echo base_url('index.php/import/');?>">Import</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<?php echo base_url('index.php/import/display_import/');?>">Compare <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Source
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <a class="dropdown-item" href="<?php echo base_url('index.php/web/source/bi');?>">BI</a>
            <a class="dropdown-item" href="<?php echo base_url('index.php/web/source/hsbc');?>">HSBC</a>
            <a class="dropdown-item" href="<?php echo base_url('index.php/web/source/mas');?>">MAS</a>
          </div>
        </li>
      </ul>
    </div>
  </nav>
	<div id="main" align="center">
		<?php $this->load->view($content_view); ?>
	</div>


<!--
<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer> -->

</body>
</html>
