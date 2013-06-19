<?php

class Parade extends Page {
	
	public static $db = array(
				'Description' => 'HTMLText',
				"ButtonHeading" => "Text",			
				"Time" => "Text",
				"Date" => "Date",
				"Location" => "Text",

	
	);
	
	public static $has_one = array(

			"RouteGraphic" => "Image",
	);

	
	
	
function getCMSFields() {
	$fields = parent::getCMSFields();
		$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('Description','Description'));
			$fields->addFieldToTab('Root.Content.Main', new TextField('Time', 'Time'));
			$fields->addFieldToTab('Root.Content.Main', new TextField('Date', 'Date'));
	$fields->addFieldToTab('Root.Content.Main', new TextField('Location', 'Location'));
	$fields->addFieldToTab('Root.Content.Main', new TextField('ButtonHeading', 'ButtonHeading'));

	$fields->addFieldToTab('Root.Content.Main', new ImageField('RouteGraphic', 'Route Graphic'));

	  $fields->removeFieldFromTab("Root.Content.Main","Content");

	
    return $fields;

   }	
	
}

class Parade_Controller extends Page_Controller {
	
	public function init() {
		parent::init();
		
	}
	


}

?>