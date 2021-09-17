<?php

use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Assets\Image;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\Forms\TextField;

class CouncilMember extends Page {

	private static $db = array(
		"Name" => "Text",
		"Position" => "Text",
		"EmailAddress" => "Text",

	);

    private static $owns = array(
        'CouncilPhoto'
    );

	private static $has_one = array(
		"CouncilPhoto" => Image::class,
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName("Content");
		$fields->removeByName("Metadata");
		$fields->removeByName("PagePhoto");

		$fields->addFieldToTab("Root.Main", new TextField("Position", "Position"));
		$fields->addFieldToTab("Root.Main", new TextField("EmailAddress", "Email address"));
		$fields->addFieldToTab("Root.Main", new UploadField("CouncilPhoto", "Photo"));
		$fields->addFieldToTab("Root.Main", new HTMLEditorField("Content", "Description"));

		return $fields;

	}

	//private static $allowed_children = array("");

}
