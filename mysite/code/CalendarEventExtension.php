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

   	  //$tagField = new TagField('Categories', 'Categories: students faculty-staff alumni-friends (separated by spaces, no commas)', null, 'CalendarEvent');
      //$tagField = new TreeMultiselectField('Categories', 'Categories', "Category", "ID", "Title" );

	$categoriesMap = array();
	foreach(Category::get() as $category) {
	// Listboxfield values are escaped, use ASCII char instead of &raquo;
	$categoriesMap[$category->ID] = $category->Title;

	}

	asort($categoriesMap);
	
	$tagField = ListboxField::create('Categories', 'Categories')
		->setMultiple(true)
		->setSource($categoriesMap)
		->setAttribute(
			'data-placeholder', 
			'Add Tags'
		);

      $fields->addFieldToTab("Root.Main", new TextField("EventLocation", "Location"));
      $fields->addFieldToTab("Root.Main", new UploadField("EventImage", "Image"));
      $fields->addFieldToTab("Root.Main", $tagField, "Content");

    }


	/*public function getCMSFields(){
		$fields = parent::getCMSFields();

		
		
		return $fields;
		
	}*/
	

}