<?php
class CalendarEventExtension extends DataExtension {

	private static $db = array(
	'EventLocation' => 'Text',
	);

	private static $has_one = array(

	);

	private static $many_many = array (
		"Categories" => "Category"
	);

	public function updateCMSFields(FieldList $fields) {

		$categoriesMap = array();
		foreach(Category::get() as $category) {
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

		  $fields->addFieldToTab("Root.Main", $tagField, "Content");

	}


}