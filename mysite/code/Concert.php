<?php

class Concert extends Page {
	
	public static $db = array(
				"Bands" => "Text",
				"Date" => "Text",
				"Location" => "Text",
	
	
	);
	
	public static $has_one = array(

			"Image" => "Image",
			"Image2" => "Image"
	);

	
	
	
function getCMSFields() {
	$fields = parent::getCMSFields();
	
	$fields->addFieldToTab('Root.Content.Main', new ImageField('Image', 'Image'));
	$fields->addFieldToTab('Root.Content.Main', new ImageField('Image2', 'Image2'));
	$fields->addFieldToTab('Root.Content.Main', new TextField('Bands', 'Bands'));
	$fields->addFieldToTab('Root.Content.Main', new TextField('Date', 'Date'));
	$fields->addFieldToTab('Root.Content.Main', new TextField('Location', 'Location'));
	  $fields->removeFieldFromTab("Root.Content.Main","Content");

	
    return $fields;

   }	
	
}

class Concert_Controller extends Page_Controller {
	
	public function init() {
		parent::init();
		
	}
	


}

?>