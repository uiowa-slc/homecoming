<?php

class Event2011 extends Page {
	
	public static $db = array(
				"Time" => "Text",
				"Location" => "Text",
				

				
	
	
	);
	
	public static $has_one = array(

			"Image" => "Image"


	);

	static $allowed_children = array('EventsPage');
	
	
function getCMSFields() {
	$fields = parent::getCMSFields();
		$fields->addFieldToTab('Root.Content.Main', new TextField('Time', 'Time'));
		$fields->addFieldToTab('Root.Content.Main', new TextField('Location', 'Location'));
		$fields->addFieldToTab('Root.Content.Main', new ImageField('Image', 'Image'));


	
    return $fields;
	
   }	
	
}

class Event2011_Controller extends Page_Controller {
	
	public function init() {
		parent::init();
		
	}
	


}

?>