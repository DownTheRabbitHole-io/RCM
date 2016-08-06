(function($) {

	"use strict";


	// initializing all plugins
	$(document).ready(function() {

		// init wizard [[ VALIDATION MAIN ]]
		$('#cs-appcal-wizard').bootstrapWizard({
			// tigger next
			onNext: function(tab, navigation, index) {

				// these grouped checkboxes
				// Example: var CHECK_BOX_SELECTOR_VARIABLE_NAME = $("input[name='CHECK_BOX_NAME']");
				// Note: all checkbox should use same name in a group but different value and id
				var genInName = $("input[name='gender']");
				var mstatusInName = $("input[name='mrtalsts']");

				// serialize variavle for these check boxes
				// Example: var YOUR_ARRAY_VAR_NAME = CHECK_BOX_SELECTOR_VARIABLE.serializeArray();
				// Note: now you have to apply the validation condition on the tab where your element has placed, check line: [[[ 90-99 ]]]
				var fieldGender = genInName.serializeArray();
				var fieldMstatus = mstatusInName.serializeArray();


				// [we have 7 tabs but validation is only for four tabs tab 1,2,6 and 7.
				//	but I wrote validations for tab 4 because I told you the structure of those checkbox group in tab 4 is different,
				// don't worry validation for that tab is temporarily disabled, enable it if needed]
				// STARTING IT
				/*
				var anetworInName = $("input[name='anworth']");
				var invobjInName = $("input[name='inobject']");
				var equitiesInName = $("input[name='equitie']");
				var optionsInName = $("input[name='option']");
				var futuresInName = $("input[name='futures']");
				var forexInName = $("input[name='forex']");
				*/
				// ARRAYS
				/*
				var fieldNetwor = anetworInName.serializeArray();
				var fieldInvest = invobjInName.serializeArray();
				var fieldEquitie = equitiesInName.serializeArray();
				var fieldOption = optionsInName.serializeArray();
				var fieldFuture = futuresInName.serializeArray();
				var fieldForex = forexInName.serializeArray();
				*/
				// WHAT NEXT? check the line : [[[ 147-181 ]]]




				// the first tab
				if(index==1) {

					// Example to checking any empty fields
					/*
					if(!$('#FIELD_ID').hasClass('valid')) {
						$('#FIELD_ID').addClass('error');
						$('#FIELD_ID').parent().addClass('has-error');
						return false;
					}
					*/

					// checking empty fields
					// first name
					if(!$('#Form_ApplicationForm_FirstName').hasClass('valid')) {
						$('#Form_ApplicationForm_FirstName').addClass('error');
						$('#Form_ApplicationForm_FirstName').parent().addClass('has-error');
						return false;
					}
					// surname
					if(!$('#Form_ApplicationForm_Surname').hasClass('valid')) {
						$('#Form_ApplicationForm_Surname').addClass('error');
						$('#Form_ApplicationForm_Surname').parent().addClass('has-error');
						return false;
					}
					// nationality
					if(!$('#Form_ApplicationForm_Nationality').hasClass('valid')) {
						$('#Form_ApplicationForm_Nationality').addClass('error');
						$('#Form_ApplicationForm_Nationality').parent().addClass('has-error');
						return false;
					}
					// date of birst
					if(!$('#Form_ApplicationForm_DOB').hasClass('valid')) {
						$('#Form_ApplicationForm_DOB').addClass('error');
						$('#Form_ApplicationForm_DOB').parent().addClass('has-error');
						return false;
					}
					// gender checkbox group
					if (fieldGender.length === 0) {
						$(genInName).parent().parent().find('.chk-label').addClass('appcal-error');
						return false;
					}
					// marital checkbox group
					if (fieldMstatus.length === 0) {
						$(mstatusInName).parent().parent().find('.chk-label').addClass('appcal-error');
						return false;
					}
					// email
					if(!$('#Form_ApplicationForm_Email').hasClass('valid')) {
						$('#Form_ApplicationForm_Email').addClass('error');
						$('#Form_ApplicationForm_Email').parent().addClass('has-error');
						return false;
					}
					// phone
					if(!$('#Form_ApplicationForm_Phone').hasClass('valid')) {
						$('#Form_ApplicationForm_Phone').addClass('error');
						$('#Form_ApplicationForm_Phone').parent().addClass('has-error');
						return false;
					}
					// fax
					if(!$('#Form_ApplicationForm_Fax').hasClass('valid')) {
						$('#Form_ApplicationForm_Fax').addClass('error');
						$('#Form_ApplicationForm_Fax').parent().addClass('has-error');
						return false;
					}
					// current address
					if(!$('#Form_ApplicationForm_CurrentAddress').hasClass('valid')) {
						$('#Form_ApplicationForm_CurrentAddress').addClass('error');
						$('#Form_ApplicationForm_CurrentAddress').parent().addClass('has-error');
						return false;
					}
				}

				// the second tab
				if(index==2) {
					// bank name
					if(!$('#Form_ApplicationForm_NameofBank').hasClass('valid')) {
						$('#Form_ApplicationForm_NameofBank').addClass('error');
						$('#Form_ApplicationForm_NameofBank').parent().addClass('has-error');
						return false;
					}
					// account holder
					if(!$('#Form_ApplicationForm_AccountHoldersName').hasClass('valid')) {
						$('#Form_ApplicationForm_AccountHoldersName').addClass('error');
						$('#Form_ApplicationForm_AccountHoldersName').parent().addClass('has-error');
						return false;
					}
					// account number
					if(!$('#Form_ApplicationForm_AccountNumber').hasClass('valid')) {
						$('#Form_ApplicationForm_AccountNumber').addClass('error');
						$('#Form_ApplicationForm_AccountNumber').parent().addClass('has-error');
						return false;
					}
				}
				// disabling tab 4 validation enable it if you needed
				/*
				if(index==4) {
					// approximate net worth checkbox group
					if (fieldNetwor.length === 0) {
						$(anetworInName).parent().parent().parent().find('.col-xs-12 .chk-label').addClass('appcal-error');
						return false;
					}
					// investment objective checkbox group
					if (fieldInvest.length === 0) {
						$(invobjInName).parent().parent().parent().find('.col-xs-12 .chk-label').addClass('appcal-error');
						return false;
					}
					// equities checkbox group
					if (fieldEquitie.length === 0) {
						$(equitiesInName).parent().parent().parent().find('.col-xs-12 .chk-label').addClass('appcal-error');
						return false;
					}
					// options checkbox group
					if (fieldOption.length === 0) {
						$(optionsInName).parent().parent().parent().find('.col-xs-12 .chk-label').addClass('appcal-error');
						return false;
					}
					// futures/cfds checkbox group
					if (fieldFuture.length === 0) {
						$(futuresInName).parent().parent().parent().find('.col-xs-12 .chk-label').addClass('appcal-error');
						return false;
					}
					// forex checkbox group
					if (fieldForex.length === 0) {
						$(forexInName).parent().parent().parent().find('.col-xs-12 .chk-label').addClass('appcal-error');
						return false;
					}
				}
				*/
				// the sixth tab
				if(index==6) {
					// terms and conditions
					if ($("input[name='toc']").serializeArray().length === 0) {
						$("input[name='toc']").siblings('.itext').addClass('appcal-error');
						$("input[name='toc']").siblings('.items').addClass('appcal-error');
						return false;
					}
				}
				// the seventh tab
				if(index==7) {
					$(".cs-submit").click(function() {
						// id upload
						if(!$('#Form_ApplicationForm_UploadID').val()) {
							$('#Form_ApplicationForm_UploadID').addClass('error');
							$('#Form_ApplicationForm_UploadID').parent().addClass('has-error');
							return false;
						}
						// document upload
						if(!$('#Form_ApplicationForm_UploadStatement').val()) {
							$('#Form_ApplicationForm_UploadStatement').addClass('error');
							$('#Form_ApplicationForm_UploadStatement').parent().addClass('has-error');
							return false;
						}
					});
				}
	  		},
			// disable tab head click
			onTabClick: function(tab, navigation, index) {
				return false;
			}
		});

		// init bootstrap-select
		$('#cs-appcal-wizard select').selectpicker();

		// init date picker
		$('#Form_ApplicationForm_DOB').DatePicker({
			startDate: moment(),
			endDate: moment(),
			locale: 'nz',
			format: 'YYYY-MM-DD'
		});

		// init validation
		$.validate({
			form : '.appcal-form',
			modules : 'jsconf, security, file',
			validateOnBlur : true,
			validateOnFocus : true,
			addSuggestions : false
		});

	});


	// make that work
	$(document).ready(function() {

		// styling file input so that it will display the file name only
		$("input:file").change(function (){
			var fileName = $(this).val().replace(/C:\\fakepath\\/i, '');
			$(this).siblings('.file-upload-label').html(fileName);
		});


		// display current step number at bottom while navigating through the wizard
		$('#cs-appcal-wizard .pager').on("click", '.next>a',  function(){
			var currtbText = $('#cs-appcal-wizard .nav-pills>li.active>a').text();
			$('#cs-appcal-wizard .form-bottom .current-tab').text(currtbText);
		});
		$('#cs-appcal-wizard .pager').on("click", '.previous>a',  function(){
			var currtbText = $('#cs-appcal-wizard .nav-pills>li.active>a').text();
			$('#cs-appcal-wizard .form-bottom .current-tab').text(currtbText);
		});


		// ok, those checkboxes are now work like radio button
		// also controlling some checkbox classes to toggle validation error
		$("input:checkbox").change(function() {
			if (this.checked) {
				var checkname = $(this).attr("name");
				$("input:checkbox[name='" + checkname + "']").removeAttr("checked");
				$("input:checkbox[name='" + checkname + "']").parent().parent().find('.chk-label').removeClass('appcal-error');
				$("input:checkbox[name='" + checkname + "']").parent().parent().parent().find('.col-xs-12 .chk-label').removeClass('appcal-error');
				$("input:checkbox[name='" + checkname + "']").siblings('.itext').removeClass('appcal-error');
				$("input:checkbox[name='" + checkname + "']").siblings('.items').removeClass('appcal-error');
				this.checked = true;
			}
		});


		// lenth of the digits in phone and fax
		// to modify check line [[[ 168, 343, 173, 348 ]]]
		$('.phone-lenth').restrictLength($('#phlenth'));
		$('.phone-lenth_2').restrictLength($('#phlenth_2'));
		$('.fax-lenth').restrictLength($('#fxlenth'));
		$('.fax-lenth_2').restrictLength($('#fxlenth_2'));

	});
})(window.jQuery);
