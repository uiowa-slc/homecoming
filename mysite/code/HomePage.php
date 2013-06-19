<?php
/**
 * Defines the HomePage page type
 */
 
class HomePage extends Page {
 static $db = array(
   'Content1' => 'HTMLText',
   'Content2' => 'HTMLText',
   'Content3' => 'HTMLText',
   'Content4' => 'HTMLText',
  
);
   static $has_one = array(
 
   );
   
   function getCMSFields() {
   $fields = parent::getCMSFields();
   
   $fields->removeFieldFromTab("Root.Content","Main");
   
 	$fields->addFieldToTab('Root.Content.LeftColumn', new HTMLEditorField('Content1','Content 1:'));
	$fields->addFieldToTab('Root.Content.RightColumn', new HTMLEditorField('Content2','Content 2:'));
	$fields->addFieldToTab('Root.Content.RightColumn2', new HTMLEditorField('Content3','Content 3:'));
	$fields->addFieldToTab('Root.Content.LeftColumn2', new HTMLEditorField('Content4','Content 4:'));

    	

   return $fields;
}
}
 
class HomePage_Controller extends Page_Controller {
	
}
?>