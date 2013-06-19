<?php

class Court extends Page {
	public static $db = array(
				'Description' => 'HTMLText',
				"RoyaltyHeader" => "Text",
				'RoyaltyHistory' => 'HTMLText',
				"HonoredGuestHeader" => "Text",
				'GuestHistory' => 'HTMLText',
				'KingCandidates' => 'HTMLText',
				'QueenCandidates' => 'HTMLText'
	);
	public static $has_one = array(
			"Image" => "Image",
			"Image2" => "Image"
	);
	function getCMSFields() {
	$fields = parent::getCMSFields();
	$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('Description','Description'));
	$fields->addFieldToTab('Root.Content.Main', new ImageField('Image', 'Image'));
	$fields->addFieldToTab('Root.Content.Main', new TextField('RoyaltyHeader', 'RoyaltyHeader'));
	$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('RoyaltyHistory','RoyaltyHistory'));
	$fields->addFieldToTab('Root.Content.Main', new ImageField('Image2', 'Image2'));
	$fields->addFieldToTab('Root.Content.Main', new TextField('HonoredGuestHeader', 'HonoredGuestHeader'));
	$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('GuestHistory','GuestHistory'));
	$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('KingCandidates','Candidates for King.'));
	$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('QueenCandidates','Candidates for Queen.'));	
	return $fields;
	}	
}

class Court_Controller extends Page_Controller {
	public function init() {
		parent::init();
	}
}

?>