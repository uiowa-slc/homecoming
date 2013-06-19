<?php
/**
 * Defines the RoyaltyPage page type
 */
 
class EventsHolder2011 extends Page {
 static $db = array(


  
);
   static $has_one = array(
   

 
   );
   
   static $allowed_children = array ("EventWeekday");
   
   function getCMSFields() {
   $fields = parent::getCMSFields();
   
  
   

	

    	

   return $fields;
}
}
 
class EventsHolder2011_Controller extends Page_Controller {
	
}
?>