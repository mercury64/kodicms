<script>
	var add_filter = function() {
		var filter = $('#sample_filter .filter')
			.clone()
			.appendTo(filters_container);
			
		filter.on('click', '.remove_filter', function() {
			filter.remove();
			return false;
		});
		
		return filter;
	}
	
	var set_condition = function(filters_container, data) {
		$('.select2-container', filters_container).remove()
		$("select", filters_container).select2();
			
		for(key in data) {
			$('input[name="doc_filter[' + key +'][]"]', filters_container).val(data[key]);
			$('select[name="doc_filter[' + key +'][]"]', filters_container).val(data[key]).trigger("change");
			
			if(key == 'id') {
				$(filters_container).find('.field-title').text(data[key]);
			}
		}
		
	}
	
	$(function() {
		var filters_container = $('#filters_container');
		$('#add_filter').on('click', function() {
			var filter = add_filter();

			$('.select2-container', filters_container).remove()
			$("select", filter).select2();
			
			$('input[name="filters[field][]"]', filter).on('keyup', function() {
				var field_title = filter.find('.field-title');
				
				if(!field_title.text()) field_title.hide();
				else field_title.show();

				field_title.text($(this).val());
			});

			return false;
		});
	})
</script>

<div class="widget-header">
	<h4><?php echo __('Filters'); ?></h4>
</div>

<div class="widget-content">
	<fieldset disabled id="sample_filter" class="hide">
		<div class="well filter">
			<h4 class="field-title hide"></h4>
			<table style="width: 100%">
				<colgroup>
					<col width="100px" />
					<col />
				</colgroup>
				<tbody>
					<tr>
						<td><?php echo __('Where field')?></td>
						<td>
							<?php echo Form::input('doc_filter[field][]', NULL, array(
								'class' => Bootstrap_Form_Element_Input::MEDIUM
							)); ?>
						</td>
					</tr>
					<tr>
						<td colspan="2">&nbsp;</td>
					</tr>
					<tr>
						<td><?php echo __('Condition')?></td>
						<td>
							<?php echo Form::select('doc_filter[condition][]', array(
								'eq' =>			__('Equal'),
								'btw' =>		__('Between'),
								'gt' =>			__('Greater than'),
								'lt' =>			__('Less than'),
								'gteq' =>		__('Greater than or equal'),
								'lteq' =>		__('Less than or equal'),
								'contains' =>	__('Contains'),
								'like' =>		__('Like')
							)); ?>
							<label class="inline checkbox">
								<?php echo Form::checkbox('doc_filter[invert][]', FALSE); ?>
								<?php echo __('Invert condition'); ?>
							</label>
							
						</td>
					</tr>
					<tr>
						<td colspan="2">&nbsp;</td>
					</tr>
					<tr>
						<td><?php echo __('Conition value')?></td>
						<td>
							<?php echo Form::select('doc_filter[type][]', array(
								'ctx' =>		__('Context'),
								'plain' =>		__('Plain')
							)); ?>
							<?php echo Form::input('doc_filter[value][]', NULL, array(
								'class' => Bootstrap_Form_Element_Input::MEDIUM
							)); ?>
						</td>
					</tr>
				</tbody>
			</table>
			<?php echo UI::button(NULL, array('icon' => UI::icon('trash'), 'class' => 'btn btn-danger btn-mini remove_filter')); ?>
		</div>
	</fieldset>
	<div id="filters_container"></div>
	
	<?php 
	if(!empty($widget->doc_filter))
	{
		echo '<script> $(function(){';
		foreach($widget->doc_filter as $filter)
			echo 'set_condition(add_filter(), ' . json_encode( $filter ) . '); ';
		echo '});</script>';
	}
	?>
	
	<?php echo UI::button(__('Add filter'), array('icon' => UI::icon('plus'), 'id' => 'add_filter', 'class' => 'btn')); ?>
</div>