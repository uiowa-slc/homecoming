<?php

class History extends Page {
	public static $db = array(
				'Description' => 'HTMLText',
	);
	public static $has_one = array(
			"Image" => "Image"
	);
	function getCMSFields() {
	$fields = parent::getCMSFields();
	$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('Description','Description'));
	return $fields;
	}	
}

class History_Controller extends Page_Controller {
	public function init() {
		parent::init();
	}
}

?>