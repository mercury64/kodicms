<p class="muted"><?php echo Date::format($doc['created_on']); ?></p>


<?php echo $doc['text']; ?>

<?php if(!empty($doc['relatednews'])): ?>
<br /><hr />
<h3>Связанные новости</h3>
<?php Block::run('stub_1'); ?>
<?php endif; ?>