<?php

class SiteConfigExtension extends DataExtension {

	static $db = array(
		'DateRange' => 'Text',
	);

	static $has_one = array(

	);

	public function updateCMSFields(FieldList $fields) {
		$fields->addFieldToTab('Root.Main', new TextField('DateRange', 'Homecoming Dates'));

		return $fields;

	}

}
class SiteConfigExtensionPage_Controller extends Page_Controller {

	public function init() {
		parent::init();
	}

}