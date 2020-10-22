<?php

use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Assets\Image;
use SilverStripe\Forms\TextField;

class SponsorPage extends Page {

	private static $db = array(
		"SponsorUrl" => "Text",
	);

	private static $has_one = array(
		"SponsorPhoto" => Image::class,
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName("Content");
		$fields->removeByName("Metadata");
		$fields->removeByName("PagePhoto");

		$fields->addFieldToTab("Root.Main", new UploadField("SponsorPhoto", "Sponsor Photo"));
		$fields->addFieldToTab("Root.Main", new TextField("SponsorUrl", "Sponsor URL (http://www.domain.com)"));

		return $fields;

	}

}
