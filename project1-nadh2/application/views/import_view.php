<h2>Import Data</h2>
<br>
<font size="3">
<div class="container text-center">
  <div class="row">
    <div class="col-sm-4">
    </div>
    <div class="col-sm-5">
      <?php echo form_open_multipart('import/import_file'); ?>
        <div class="form-group">
          <input type="file" class="form-control-file" name="file" aria-describedby="fileHelp">
          <small id="fileHelp" class="form-text text-muted">Input file to import.</small>
        </div>
        <button type="submit" name="preview" class="btn btn-success btn-sm">
          <span class="glyphicon glyphicon-eye-open"></span> Import
        </button>
      </form>
    </div>
    <div class="col-sm-4">
    </div>
  </div>
</div>
<br>
</font>
