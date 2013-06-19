<?php
/**
 * Defines the HomePage page type
 */
 
class InteriorPage extends Page {
 static $db = array(


  
);
   static $has_one = array(
   
   'SidebarImage1' => 'Image',
   'SidebarImage2' => 'Image',
 
   );
   
   function getCMSFields() {
   $fields = parent::getCMSFields();
   
   
    $fields->addFieldToTab('Root.Content.Images', new ImageField('SidebarImage1', 'Sidebar Image (180x180 pixels)'));
	 $fields->addFieldToTab('Root.Content.Images', new ImageField('SidebarImage2', 'Sidebar Image (180x180 pixels)'));

	

    	

   return $fields;
}
}
 
class InteriorPage_Controller extends Page_Controller {
	
}
?>