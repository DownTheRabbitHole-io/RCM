<?php
class HomePage extends Page {

	private static $db = array(
	);

	private static $has_one = array(
	);

	/**
	 * @var array
	 */
	private static $has_many = array(
		'PageSections' => 'PageSection'
	);

	public function getCMSFields(){
		$fields = parent::getCMSFields();

		$fields->addFieldToTab('Root.Sections',
				GridField::create('PageSections', 'Page Sections',
						$this->PageSections(),
						GridFieldConfig_RecordEditor::create()
						->addComponent(new GridFieldSortableRows('SortID')) //use addComponent() function to add SortableGridFieldRows
					)
				);
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
	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();

		Requirements::javascript("mysite/javascript/HomePage.js");
		// You can include any CSS or JS required by your project here.
		// See: http://doc.silverstripe.org/framework/en/reference/requirements
	}

}
