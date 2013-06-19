<?php
/**
 * Defines the RoyaltyPage page type
 */
 
class RoyaltyPage extends Page {
	static $db = array(
	'Content1' => 'HTMLText',
	'Content2' => 'HTMLText',
	);
	static $has_one = array(
	'HeaderImage' => 'Image',
	);
   
	function getCMSFields() {
	$fields = parent::getCMSFields();
	
    $fields->addFieldToTab('Root.Content.LeftColumn', new ImageField('HeaderImage', 'Date Image (462x84 pixels)'));
 	$fields->addFieldToTab('Root.Content.LeftColumn', new HTMLEditorField('Content1','Content 1:'));
	$fields->addFieldToTab('Root.Content.RightColumn', new HTMLEditorField('Content2','Content 2:'));
	return $fields;
	}
}
 
class RoyaltyPage_Controller extends Page_Controller {
	
}
?>