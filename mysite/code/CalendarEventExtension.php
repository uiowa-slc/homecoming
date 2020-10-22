<?php

use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\ORM\DataExtension;
use SilverStripe\ORM\DataList;
use SilverStripe\TagField\TagField;

class CalendarEventExtension extends DataExtension {

	private static $db = array(
		'EventLocation' => 'Text',
		'VirtualEventLink' => 'Text',
	);

	private static $has_one = array(

	);

	private static $many_many = array(
		"Categories" => "Category",
	);

	public function UpcomingDates($limit = 3) {
		return DataList::create('CalendarDateTime')
			->filter("EventID", $this->owner->ID)
			->where("\"StartDate\" >= DATE(NOW())")
			->sort("\"StartDate\" ASC")
			->limit($limit);
	}
	public function updateCMSFields(FieldList $fields) {
		$fields->removeByName('Location');

		$categoriesMap = array();
		foreach (Category::get() as $category) {
			$categoriesMap[$category->ID] = $category->Title;
		}

		asort($categoriesMap);

		$tagField = TagField::create(
			'Categories',
			'Categories',
			Category::get(),
			$this->owner->Categories()
		)
			->setShouldLazyLoad(false) // tags should be lazy loaded
			->setCanCreate(true);

		$fields->addFieldToTab("Root.Main", new TextField("EventLocation", "Location"), 'Content');
		$fields->addFieldToTab("Root.Main", new TextField("VirtualEventLink", "Virtual Event URL"), 'Content');

		$fields->addFieldToTab("Root.Main", $tagField, "Content");

	}

}
