<?php

/**
 *  *
 * @package silverstripe
 */

class ApplicationModel extends DataObject {
	/**
	 * @var array
	 */
	private static $db = array(
		'FirstName' => 'Varchar(255)',
		'Surname' => 'Varchar(255)',
		'Nationality' => 'Varchar(255)',
		'Gender' => 'Varchar(255)',
		'MaritalStatus' => 'Varchar(255)',
		'DOB' => 'Varchar(255)',
		'Email' => 'Varchar(255)',
		'Phone' => 'Varchar(255)',
		'Fax' => 'Varchar(255)',
		'CurrentAddress' => 'Varchar(255)',
		'Country' => 'Varchar(255)',
		'NameofBank' => 'Varchar(255)',
		'BaseCurrencyofAccount' => 'Varchar(255)',
		'AccountHoldersName' => 'Varchar(255)',
		'AccountNumber' => 'Varchar(255)',
		'CurrentEmployer' => 'Varchar(255)',
		'WorkYear' => 'Varchar(255)',
		'EmployerAddress' => 'Varchar(255)',
		'City' => 'Varchar(255)',
		'State' => 'Varchar(255)',
		'CountryEmployer' => 'Varchar(255)',
		'EmailEmployer' => 'Varchar(255)',
		'PhoneEmployer' => 'Varchar(255)',
		'FaxEmployer' => 'Varchar(255)',
		'Position' => 'Varchar(255)',
		'AnnualIncome' => 'Varchar(255)',
		'IncomeType' => 'Varchar(255)',
		'ApproximateNetWorth' => 'Varchar(255)',
		'InvestmentObjective' => 'Varchar(255)',
		'Equities' => 'Varchar(255)',
		'Options' => 'Varchar(255)',
		'FuturesCFDs' => 'Varchar(255)',
		'FOREX' => 'Varchar(255)',
		'TradingExperience' => 'Varchar(255)',
		'TOC' => 'Boolean',
		'SortID' => 'Int',

	);

	/**
	 * @var array
	 */
	private static $has_one = array(
		'Application' => 'Application',
		'UploadID' => 'Image',
		'UploadStatement' => 'File',
	);

	private static $summary_fields = array (
		'FirstName',
		'Surname' ,
		'Nationality' ,
		'Gender' ,
		'MaritalStatus' ,
		'DOB' ,
		'Email' ,
		'Phone' ,
		'Fax' ,
		'CurrentAddress' ,
		'Country' ,
		'NameofBank' ,
		'BaseCurrencyofAccount' ,
		'AccountHoldersName' ,
		'AccountNumber' ,
		'CurrentEmployer' ,
		'WorkYear' ,
		'EmployerAddress' ,
		'City' ,
		'State' ,
		'CountryEmployer' ,
		'EmailEmployer' ,
		'PhoneEmployer' ,
		'FaxEmployer' ,
		'Position' ,
		'AnnualIncome' ,
		'IncomeType' ,
		'ApproximateNetWorth' ,
		'InvestmentObjective' ,
		'Equities' ,
		'Options' ,
		'FuturesCFDs' ,
		'FOREX' ,
		'TradingExperience' ,
		'TOC',
		'SortID',
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

		$title = TextField::create('FirstName', 'FirstName');
		$title->Required();
		$title->setCustomValidationMessage('A FirstName is required.');

		$uploadField = UploadField::create('UploadID',  'UploadID' ,NULL,NULL,NULL,'UploadID');
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
