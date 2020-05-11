   <h3> Specifications </h3>
	<?php 
	//Feeteching all vaue dynamicly
	// Getting all group values start
		$fields = get_field_object('all_specificatiosns');
		$label;
		foreach($fields['sub_fields'] as $name){
					$label[]=$name['label'];
				}
		$filed_value;
		foreach($fields['value'] as $name => $value){
				$filed_value[]=$value; }
		//Array Combination		
		$result_value=array_combine($label, $filed_value); ?>
<ul>
    <?php foreach($result_value as $lable => $value){ ?>
	<li> <?php echo $lable; ?>/<?php echo $value; ?></li>
	<?php } ?>
	</ul>	