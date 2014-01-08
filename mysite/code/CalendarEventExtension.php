<?php
class CalendarEventExtension extends DataExtension {

	private static $db = array(
    'EventLocation' => 'Text',
	);

	private static $has_one = array(
    "EventImage" => "Image"
	);

	private static $many_many = array (
		"Categories" => "Category"
	);
   public function updateCMSFields(FieldList $fields) {

   		$tagField = new TagField('Categories', 'Categories (separated by spaces, no commas)', null, 'CalendarEvent');
      $fields->addFieldToTab("Root.Main", new TextField("EventLocation", "Location"));
      $fields->addFieldToTab("Root.Main", new UploadField("EventImage", "Image"));
      $fields->addFieldToTab("Root.Main", $tagField, "Content");

    }
	/*public function getCMSFields(){
		$fields = parent::getCMSFields();

		
		
		return $fields;
		
	}*/
	

}