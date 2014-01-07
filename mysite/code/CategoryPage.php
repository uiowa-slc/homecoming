<?php
class CategoryPage extends Page {

	private static $db = array(
	);

	private static $has_one = array(
		"Category" => "Category"
	);

	public function getCMSFields(){
		$fields = parent::getCMSFields();
		$categoryField = new DropdownField('CategoryID', 'Display the following category on this page:', Category::get()->map('ID', 'Title'));
		$fields->addFieldToTab("Root.Main", $categoryField, "Content");
		
		return $fields;
	}

}
class CategoryPage_Controller extends Page_Controller {

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
