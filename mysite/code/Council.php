<?php

class Council extends Page {
	
	public static $db = array(
				'Header' => 'Text',
				'HomecomingCouncil' => 'HTMLText',
				
	
	);
	
	public static $has_one = array(

			"Image" => "Image",
	);

	
	
	
function getCMSFields() {
	$fields = parent::getCMSFields();
	 $fields->addFieldToTab('Root.Content.Main', new TextField('Header','Header'));
	 	 $fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('HomecomingCouncil','HomecomingCouncil'));

	$fields->addFieldToTab('Root.Content.Main', new ImageField('Image', 'Image'));
	
	  $fields->removeFieldFromTab("Root.Content.Main","Content");

	
    return $fields;

   }	
	
}

class Council_Controller extends Page_Controller {
	
	public function init() {
		parent::init();
		
	}
	


}

?>