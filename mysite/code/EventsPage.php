
<?php

class EventsPage extends Page {
	
	
		
	
	public static $db = array(
	

	
	
	
	
	);
	
	public static $has_one = array(
	
	
	);
	
	
	
function getCMSFields() {
	$fields = parent::getCMSFields();
	



	
	
	
	
	
    return $fields;
	
   }	
	
}

class EventsPage_Controller extends Page_Controller {
	
	public function init() {
		parent::init();
		
	}
	
	
	
}

?>