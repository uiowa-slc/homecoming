<?php

class Apply extends Page {
	
	public static $db = array(
				'Header' => 'Text',
				'HomecomingApply' => 'HTMLText',
				
	
	);
	
	public static $has_one = array(

			"Image" => "Image",
	);

	
	
	
function getCMSFields() {
	$fields = parent::getCMSFields();
	 $fields->addFieldToTab('Root.Content.Main', new TextField('Header','Header'));
	 	 $fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('HomecomingApply','HomecomingApply'));

	$fields->addFieldToTab('Root.Content.Main', new ImageField('Image', 'Image'));
	
	  $fields->removeFieldFromTab("Root.Content.Main","Content");

	
    return $fields;

   }	
	
}

class Apply_Controller extends Page_Controller {
	
	public function init() {
		parent::init();
		
	}
	


}

?>