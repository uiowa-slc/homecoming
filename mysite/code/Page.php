<?php
class Page extends SiteTree {

	private static $db = array(
	);

	private static $has_one = array(
		"PagePhoto" => "Image",
		"HeaderPhoto" => "Image"
	);

	public function getCMSFields(){
		$fields = parent::getCMSFields();

		$fields->removeByName("Metadata");

		$fields->addFieldToTab("Root.Main", new UploadField("PagePhoto", "Content Image"));
		$fields->addFieldToTab("Root.Main", new UploadField("HeaderPhoto", "Header Photo"));

		return $fields;

	}

	public function EventsByCategory($categoryName){
		$category = Category::get()->filter(array('Title' => $categoryName))->First();
		$catEvents = new ArrayList();

		if($category){

			$catEventsTemp = $category->CalendarEvents();


			foreach($catEventsTemp as $catEventTemp){

				if($catEventTemp->UpcomingDates()->First()){
					$catEvents->push($catEventTemp->UpcomingDates()->First());
				}
			}

		}

		$catEventsSorted = $catEvents->sort('StartDate ASC');

		// print_r($catEvents);

		return $catEventsSorted;
		

	}

}
class Page_Controller extends ContentController {

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
	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();
		Requirements::block('division-bar/css/_division-bar.css');
		// You can include any CSS or JS required by your project here.
		// See: http://doc.silverstripe.org/framework/en/reference/requirements
	}

	public function Buttons(){
		$buttons = Button::get()->sort('Year', 'DESC');
		if($buttons) return $buttons;
	}

}
