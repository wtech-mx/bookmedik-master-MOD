<?php $user = ColorData::getById($_GET["id"]);?>
<div class="row">
	<div class="col-md-12">
<div class="card">
  <div class="card-header" data-background-color="blue">
      <h4 class="title">Editar color</h4>
  </div>
  <div class="card-content table-responsive">


    <form class="form-horizontal" method="post" id="addcolor" action="index.php?view=addcolor" role="form">

      <div class="form-group">
      <label for="inputColor" class="col-lg-2 control-label">Color*</label>
    <div class="col-md-6">
        <input type="color" id="color" name="color"  value="<?php echo $user->color;?>">
      </div>
    </div>

  <div class="form-group">
    <div class="col-lg-offset-2 col-lg-10">
    <input type="hidden" name="user_id" value="<?php echo $user->id;?>">
      <button type="submit" class="btn btn-primary">Actualizar Color</button>
    </div>
  </div>

</form>
</div>
</div>
	</div>
</div>