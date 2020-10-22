<?php
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Assets\Image;
use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\ORM\ArrayList;

class Page extends SiteTree {

	private static $db = array(
	);

	private static $has_one = array(
		"PagePhoto" => Image::class,
		"HeaderPhoto" => Image::class,
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName("Metadata");

		$fields->addFieldToTab("Root.Main", new UploadField("HeaderPhoto", "Header Photo"), 'Content');
		$fields->addFieldToTab("Root.Main", new UploadField("PagePhoto", "Content Image"), 'Content');
		return $fields;

	}

	public function EventsByCategory($categoryName) {
		$category = Category::get()->filter(array('Title' => $categoryName))->First();
		$catEvents = new ArrayList();

		if ($category) {

			$catEventsTemp = $category->CalendarEvents();

			foreach ($catEventsTemp as $catEventTemp) {

				if ($catEventTemp->UpcomingDates()->First()) {
					$catEvents->push($catEventTemp->UpcomingDates()->First());
				}
			}

		}

		$catEventsSorted = $catEvents->sort(array("StartDate" => "ASC", "StartTime" => "ASC"));

		// print_r($catEvents);

		return $catEventsSorted;

	}

}
