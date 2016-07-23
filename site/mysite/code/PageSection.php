<?php

/**
 *  *
 * @package silverstripe
 */

class PageSection extends DataObject {
	/**
	 * @var array
	 */
	private static $db = array(
		'Title' => 'Varchar(255)',
		'Content' => 'HTMLText',
		'SortID' => 'Int',

	);

	/**
	 * @var array
	 */
	private static $has_one = array(
		'HomePage' => 'HomePage',
		'Image' => 'Image',
	);

	/**
	 * The default sorting lists GuideSections by sortID.
	 *
	 * @var string
	 */
	private static $default_sort = '"SortID" ASC';


	/**
	 * {@inheritdoc}
	 */
	public function getCMSFields() {

		$title = TextField::create('Title', 'Title');
		$title->Required();
		$title->setCustomValidationMessage('A title is required.');

		$content = HtmlEditorField::create('Content', 'Content');
		$content->Required();
		$content->setCustomValidationMessage('Content is required.');

		$uploadField = UploadField::create('Image',  'Image' ,NULL,NULL,NULL,'homepageImage');
		$uploadField->getValidator()->setAllowedExtensions(array('jpg', 'jpeg', 'png', 'gif'));

		$fields = new FieldList(
			$title,
			$content,
			$uploadField
		);

		$this->extend('updateCMSFields', $fields);

		return $fields;
	}

	function canDelete($member = null) {
      return true;
	}

	function canAdd($member = null) {
      return true;
	}


}
