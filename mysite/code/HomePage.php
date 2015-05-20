<?php
class HomePage extends Page {

	private static $db = array(
		"CalloutOne" => "Text",
		"CalloutTwo" => "Text",
		"CalloutThree" => "Text",

		"CalloutOneDesc" => "Text",
		"CalloutTwoDesc" => "Text",
		"CalloutThreeDesc" => "Text"
	);

	private static $has_one = array(
		"HomePhoto" => "Image",
		"CalloutOnePhoto" => "Image",
		"CalloutTwoPhoto" => "Image",
		"CalloutThreePhoto" => "Image",
		"CalloutOneTree" => "SiteTree",
		"CalloutTwoTree" => "SiteTree",
		"CalloutThreeTree" => "SiteTree"
	);

	public function getCMSFields(){
    $fields = parent::getCMSFields();

    // $fields->removeByName("Content");
    $fields->removeByName("Metadata");
    $fields->removeByName("PagePhoto");
    $fields->addFieldToTab("Root.Main", new UploadField("HomePhoto", "Photo"));

    $fields->addFieldToTab("Root.CalloutOne", new TextField("CalloutOne", "Title"));
    $fields->addFieldToTab("Root.CalloutOne", new TextField("CalloutOneDesc", "Description"));
    $fields->addFieldToTab("Root.CalloutOne", new UploadField("CalloutOnePhoto", "Photo"));
    $fields->addFieldToTab("Root.CalloutOne", new TreeDropdownField("CalloutOneTreeID", "Select a Page:", "SiteTree"));

    $fields->addFieldToTab("Root.CalloutTwo", new TextField("CalloutTwo", "Title"));
    $fields->addFieldToTab("Root.CalloutTwo", new TextField("CalloutTwoDesc", "Description"));
    $fields->addFieldToTab("Root.CalloutTwo", new UploadField("CalloutTwoPhoto", "Photo"));
    $fields->addFieldToTab("Root.CalloutTwo", new TreeDropdownField("CalloutTwoTreeID", "Select a Page:", "SiteTree"));

    $fields->addFieldToTab("Root.CalloutThree", new TextField("CalloutThree", "Title"));
    $fields->addFieldToTab("Root.CalloutThree", new TextField("CalloutThreeDesc", "Description"));
    $fields->addFieldToTab("Root.CalloutThree", new UploadField("CalloutThreePhoto", "Photo"));
    $fields->addFieldToTab("Root.CalloutThree", new TreeDropdownField("CalloutThreeTreeID", "Select a Page:", "SiteTree"));


    return $fields;

  }

}
class HomePage_Controller extends Page_Controller {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */

	public function init() {
		parent::init();
		// You can include any CSS or JS required by your project here.
		// See: http://doc.silverstripe.org/framework/en/reference/requirements
	}

}
