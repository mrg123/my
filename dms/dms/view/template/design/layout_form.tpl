<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-layout" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_form; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-layout" class="form-horizontal">
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
            <div class="col-sm-10">
              <input type="text" name="name" value="<?php echo $name; ?>" placeholder="<?php echo $entry_name; ?>" id="input-name" class="form-control" />
              <?php if ($error_name) { ?>
              <div class="text-danger"><?php echo $error_name; ?></div>
              <?php } ?>
            </div>
          </div>
          <table id="route" class="table table-striped table-bordered table-hover">
            <thead>
              <tr>
                <td class="text-left"><?php echo $entry_store; ?></td>
                <td class="text-left"><?php echo $entry_route; ?></td>
                <td></td>
              </tr>
            </thead>
            <tbody>
              <?php $route_row = 0; ?>
              <?php foreach ($layout_routes as $layout_route) { ?>
              <tr id="route-row<?php echo $route_row; ?>">
                <td class="text-left"><select name="layout_route[<?php echo $route_row; ?>][store_id]" class="form-control">
                    <option value="0"><?php echo $text_default; ?></option>
                    <?php foreach ($stores as $store) { ?>
                    <?php if ($store['store_id'] == $layout_route['store_id']) { ?>
                    <option value="<?php echo $store['store_id']; ?>" selected="selected"><?php echo $store['name']; ?></option>
                    <?php } else { ?>
                    <option value="<?php echo $store['store_id']; ?>"><?php echo $store['name']; ?></option>
                    <?php } ?>
                    <?php } ?>
                  </select></td>
                <td class="text-left"><input type="text" name="layout_route[<?php echo $route_row; ?>][route]" value="<?php echo $layout_route['route']; ?>" placeholder="<?php echo $entry_route; ?>" class="form-control" /></td>
                <td class="text-left"><button type="button" onclick="$('#route-row<?php echo $route_row; ?>').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>
              </tr>
              <?php $route_row++; ?>
              <?php } ?>
            </tbody>
            <tfoot>
              <tr>
                <td colspan="2"></td>
                <td class="text-left"><button type="button" onclick="addRoute();" data-toggle="tooltip" title="<?php echo $button_route_add; ?>" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button></td>
              </tr>
            </tfoot>
          </table>
          <table id="module" class="table table-striped table-bordered table-hover">
            <thead>
              <tr>
                <td class="text-left"><?php echo $entry_module; ?></td>
                <td class="text-left">Position</td>
                <td class="text-right">Sort Order</td>
                <td></td>
              </tr>
            </thead>
            <tbody>
              <?php $module_row = 0; ?>
              <?php foreach ($layout_modules as $layout_module) { ?>
              <tr id="module-row<?php echo $module_row; ?>">
                <td class="text-left"><select name="layout_module[<?php echo $module_row; ?>][code]" class="form-control">
                    <?php foreach ($extensions as $extension) { ?>
                    <?php if (!$extension['module']) { ?>
                    <?php if ($extension['code'] == $layout_module['code']) { ?>
                    <option value="<?php echo $extension['code']; ?>" selected="selected"><?php echo $extension['name']; ?></option>
                    <?php } else { ?>
                    <option value="<?php echo $extension['code']; ?>"><?php echo $extension['name']; ?></option>
                    <?php } ?>
                    <?php } else { ?>
                    <optgroup label="<?php echo $extension['name']; ?>">
                    <?php foreach ($extension['module'] as $module) { ?>
                    <?php if ($module['code'] == $layout_module['code']) { ?>
                    <option value="<?php echo $module['code']; ?>" selected="selected"><?php echo $module['name']; ?></option>
                    <?php } else { ?>
                    <option value="<?php echo $module['code']; ?>"><?php echo $module['name']; ?></option>
                    <?php } ?>
                    <?php } ?>
                    </optgroup>
                    <?php } ?>
                    <?php } ?>
                  </select></td>
                <td class="text-left"><select name="layout_module[<?php echo $module_row; ?>][position]" class="form-control">
                    <?php if ($layout_module['position'] == 'content_top') { ?>
                    <option value="content_top" selected="selected"><?php echo $text_content_top; ?></option>
                    <?php } else { ?>
                    <option value="content_top"><?php echo $text_content_top; ?></option>
                    <?php } ?>
                    <?php if ($layout_module['position'] == 'content_bottom') { ?>
                    <option value="content_bottom" selected="selected"><?php echo $text_content_bottom; ?></option>
                    <?php } else { ?>
                    <option value="content_bottom"><?php echo $text_content_bottom; ?></option>
                    <?php } ?>
                    <?php if ($layout_module['position'] == 'column_left') { ?>
                    <option value="column_left" selected="selected"><?php echo $text_column_left; ?></option>
                    <?php } else { ?>
                    <option value="column_left"><?php echo $text_column_left; ?></option>
                    <?php } ?>
                    <?php if ($layout_module['position'] == 'column_right') { ?>
                    <option value="column_right" selected="selected"><?php echo $text_column_right; ?></option>
                    <?php } else { ?>
                    <option value="column_right"><?php echo $text_column_right; ?></option>
                    <?php } ?>
					
					<?php if ($layout_module['position'] == 'top_left') { ?>
                    <option value="top_left" selected="selected">Top Left</option>
                    <?php } else { ?>
                    <option value="top_left">Top Left</option>
                    <?php } ?>
					
					<?php if ($layout_module['position'] == 'top_right') { ?>
                    <option value="top_right" selected="selected">Top Right</option>
                    <?php } else { ?>
                    <option value="top_right">Top Right</option>
                    <?php } ?>

					<?php if ($layout_module['position'] == 'middle_topleft') { ?>
                    <option value="middle_topleft" selected="selected">Middle Top Left</option>
                    <?php } else { ?>
                    <option value="middle_topleft">Middle Top Left</option>
                    <?php } ?>
					
					<?php if ($layout_module['position'] == 'mtopright') { ?>
                    <option value="mtopright" selected="selected">Middle Top Right</option>
                    <?php } else { ?>
                    <option value="mtopright">Middle Top Right</option>
                    <?php } ?>
					
					<?php if ($layout_module['position'] == 'mcenterleft') { ?>
                    <option value="mcenterleft" selected="selected">Middle Center Left</option>
                    <?php } else { ?>
                    <option value="mcenterleft">Middle Center Left</option>
                    <?php } ?>
					
					<?php if ($layout_module['position'] == 'mcenterright') { ?>
                    <option value="mcenterright" selected="selected">Middle Center Right</option>
                    <?php } else { ?>
                    <option value="mcenterright">Middle Center Right</option>
                    <?php } ?>
					
					<?php if ($layout_module['position'] == 'middle_bottom') { ?>
                    <option value="middle_bottom" selected="selected">Middle Bottom</option>
                    <?php } else { ?>
                    <option value="middle_bottom">Middle Bottom</option>
                    <?php } ?>
					
					<?php if ($layout_module['position'] == 'mbottomleft') { ?>
                    <option value="mbottomleft" selected="selected">Middle Bottom Left</option>
                    <?php } else { ?>
                    <option value="mbottomleft">Middle Bottom Left</option>
                    <?php } ?>
					
					<?php if ($layout_module['position'] == 'mbottomright') { ?>
                    <option value="mbottomright" selected="selected">Middle Bottom Right</option>
                    <?php } else { ?>
                    <option value="mbottomright">Middle Bottom Right</option>
                    <?php } ?>

					<?php if ($layout_module['position'] == 'clfixed') { ?>
					<option value="clfixed" selected="selected">Column Left Fixed</option>
					<?php } else { ?>
					<option value="clfixed">Column Left Fixed</option>
					<?php } ?>

					
					
                  </select></td>
                <td class="text-right"><input type="text" name="layout_module[<?php echo $module_row; ?>][sort_order]" value="<?php echo $layout_module['sort_order']; ?>" placeholder="Sort Order" class="form-control" /></td>
                <td class="text-left"><button type="button" onclick="$('#module-row<?php echo $module_row; ?>').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>
              </tr>
              <?php $module_row++; ?>
              <?php } ?>
            </tbody>
            <tfoot>
              <tr>
                <td colspan="3"></td>
                <td class="text-left"><button type="button" onclick="addModule();" data-toggle="tooltip" title="<?php echo $button_module_add; ?>" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button></td>
              </tr>
            </tfoot>
          </table>
        </form>
      </div>
    </div>
  </div>
  <script type="text/javascript"><!--
var route_row = <?php echo $route_row; ?>;

function addRoute() {
	html  = '<tr id="route-row' + route_row + '">';
	html += '  <td class="text-left"><select name="layout_route[' + route_row + '][store_id]" class="form-control">';
	html += '  <option value="0"><?php echo $text_default; ?></option>';
	<?php foreach ($stores as $store) { ?>
	html += '<option value="<?php echo $store['store_id']; ?>"><?php echo addslashes($store['name']); ?></option>';
	<?php } ?>   
	html += '  </select></td>';
	html += '  <td class="text-left"><input type="text" name="layout_route[' + route_row + '][route]" value="" placeholder="<?php echo $entry_route; ?>" class="form-control" /></td>';
	html += '  <td class="text-left"><button type="button" onclick="$(\'#route-row' + route_row + '\').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
	html += '</tr>';
	
	$('#route tbody').append(html);
	
	route_row++;
}

var module_row = <?php echo $module_row; ?>;

function addModule() {
	html  = '<tr id="module-row' + module_row + '">';
	html += '  <td class="text-left"><select name="layout_module[' + module_row + '][code]" class="form-control">';
	<?php foreach ($extensions as $extension) { ?>    
	<?php if (!$extension['module']) { ?>
	html += '    <option value="<?php echo $extension['code']; ?>"><?php echo addslashes($extension['name']); ?></option>';
	<?php } else { ?>
	html += '    <optgroup label="<?php echo addslashes($extension['name']); ?>">';
	<?php foreach ($extension['module'] as $module) { ?>
	html += '      <option value="<?php echo $module['code']; ?>"><?php echo addslashes($module['name']); ?></option>';
	<?php } ?>
	html += '    </optgroup>';
	<?php } ?>
	<?php } ?>
    html += '  </select></td>'; 
	html += '  <td class="text-left"><select name="layout_module[' + module_row + '][position]" class="form-control">';
    html += '    <option value="content_top"><?php echo $text_content_top; ?></option>';
    html += '    <option value="content_bottom"><?php echo $text_content_bottom; ?></option>';
    html += '    <option value="column_left"><?php echo $text_column_left; ?></option>';
    html += '    <option value="column_right"><?php echo $text_column_right; ?></option>';
	html += '    <option value="top_left">Top Left</option>';
	html += '    <option value="top_right">Top Right</option>';
	html += '    <option value="middle_topleft">Middle Top Left</option>';
	html += '    <option value="mtopright">Middle Top Right</option>';
	html += '    <option value="mcenterleft">Middle Center Left</option>';
	html += '    <option value="mcenterright">Middle Center Right</option>';
	html += '    <option value="middle_bottom">Middle Bottom</option>';
	html += '    <option value="mbottomleft">Middle Bottom Left</option>';
	html += '    <option value="mbottomright">Middle Bottom Right</option>';
	html += '    <option value="clfixed">Column Left Fixed</option>';
    html += '  </select></td>';
	html += '  <td class="text-left"><input type="text" name="layout_module[' + module_row + '][sort_order]" value="" placeholder="Sort Order" class="form-control" /></td>';
	html += '  <td class="text-left"><button type="button" onclick="$(\'#module-row' + module_row + '\').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
	html += '</tr>';
	
	$('#module tbody').append(html);
	
	module_row++;
}
//--></script></div>
<?php echo $footer; ?>