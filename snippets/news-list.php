<?php if(!empty($header)):?>
<h4><?php echo $header; ?></h4>
<?php endif;?>

<div class="media-list">
<?php foreach($docs as $doc):?>
	<div class="media">
		<?php if(!empty($doc['image'])): ?>
		<a class="pull-left" href="<?php echo $doc['href']; ?>">
			<img class="media-object" src="<?php echo PUBLIC_URL.$doc['image']; ?>">
		</a>
		<?php endif; ?>
		<div class="media-body">
			<h4 class="media-heading"><a href="<?php echo $doc['href']; ?>"><?php echo $doc['header']; ?></a></h4>
			<p class="muted"><small><?php echo Date::format($doc['created_on']); ?></small></p>
			<p><?php echo $doc['anounce']; ?></p>
		</div>
	</div>
<?php endforeach; ?>
</div>