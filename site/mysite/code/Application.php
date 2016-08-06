<?php
class Application extends Page{
	static $db = array(
        'Mailto' => 'Varchar(100)',
        'SubmitText' => 'Text',
		'Declaration' => 'HTMLText',
		'ClientServicesAgreement' => 'HTMLText',
		'AggreeLine' => 'Varchar(400)',
    );

	private static $has_many = array(
		"ApplicationModels" => "ApplicationModel"
	);

    function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab("Root.OnSubmission", new TextField('Mailto', 'Email submissions to'));
        $fields->addFieldToTab("Root.OnSubmission", new TextareaField('SubmitText', 'Text on Submission'));

		$fields->addFieldToTab('Root.Form', HtmlEditorField::create('Declaration', 'Declaration'));
		$fields->addFieldToTab('Root.Form', HtmlEditorField::create('ClientServicesAgreement', 'Client Services Agreement'));
		$fields->addFieldToTab('Root.Form', TextField::create('AggreeLine', 'AggreeLine'));

		$grid = GridField::create('Application', 'ApplicationModels',
                $this->ApplicationModels()
            );
        // GridField configuration
        $config = $grid->getConfig();

        $config->addComponent(new GridFieldExportButton());


        $fields->addFieldToTab('Root.Applications',$grid);

        return $fields;
    }
}


class Application_Controller extends Page_Controller{
	static $allowed_actions = array(
        'ApplicationForm'
    );


    function ApplicationForm() {
        // Create fields
        $fields = new FieldList(
			TextField::create('FirstName', _t('APPLICATION.FirstName',"FirstName"))
				->setAttribute('class', 'form-control')
				->setAttribute('data-validation', 'required length')
				->setAttribute('data-validation-length', '3-20')
				->setAttribute('data-validation-error-msg', "Really? it's your first name"),
			TextField::create('Surname', _t('APPLICATION.Surname',"Surname / Family name"))
				->setAttribute('class', 'form-control')
				->setAttribute('data-validation', 'required length')
				->setAttribute('data-validation-length', '2-20'),
			TextField::create('Nationality', _t('APPLICATION.Nationality',"Nationality"))
				->setAttribute('class', 'form-control')
				->setAttribute('data-validation', 'required')
				->setAttribute('data-validation-error-msg', "what's your nationality?"),
			TextField::create('DOB', _t('APPLICATION.FULLNAME',"Date of Birth"))
				->setAttribute('class', 'form-control')
				->setAttribute('data-validation', 'date')
				->setAttribute('data-validation-format', 'yyyy-mm-dd'),
			TextField::create('Email', _t('APPLICATION.Email',"Email"))
				->setAttribute('class', 'form-control')
				->setAttribute('data-validation', 'email')
				->setAttribute('data-validation-error-msg', 'Woops! it does not looks like an email'),
			TextField::create('Phone', _t('APPLICATION.Phone',"Phone"))
				->setAttribute('class', 'form-control phone-lenth')
				->setAttribute('data-validation', 'number')
				->setAttribute('data-validation-error-msg', 'Enter 10 digit number only'),
			TextField::create('Fax', _t('APPLICATION.Fax',"Fax"))
				->setAttribute('class', 'form-control fax-lenth')
				->setAttribute('data-validation', 'number')
				->setAttribute('data-validation-decimal-separator', '-')
				->setAttribute('data-validation-error-msg', 'Enter your fax number'),
			TextField::create('CurrentAddress', _t('APPLICATION.CurrentAddress',"Current Address"))
				->setAttribute('class', 'form-control')
				->setAttribute('data-validation', 'required'),
			CountryDropdownField::create('Country', _t('APPLICATION.Country',"Country"), null , 'NZ')
				->setAttribute('class', 'form-control show-tick'),
			TextField::create('NameofBank', _t('APPLICATION.NameofBank',"Name of Bank"))
				->setAttribute('class', 'form-control')
				->setAttribute('data-validation', 'required length')
				->setAttribute('data-validation-length', '2-50'),
			TextField::create('BaseCurrencyofAccount',  _t('APPLICATION.BaseCurrencyofAccount',"Base Currency of Account"))
				->setAttribute('class', 'form-control')
				->setAttribute('data-validation', 'required'),
			TextField::create('AccountHoldersName', _t('APPLICATION.AccountHoldersName',"Account Holders Name"))
				->setAttribute('class', 'form-control')
				->setAttribute('data-validation', 'required length')
				->setAttribute('data-validation-length', '5-70'),
			TextField::create('AccountNumber', _t('APPLICATION.AccountNumber',"Account Number"))
				->setAttribute('class', 'form-control')
				->setAttribute('data-validation', 'number length')
				->setAttribute('data-validation-length', '3-30'),
			TextField::create('CurrentEmployer', _t('APPLICATION.CurrentEmployer',"Current Employer"))
				->setAttribute('class', 'form-control'),
			TextField::create('WorkYear', _t('APPLICATION.WorkYear',"How long have you been with this Employer?"))
				->setAttribute('class', 'form-control'),
			TextField::create('EmployerAddress', _t('APPLICATION.EmployerAddress',"Employer Address"))
				->setAttribute('class', 'form-control'),
			TextField::create('City', _t('APPLICATION.City',"City"))
				->setAttribute('class', 'form-control'),
			TextField::create('State', _t('APPLICATION.State',"State"))
				->setAttribute('class', 'form-control'),
			CountryDropdownField::create('CountryEmployer', _t('APPLICATION.CountryEmployer',"Country"), null , 'NZ')
				->setAttribute('class', 'form-control show-tick'),
			TextField::create('EmailEmployer', _t('APPLICATION.EmailEmployer',"Email"))
				->setAttribute('class', 'form-control')
				->setAttribute('data-validation', 'email')
				->setAttribute('data-validation-optional' , 'true')
				->setAttribute('data-validation-error-msg', 'Woops! it does not looks like an email'),
			TextField::create('PhoneEmployer', _t('APPLICATION.PhoneEmployer',"Phone"))
				->setAttribute('class', 'form-control phone-lenth_2')
				->setAttribute('data-validation', 'number')
				->setAttribute('data-validation-error-msg', 'Enter 10 digit number only')
				->setAttribute('data-validation-optional' , 'true'),
			TextField::create('FaxEmployer', _t('APPLICATION.FaxEmployer',"Fax"))
				->setAttribute('class', 'form-control fax-lenth')
				->setAttribute('data-validation', 'number')
				->setAttribute('data-validation-optional' , 'true')
				->setAttribute('data-validation-decimal-separator', '-')
				->setAttribute('data-validation-error-msg', 'Enter your fax number'),
			TextField::create('Position', _t('APPLICATION.Position',"Position"))
				->setAttribute('class', 'form-control'),
			TextField::create('AnnualIncome', _t('APPLICATION.AnnualIncome',"Annual Income"))
				->setAttribute('class', 'form-control'),
			TextField::create('TradingExperience', _t('APPLICATION.TradingExperience',"Trading Experience"))
				->setAttribute('class', 'form-control'),
			FileField::create('UploadID','Upload I.D.')
			    ->setAttribute('class', 'file-upload-input')
				->setAttribute('data-validation', 'mime size required')
				->setAttribute('data-validation-allowing' , 'jpg, png, pdf')
				->setAttribute('data-validation-max-size', '800kb')
				->setAttribute('data-validation-error-msg-size', 'File is too large')
				->setAttribute('data-validation-error-msg-required', 'Nothing is selected'),
			FileField::create('UploadStatement','Upload Statement')
			    ->setAttribute('class', 'file-upload-input')
				->setAttribute('data-validation', 'mime size required')
				->setAttribute('data-validation-allowing' , 'pdf, xls')
				->setAttribute('data-validation-max-size', '3mb')
				->setAttribute('data-validation-error-msg-size', 'File is too large')
				->setAttribute('data-validation-error-msg-required', 'Nothing is selected')
		);

        // Create action
        $actions = new FieldList(
            FormAction::create('SendApplicationForm', _t('APPLICATION.SEND',"Send Application"))
				->setAttribute('class', 'cs-submit')
        );


		$form = new Form($this, 'ApplicationForm', $fields, $actions, null);

		$form->setTemplate('ApplicationForm');


        return $form;
    }

	function SendApplicationForm($data, $form) {

		$ApplicationModel = ApplicationModel::create($data);
		if($data['gender'] == 1){
			$ApplicationModel->Gender = 'Male';
		}else{
			$ApplicationModel->Gender = 'Female';
		}
		switch($data['mrtalsts']){
			case 1:
				$ApplicationModel->MaritalStatus = 'Single';
			break;
			case 2:
				$ApplicationModel->MaritalStatus = 'Married';
			break;
			case 3:
				$ApplicationModel->MaritalStatus = 'Defacto';
			break;
			case 4:
				$ApplicationModel->MaritalStatus = 'Divorced';
			break;
			case 5:
				$ApplicationModel->MaritalStatus = 'Widowed';
			break;
		}

		if($data['inctype'] == 1){
			$ApplicationModel->IncomeType = 'Hourly';
		}else{
			$ApplicationModel->IncomeType = 'Salary';
		}

		switch($data['anworth']){
			case 1:
				$ApplicationModel->ApproximateNetWorth = '$25,000 - $50,000';
			break;
			case 2:
				$ApplicationModel->ApproximateNetWorth = '$50,001 - $250,000';
			break;
			case 3:
				$ApplicationModel->ApproximateNetWorth = 'Over $250,001';
			break;
		}

		switch($data['inobject']){
			case 1:
				$ApplicationModel->InvestmentObjective = 'Speculative';
			break;
			case 2:
				$ApplicationModel->InvestmentObjective = 'Hedging';
			break;
		}

		switch($data['equitie']){
			case 1:
				$ApplicationModel->Equities = '1 - 3 Years';
			break;
			case 2:
				$ApplicationModel->Equities = '3 - 5 Years';
			break;
			case 3:
				$ApplicationModel->Equities = 'Over 5 Years';
			break;
		}

		switch($data['option']){
			case 1:
				$ApplicationModel->Options = '1 - 3 Years';
			break;
			case 2:
				$ApplicationModel->Options = '3 - 5 Years';
			break;
			case 3:
				$ApplicationModel->Options = 'Over 5 Years';
			break;
		}

		switch($data['futures']){
			case 1:
				$ApplicationModel->FuturesCFDs = '1 - 3 Years';
			break;
			case 2:
				$ApplicationModel->FuturesCFDs = '3 - 5 Years';
			break;
			case 3:
				$ApplicationModel->FuturesCFDs = 'Over 5 Years';
			break;
		}

		switch($data['forex']){
			case 1:
				$ApplicationModel->FOREX = '1 - 3 Years';
			break;
			case 2:
				$ApplicationModel->FOREX = '3 - 5 Years';
			break;
			case 3:
				$ApplicationModel->FOREX = 'Over 5 Years';
			break;
		}

		$ApplicationModel->TOC = $data['toc'];



		$ApplicationModel->write();

		$uploadID = new Image();
		$UploadStatement = new File();

		$upload = new Upload();

		$upload->loadIntoFile($data['UploadID'], $uploadID);

		$upload->loadIntoFile($data['UploadStatement'], $UploadStatement);

		$ApplicationModel->UploadIDID = $uploadID->ID;
		$ApplicationModel->UploadStatementID = $UploadStatement->ID;

		$ApplicationModel->write();

		$this->ApplicationModels()->add($ApplicationModel);



        //Set data

        $From = 'customerservice@fxrcif.com';
        $To = $this->Mailto;
        $Subject = "RCM Contact Form";
        $email = new Email($From, $To, $Subject);
        //set template
        $email->setTemplate('ApplicationEmail');
        //populate template
        $email->populateTemplate($ApplicationModel);
        //send mail
        $email->send();
        //return to submitted message
		$this->redirect($this->Link("?success=1"));
    }

	public function UsersIpAddress() {
	    return $this->getRequest()->getIP();
	}

	public function Success()
    {
        return isset($_REQUEST['success']) && $_REQUEST['success'] == "1";
    }
}
?>
