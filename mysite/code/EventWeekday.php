<?php
/**
 * Defines the RoyaltyPage page type
 */
 
class EventWeekday extends Page {
 static $db = array(
				"TeaserText" => "Text",


  
);
   static $has_one = array(
   

 
   );
   
   static $allowed_children = array ("Event2011");
   
   function getCMSFields() {
   $fields = parent::getCMSFields();
   
  		$fields->addFieldToTab('Root.Content.Main', new TextField('TeaserText', 'TeaserText'));
  		$fields->removeFieldFromTab("Root.Content","Content");

   

	

    	

   return $fields;
}
}
 
class EventWeekday_Controller extends Page_Controller {
	
}
?>