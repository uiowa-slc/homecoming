<?php

use Colymba\BulkManager\BulkManager;
use Colymba\BulkUpload\BulkUploader;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RelationEditor;

class ButtonArchivePage extends Page {

	private static $db = array(
	);

	private static $has_one = array(
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$gridFieldConfig = GridFieldConfig_RelationEditor::create();
		$gridFieldConfig->addComponent(new BulkUploader());
		$gridFieldConfig->addComponent(new BulkManager());
		$gridField = new GridField("Buttons", "Buttons", Button::get(), $gridFieldConfig);

		$fields->addFieldToTab("Root.Main", $gridField, "Content");

		return $fields;
	}

}
