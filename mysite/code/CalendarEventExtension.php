<?php
class CalendarEventExtension extends DataExtension {

	private static $db = array(

	);

	private static $has_one = array(
	);

	private static $many_many = array (
		"Categories" => "Category"
	);
   public function updateCMSFields(FieldList $fields) {
   		$tagField = new TagField('Categories', 'Categories (separated by spaces, no commas)', null, 'CalendarEvent');		
        $fields->addFieldToTab("Root.Main", $tagField, "Content");
    }
	/*public function getCMSFields(){
		$fields = parent::getCMSFields();

		
		
		return $fields;
		
	}*/
	

}