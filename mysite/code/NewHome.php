<?php
/**
 * Defines the NewHome page type
 */
 
class NewHome extends Page {
 static $db = array(

  
);
   static $has_one = array(
 
   );
   
   function getCMSFields() {
   $fields = parent::getCMSFields();
   
   $fields->removeFieldFromTab("Root.Content","Main");
   


    	

   return $fields;
}
}
 
class NewHome_Controller extends Page_Controller {
	
}
?>