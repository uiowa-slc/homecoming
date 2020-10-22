<?php

use SilverStripe\Forms\DropdownField;
use SilverStripe\ORM\ArrayList;

class CategoryPage extends Page {

	private static $db = array(
	);

	private static $has_one = array(
		"Category" => "Category",
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$categoryField = new DropdownField('CategoryID', 'Display the following category on this page:', Category::get()->map('ID', 'Title'));
		$fields->addFieldToTab("Root.Main", $categoryField, "Content");

		return $fields;
	}

	public function Events() {

		$category = $this->Category();
		$catEvents = new ArrayList();

		if ($category) {

			$catEventsTemp = $category->CalendarEvents();

			foreach ($catEventsTemp as $catEventTemp) {

				if ($catEventTemp->UpcomingDates()->First()) {
					$catEvents->push($catEventTemp->UpcomingDates()->First());
				}
			}

		}

		$catEventsSorted = $catEvents->sort('StartDate ASC');

		// print_r($catEvents);

		return $catEventsSorted;

	}

}
