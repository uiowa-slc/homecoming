<?php

class Scholarship extends Page {
	public static $db = array(
				'Description' => 'HTMLText',
	);
	public static $has_one = array(
			"Image" => "Image",
	);
	function getCMSFields() {
	$fields = parent::getCMSFields();
	$fields->addFieldToTab('Root.Content.Main', new ImageField('Image', 'Image'));
	$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('Description','Description'));
	return $fields;
	}	
}

class Scholarship_Controller extends Page_Controller {
	public function init() {
		parent::init();
	}
}

?>