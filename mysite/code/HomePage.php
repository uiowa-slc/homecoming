<?php

use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Assets\Image;
use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\TreeDropdownField;

class HomePage extends Page {

	private static $db = array(
		"CalloutOne" => "Text",
		"CalloutTwo" => "Text",
		"CalloutThree" => "Text",

		"CalloutOneDesc" => "Text",
		"CalloutTwoDesc" => "Text",
		"CalloutThreeDesc" => "Text",
	);

	private static $has_one = array(
		"HomePhoto" => Image::class,
		"HeaderPhoto1" => Image::class,
		"HeaderPhoto2" => Image::class,
		"HeaderPhoto3" => Image::class,
		"CalloutOnePhoto" => Image::class,
		"CalloutTwoPhoto" => Image::class,
		"CalloutThreePhoto" => Image::class,
		"CalloutOneTree" => SiteTree::class,
		"CalloutTwoTree" => SiteTree::class,
		"CalloutThreeTree" => SiteTree::class,
	);

  private static $owns = array(
        "HomePhoto",
        "HeaderPhoto1",
        "HeaderPhoto2",
        "HeaderPhoto3",
        "CalloutOnePhoto",
        "CalloutTwoPhoto",
        "CalloutThreePhoto"
  );


	public function getCMSFields() {
		$fields = parent::getCMSFields();

		// $fields->removeByName("Content");
		$fields->removeByName("Metadata");
		$fields->removeByName("HeaderPhoto");

		$fields->removeByName("PagePhoto");
		$fields->addFieldToTab("Root.Main", new UploadField("HomePhoto", "Content Photo"));

		$fields->addFieldToTab("Root.Main", new UploadField("HeaderPhoto1", "Header Photo"));
		// $fields->addFieldToTab("Root.Main", new UploadField("HeaderPhoto2", "Header Photo"));
		// $fields->addFieldToTab("Root.Main", new UploadField("HeaderPhoto3", "Header Photo"));

		$fields->addFieldToTab("Root.CalloutOne", new TextField("CalloutOne", "Title"));
		$fields->addFieldToTab("Root.CalloutOne", new TextField("CalloutOneDesc", "Description"));
		$fields->addFieldToTab("Root.CalloutOne", new UploadField("CalloutOnePhoto", "Photo"));
		$fields->addFieldToTab("Root.CalloutOne", new TreeDropdownField("CalloutOneTreeID", "Select a Page:", SiteTree::class));

		$fields->addFieldToTab("Root.CalloutTwo", new TextField("CalloutTwo", "Title"));
		$fields->addFieldToTab("Root.CalloutTwo", new TextField("CalloutTwoDesc", "Description"));
		$fields->addFieldToTab("Root.CalloutTwo", new UploadField("CalloutTwoPhoto", "Photo"));
		$fields->addFieldToTab("Root.CalloutTwo", new TreeDropdownField("CalloutTwoTreeID", "Select a Page:", SiteTree::class));

		$fields->addFieldToTab("Root.CalloutThree", new TextField("CalloutThree", "Title"));
		$fields->addFieldToTab("Root.CalloutThree", new TextField("CalloutThreeDesc", "Description"));
		$fields->addFieldToTab("Root.CalloutThree", new UploadField("CalloutThreePhoto", "Photo"));
		$fields->addFieldToTab("Root.CalloutThree", new TreeDropdownField("CalloutThreeTreeID", "Select a Page:", SiteTree::class));

		return $fields;

	}

}
