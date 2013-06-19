<?php
/**
 * Defines the HomePage page type
 */
 
class InteriorPageB extends Page {
 static $db = array(


  
);
   static $has_one = array(
   

 
   );
   
   function getCMSFields() {
   $fields = parent::getCMSFields();
   
	

    	

   return $fields;
}
}
 
class InteriorPageB_Controller extends Page_Controller {
	
}
?>