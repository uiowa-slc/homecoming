<?php

namespace {
    use SilverStripe\AssetAdmin\Forms\UploadField;
    use SilverStripe\Assets\Image;
    use SilverStripe\CMS\Model\SiteTree;
    use SilverStripe\ORM\ArrayList;
	use SilverStripe\CMS\Controllers\ContentController;

	class PageController extends ContentController {
		/**
		 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
		 * permissions or conditions required to allow the user to access it.
		 *
		 * <code>
		 * [
		 *     'action', // anyone can access this action
		 *     'action' => true, // same as above
		 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
		 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
		 * ];
		 * </code>
		 *
		 * @var array
		 */
		private static $allowed_actions = [];

		protected function init() {
			parent::init();
			// You can include any CSS or JS required by your project here.
			// See: https://docs.silverstripe.org/en/developer_guides/templates/requirements/
		}
		public function Buttons() {
			$buttons = Button::get()->sort('Year', 'DESC');
			if ($buttons) {
				return $buttons;
			}

		}

        public function EventsByCategoryDate($categoryName) {
            $request = $this->getRequest();
            //print_r($request->param("ID"));
            $filterDate = $request->param("ID");
            $category = Category::get()->filter(array('Title' => $categoryName))->First();
            $catEvents = new ArrayList();

            if ($category) {

                $catEventsTemp = $category->CalendarEvents();

                foreach ($catEventsTemp as $catEventTemp) {

                    if ($catEventTemp->UpcomingDates()->First()) {

                        $eventDate = $catEventTemp->UpcomingDates()->First();


                        if($eventDate->StartDate == $filterDate){
                            $catEvents->push($catEventTemp->UpcomingDates()->First());
                        }



                    }
                }

            }

            $catEventsSorted = $catEvents->sort(array("StartDate" => "ASC", "StartTime" => "ASC"));
            return $catEventsSorted;

        }
        public function AllEventsDate() {
            $calendar = Calendar::get()->First();
            $request = $this->getRequest();
            $filterDate = $request->param("ID");

            $events = $calendar->getEventList($filterDate, $filterDate);
            return $events;
        }

	}
}
