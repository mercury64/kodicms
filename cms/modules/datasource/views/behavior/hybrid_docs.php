<br />
<label><?php echo __('Widget'); ?></label>
<?php 

$widgets = Widget_Manager::get_widgets('hybrid_document');

foreach ($widgets as $id => $widget)
{
	$widgets[$id] = $widget['name'];
}
echo Form::select('behavior[widget_id]', $widgets, Arr::get($settings, 'widget_id'), array(
	'class' => 'span12'
)); 
?>
<script>
	cms.ui.init('select2')
</script>