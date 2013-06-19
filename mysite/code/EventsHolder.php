<?php
/**
 * Defines the RoyaltyPage page type
 */
 
class EventsHolder extends Page {
 static $db = array(


  
);
   static $has_one = array(
   

 
   );
   
   static $allowed_children = array ("Event2011");
   
   function getCMSFields() {
   $fields = parent::getCMSFields();
   
  
   

	

    	

   return $fields;
}
}
 
class EventsHolder_Controller extends Page_Controller {
	
}
?>