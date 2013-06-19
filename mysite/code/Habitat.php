<?php

class Habitat extends Page {
	
	public static $db = array(
				'Description' => 'HTMLText',
				'Instructions' => 'HTMLText',

	
	);
	
	public static $has_one = array(
   'HabitatImage' => 'Image',

	);

	
	
	
function getCMSFields() {
	$fields = parent::getCMSFields();
	$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('Description','Description'));
	 $fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('Instructions','Instructions'));

    $fields->addFieldToTab('Root.Content.Main', new ImageField('HabitatImage', 'Image'));
	  $fields->removeFieldFromTab("Root.Content.Main","Content");

	
    return $fields;

   }	
	
}

class Habitat_Controller extends Page_Controller {
	
	public function init() {
		parent::init();
		
	}
	


}

?>