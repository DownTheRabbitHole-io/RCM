<!-- form row -->
<div class="row">
	<div class="col-md-6 col-md-offset-3">
		<form id="your_id" class="appcal-form" method="post" enctype="multipart/form-data" autocomplete="off" $FormAttributes> <!-- do your code here -->


			<!-- wizard
				[id below is the key of everything, without this(cs-appcal-wizard) there is no work.
				AND these two "animated fadeIn" animation classes are used to display the container by sliding up animation.
				If you do not need it then please remove these two classes ] -->
			<div id="cs-appcal-wizard" class="animated fadeInUp">



				<!-- wizard tabs:
					[hidden but required to make the wizard work] -->
				<div class="navbar">
					<div class="navbar-inner">
						<ul>
							<li><a data-toggle="tab" href="#tab1">Step 1 of 7</a></li>
							<li><a data-toggle="tab" href="#tab2">Step 2 of 7</a></li>
							<li><a data-toggle="tab" href="#tab3">Step 3 of 7</a></li>
							<li><a data-toggle="tab" href="#tab4">Step 4 of 7</a></li>
							<li><a data-toggle="tab" href="#tab5">Step 5 of 7</a></li>
							<li><a data-toggle="tab" href="#tab6">Step 6 of 7</a></li>
							<li><a data-toggle="tab" href="#tab7">Step 7 of 7</a></li>
						</ul>
					</div>
				</div><!-- ./ wizard tabs -->
				<!-- wizard contents -->
				<div class="tab-content">
				<!-- single tab: 1
							[look at these two "animated fadeIn" animation classes, it is used to display whole form with fadein style.
							If you do not need it then please remove these two classes. On every tab-pane you will found it but
							with differnt animation class] -->
					<div class="tab-pane animated fadeIn" id="tab1">

						<h2 class="heading"><%t APPLICATION.Title "Title" %></h2>

						<div class="row"><!-- SR -->
							<div class="col-sm-6">
								<label for="{$FormName}_FirstName"><%t APPLICATION.FirstName  "FirstName" %></label>
								$Fields.dataFieldByName(FirstName)
								$Fields.dataFieldByName(SecurityID)
							</div>
							<div class="col-sm-6">
								<label for="{$FormName}_FirstName"><%t APPLICATION.Surname  "Surname / Family name" %></label>
								$Fields.dataFieldByName(Surname)
							</div>
						</div><!-- ./ ER -->

						<div class="row"><!-- SR -->
							<div class="col-sm-6">
								<label for="{$FormName}_Nationality"><%t APPLICATION.Nationality  "Nationality" %></label>
								$Fields.dataFieldByName(Nationality)
							</div>
							<div class="col-sm-6">
								<label for="{$FormName}_DOB"><%t APPLICATION.DOB  "Date of Birth" %></label>
								$Fields.dataFieldByName(DOB)
							</div>
						</div><!-- ./ ER -->

						<div class="row"><!-- SR -->

							<!-- checkbox column for gender -->
							<div class="col-sm-6">
								<strong class="chk-label"><%t APPLICATION.Gender  "Gender" %></strong>
								<label for="genderm" class="cbox">
									<input type="checkbox" id="genderm" value="1" name="gender" checked>
									<span class="items"></span>
									<span class="itext"><%t APPLICATION.Male  "Male" %></span>
								</label>
								<label for="genderf" class="cbox">
									<input type="checkbox" id="genderf" value="2" name="gender">
									<span class="items"></span>
									<span class="itext"><%t APPLICATION.Female  "Female" %></span>
								</label>
							</div>

							<!-- checkbox column for marital status -->
							<div class="col-sm-6">
								<strong class="chk-label"><%t APPLICATION.MaritalStatus  "Marital Status" %></strong>
								<label for="mrtalstsa" class="cbox">
									<input type="checkbox" id="mrtalstsa" data-validation="required" value="1" name="mrtalsts" checked>
									<span class="items"></span>
									<span class="itext"><%t APPLICATION.Single  "Single" %></span>
								</label>
								<label for="mrtalstsb" class="cbox">
									<input type="checkbox" id="mrtalstsb" value="2" name="mrtalsts">
									<span class="items"></span>
									<span class="itext"><%t APPLICATION.Married  "Married" %></span>
								</label>
								<!--
								<label for="mrtalstsc" class="cbox">
									<input type="checkbox" id="mrtalstsc" value="3" name="mrtalsts">
									<span class="items"></span>
									<span class="itext"><%t APPLICATION.Defacto  "Defacto" %></span>
								</label>
								<label for="mrtalstsd" class="cbox">
									<input type="checkbox" id="mrtalstsd" value="4" name="mrtalsts">
									<span class="items"></span>
									<span class="itext"><%t APPLICATION.Divorced  "Divorced" %></span>
								</label>
								<label for="mrtalstse" class="cbox">
									<input type="checkbox" id="mrtalstse" value="5" name="mrtalsts">
									<span class="items"></span>
									<span class="itext"><%t APPLICATION.Widowed  "Widowed" %></span>
								</label>
								-->
							</div><!-- ./ end of marital status -->

						</div><!-- ./ ER -->

						<div class="row"><!-- SR -->
							<div class="col-xs-12">
								<label for="{$FormName}_Email"><%t APPLICATION.Email  "Email" %></label>
								$Fields.dataFieldByName(Email)
							</div>
						</div><!-- ./ ER -->

						<div class="row"><!-- SR -->
							<div class="col-sm-6">
								<label for="{$FormName}_Phone"><%t APPLICATION.Phone  "Phone" %></label>
								$Fields.dataFieldByName(Phone)
								<span id="phlenth" class="hidden">10</span>
							</div>
							<div class="col-sm-6">
								<label for="{$FormName}_Fax"><%t APPLICATION.Fax  "Fax" %></label>
								$Fields.dataFieldByName(Fax)
								<span id="fxlenth" class="hidden">12</span>
							</div>
						</div><!-- ./ ER -->

						<div class="row"><!-- SR -->
							<div class="col-xs-12">
								<label for="{$FormName}_CurrentAddress"><%t APPLICATION.CurrentAddress  "Current Address" %></label>
								$Fields.dataFieldByName(CurrentAddress)
							</div>
						</div><!-- ./ ER -->

						<div class="row"><!-- SR -->
							<div class="col-sm-6">
								<label for="{$FormName}_Country"><%t APPLICATION.Country  "Country" %></label>
								$Fields.dataFieldByName(Country)
							</div>
						</div><!-- ./ ER -->

					</div><!-- ./ single tab: 1 -->










					<!-- single tab: 2
							[animation classes here "animated pulse"] -->
					<div class="tab-pane animated pulse" id="tab2">

						<h2 class="heading"><%t APPLICATION.BankingDetails  "Banking Details" %></h2>

						<div class="row"><!-- SR -->

							<div class="col-sm-6">
								<label for="{$FormName}_NameofBank"><%t APPLICATION.NameofBank  "Name of Bank" %></label>
								$Fields.dataFieldByName(NameofBank)
							</div>

							<div class="col-sm-6">
								<label for="bcurrency"><%t APPLICATION.BaseCurrencyofAccount  "Base Currency of Account" %></label>
								$Fields.dataFieldByName(BaseCurrencyofAccount)
							</div>

						</div><!-- ./ ER -->

						<div class="row"><!-- SR -->
							<div class="col-xs-12">
								<label for="{$FormName}_AccountHoldersName"><%t APPLICATION.AccountHoldersName  "Account Holders Name" %></label>
								$Fields.dataFieldByName(AccountHoldersName)
							</div>
						</div><!-- ./ ER -->

						<div class="row"><!-- SR -->
							<div class="col-xs-12">
								<label for="{$FormName}_AccountNumber"><%t APPLICATION.AccountNumber  "Account Number" %></label>
								$Fields.dataFieldByName(AccountNumber)
							</div>
						</div><!-- ./ ER -->

					</div><!-- ./ single tab: 2 -->











					<!-- single tab: 3
							[animation classes here "animated fadeIn".
							this section dose not have any require validation because it says optional on the heading.
							whatever if users enter data in the following fields (email, phone and fax) then it must valid email or phone] -->
					<div class="tab-pane animated fadeIn" id="tab3">

						<h2 class="heading"><%t APPLICATION.EmploymentInformation  "Employment Information(optional)" %></h2>

						<div class="row"><!-- SR -->
							<div class="col-xs-12">
								<label for="{$FormName}_CurrentEmployer">
									<%t APPLICATION.CurrentEmployer  "Current Employer" %>
									<small><%t APPLICATION.CurrentEmployerDisc  "(If self-employed please state nature of business and its trading name)" %></small>
								</label>
								$Fields.dataFieldByName(CurrentEmployer)
							</div>
						</div><!-- ./ ER -->

						<div class="row"><!-- SR -->
							<div class="col-xs-12">
								<label for="{$FormName}_WorkYear"><%t APPLICATION.WorkYear  "How long have you been with this Employer?" %></label>
								<div class="col-sm-6 no-padding-left">
									$Fields.dataFieldByName(WorkYear)
								</div>
							</div>
						</div><!-- ./ ER -->

						<div class="row"><!-- SR -->
							<div class="col-xs-12">
								<label for="{$FormName}_EmployerAddress"><%t APPLICATION.EmployerAddress  "Employer Address" %></label>
								<div class="col-sm-6 no-padding-left">
									$Fields.dataFieldByName(EmployerAddress)
								</div>
							</div>
						</div><!-- ./ ER -->

						<div class="row"><!-- SR -->
							<div class="col-sm-6">
								<label for="{$FormName}_City"><%t APPLICATION.City  "City" %></label>
								$Fields.dataFieldByName(City)
							</div>
							<div class="col-sm-6">
							<label for="{$FormName}_State"><%t APPLICATION.State  "State" %></label>
							$Fields.dataFieldByName(State)
							</div>
						</div><!-- ./ ER -->

						<div class="row"><!-- SR -->
							<div class="col-sm-6">
								<label for="{$FormName}_CountryEmployer"><%t APPLICATION.CountryEmployer  "Country" %></label>
								$Fields.dataFieldByName(CountryEmployer)
							</div>
						</div><!-- ./ ER -->

						<!-- I have validation (but not required) -->
						<div class="row"><!-- SR -->
							<div class="col-xs-12">
								<label for="{$FormName}_EmailEmployer"><%t APPLICATION.EmailEmployer  "Email" %></label>
								$Fields.dataFieldByName(EmailEmployer)
							</div>
						</div><!-- ./ ER -->

						<!-- we also validations (but not required)) -->
						<div class="row"><!-- SR -->
							<div class="col-sm-6">
								<label for="{$FormName}_PhoneEmployer"><%t APPLICATION.PhoneEmployer  "Phone" %></label>
								$Fields.dataFieldByName(PhoneEmployer)
								<span id="phlenth_2" class="hidden">10</span>
							</div>
							<div class="col-sm-6">
								<label for="{$FormName}_FaxEmployer"><%t APPLICATION.FaxEmployer  "Fax" %></label>
								$Fields.dataFieldByName(FaxEmployer)
								<span id="fxlenth_2" class="hidden">12</span>
							</div>
						</div><!-- ./ ER -->

						<div class="row"><!-- SR -->
							<div class="col-sm-6">
								<label for="{$FormName}_Position"><%t APPLICATION.Position  "Position" %></label>
								$Fields.dataFieldByName(Position)
							</div>
							<div class="col-sm-6">
								<strong class="chk-label"><%t APPLICATION.IncomeType  "Income Type" %></strong>
								<label for="inctypea" class="cbox">
									<input type="checkbox" id="inctypea"  value="1" name="inctype" checked>
									<span class="items"></span>
									<span class="itext"><%t APPLICATION.Hourly  "Hourly" %></span>
								</label>
								<label for="inctypeb" class="cbox">
									<input type="checkbox" id="inctypeb" value="2" name="inctype">
									<span class="items"></span>
									<span class="itext"><%t APPLICATION.Salary  "Salary" %></span>
								</label>
							</div>
						</div><!-- ./ ER -->

						<div class="row"><!-- SR -->
							<div class="col-sm-6">
								<label for="{$FormName}_AnnualIncome"><%t APPLICATION.AnnualIncome  "Annual Income" %></label>
								$Fields.dataFieldByName(AnnualIncome)
							</div>
						</div><!-- ./ ER -->

					</div><!-- ./ single tab: 3 -->











					<!-- single tab: 4
							[animation classes here "animated fadeIn"] -->
					<div class="tab-pane animated fadeIn" id="tab4">

						<h2 class="heading"><%t APPLICATION.FinancialInformation  "Financial Information (Optional)" %></h2>

						<!-- look this section containing checkboxes in different style
							that is why the validation scripts for these are different, however
							this section might need to be optional, I think -->
						<div class="row"><!-- SR -->
							<div class="col-xs-12">
								<strong class="chk-label"><%t APPLICATION.ApproximateNetWorth  "Approximate Net Worth" %></strong>
							</div>
							<div class="col-sm-6">
								<label for="anwortha" class="cbox full">
									<input type="checkbox" id="anwortha" value="1" name="anworth" checked>
									<span class="items"></span>
									<span class="itext">$25,000 - $50,000</span>
								</label>
							</div>
							<div class="col-sm-6">
								<label for="anworthb" class="cbox full">
									<input type="checkbox" id="anworthb" value="2" name="anworth[">
									<span class="items"></span>
									<span class="itext">$50,001 - $250,000</span>
								</label>
							</div>
							<div class="col-sm-6">
								<label for="anworthc" class="cbox full">
									<input type="checkbox" id="anworthc" value="3" name="anworth">
									<span class="items"></span>
									<span class="itext">Over $250,001</span>
								</label>
							</div>
						</div><!-- ./ ER [icheckbox group] -->

						<div class="row"><!-- SR -->
							<div class="col-xs-12">
								<strong class="chk-label"><%t APPLICATION.InvestmentObjective  "Investment Objective" %></strong>
							</div>
							<div class="col-sm-6">
								<label for="inobjecta" class="cbox full">
									<input type="checkbox" id="inobjecta" value="1" name="inobject" checked>
									<span class="items"></span>
									<span class="itext"><%t APPLICATION.Speculative  "Speculative" %></span>
								</label>
							</div>
							<div class="col-sm-6">
								<label for="inobjectb" class="cbox full">
									<input type="checkbox" id="inobjectb" value="2" name="inobject">
									<span class="items"></span>
									<span class="itext"><%t APPLICATION.Hedging  "Hedging" %></span>
								</label>
							</div>
						</div><!-- ./ ER [checkbox group] -->

						<div class="row"><!-- SR -->
							<div class="col-sm-6">
								<label for="{$FormName}_TradingExperience"><%t APPLICATION.TradingExperience  "Trading Experience" %></label>
								$Fields.dataFieldByName(TradingExperience)
							</div>
						</div><!-- ./ ER [checkbox group]  -->

						<div class="row"><!-- SR -->
							<div class="col-xs-12">
								<strong class="chk-label"><%t APPLICATION.Equities  "Equities" %></strong>
							</div>
							<div class="col-sm-6">
								<label for="equitiea" class="cbox full">
									<input type="checkbox" id="equitiea" value="1" name="equitie" checked>
									<span class="items"></span>
									<span class="itext"><%t APPLICATION.1To3  "1 - 3 Years" %></span>
								</label>
							</div>
							<div class="col-sm-6">
								<label for="equitieb" class="cbox full">
									<input type="checkbox" id="equitieb" value="2" name="equitie">
									<span class="items"></span>
									<span class="itext"><%t APPLICATION.3To5  "3 - 5 Years" %></span>
								</label>
							</div>
							<div class="col-sm-6">
								<label for="equitiec" class="cbox full">
									<input type="checkbox" id="equitiec" value="3" name="equitie">
									<span class="items"></span>
									<span class="itext"><%t APPLICATION.Over5  "Over 5 Years" %></span>
								</label>
							</div>
						</div><!-- ./ ER [checkbox group] -->

						<div class="row"><!-- SR -->
							<div class="col-xs-12">
								<strong class="chk-label"><%t APPLICATION.Options  "Options" %></strong>
							</div>
							<div class="col-sm-6">
								<label for="optiona" class="cbox full">
									<input type="checkbox" id="optiona" value="1" name="option" checked>
									<span class="items"></span>
									<span class="itext"><%t APPLICATION.1To3  "1 - 3 Years" %></span>
								</label>
							</div>
							<div class="col-sm-6">
								<label for="optionb" class="cbox full">
									<input type="checkbox" id="optionb" value="2" name="option">
									<span class="items"></span>
									<span class="itext"><%t APPLICATION.3To5  "3 - 5 Years" %></span>
								</label>
							</div>
							<div class="col-sm-6">
								<label for="optionc" class="cbox full">
									<input type="checkbox" id="optionc" value="3" name="option">
									<span class="items"></span>
									<span class="itext"><%t APPLICATION.Over5  "Over 5 Years" %></span>
								</label>
							</div>
						</div><!-- ./ ER [checkbox group] -->

						<div class="row"><!-- SR -->
							<div class="col-xs-12">
								<strong class="chk-label"><%t APPLICATION.FuturesCFDs  "Futures/CFDs" %></strong>
							</div>
							<div class="col-sm-6">
								<label for="futuresa" class="cbox full">
									<input type="checkbox" id="futuresa" value="1" name="futures" checked>
									<span class="items"></span>
									<span class="itext"><%t APPLICATION.1To3  "1 - 3 Years" %></span>
								</label>
							</div>
							<div class="col-sm-6">
								<label for="futuresb" class="cbox full">
									<input type="checkbox" id="futuresb" value="2" name="futures">
									<span class="items"></span>
									<span class="itext"><%t APPLICATION.3To5  "3 - 5 Years" %></span>
								</label>
							</div>
							<div class="col-sm-6">
								<label for="futuresc" class="cbox full">
									<input type="checkbox" id="futuresc" value="3" name="futures">
									<span class="items"></span>
									<span class="itext"><%t APPLICATION.Over5  "Over 5 Years" %></span>
								</label>
							</div>
						</div><!-- ./ ER [checkbox group] -->

						<div class="row"><!-- SR -->
							<div class="col-xs-12">
								<strong class="chk-label"><%t APPLICATION.FOREX  "FOREX" %></strong>
							</div>
							<div class="col-sm-6">
								<label for="forexa" class="cbox full">
									<input type="checkbox" id="forexa" value="1" name="forex" checked>
									<span class="items"></span>
									<span class="itext"><%t APPLICATION.1To3  "1 - 3 Years" %></span>
								</label>
							</div>
							<div class="col-sm-6">
								<label for="forexb" class="cbox full">
									<input type="checkbox" id="forexb" value="2" name="forex">
									<span class="items"></span>
									<span class="itext"><%t APPLICATION.3To5  "3 - 5 Years" %></span>
								</label>
							</div>
							<div class="col-sm-6">
								<label for="forexc" class="cbox full">
									<input type="checkbox" id="forexc" value="3" name="forex">
									<span class="items"></span>
									<span class="itext"><%t APPLICATION.Over5  "Over 5 Years" %></span>
								</label>
							</div>
						</div><!-- ./ ER [checkbox group] -->

					</div><!-- ./ single tab: 4 -->












					<!-- single tab: 5
								[animation classes here "animated pulse"] -->
					<div class="tab-pane animated pulse" id="tab5">
						$Controller.Declaration
					</div><!-- ./ single tab: 5 -->
					<!-- single tab: 6
							[animation classes here "animated fadeIn"] -->
					<div class="tab-pane animated fadeIn" id="tab6">
						$Controller.ClientServicesAgreement
						<!-- also used different script style for this checkbox as per psd -->
						<div class="row"><!-- SR -->
							<div class="col-xs-12">
								<label for="terms" class="cbox full optimize">
									<input type="checkbox" id="terms" value="1" name="toc" checked>
									<span class="items"></span>
									<span class="itext">$Controller.AggreeLine</span>
								</label>
							</div>
						</div><!-- ./ ER -->

					</div><!-- ./ single tab: 6 -->








					<!-- single tab: 7
							[animation classes here "animated tada"] -->
					<div class="tab-pane animated tada" id="tab7">

						<h2 class="heading"><%t APPLICATION.NextSteps  "Next Steps" %></h2>

						<!-- [this file inputs uses validations] -->
						<!-- give me the photo -->
						<p><%t APPLICATION.UploadIDDisc  "Please upload a high quality color copy of a current government issued identification showing your photo e.g. Passport, National Identity Card or Drivers License." %></p>
						<div class="up-btn">
							<label for="{$FormName}_UploadID"  class="file-upload-label"><%t APPLICATION.UploadID  "Upload I.D." %></label>
							 $Fields.dataFieldByName(UploadID)
						</div>

						<!-- your documents -->
						<p><%t APPLICATION.UploadStatementDisc  "Please upload a Bank Statement showing your name and address, the banks name and your account number. This should be dated within the last 6 months." %></p>
						<div class="up-btn">
							<label for="{$FormName}_UploadStatement"  class="file-upload-label"><%t APPLICATION.UploadStatement  "Upload Statement" %></label>
							$Fields.dataFieldByName(UploadStatement)
						</div>
					</div><!-- ./ single tab: 7 -->




				</div><!-- ./ wizard contents -->


				<!-- wizard navigation -->
				<div class="form-bottom row">
					<div class="col-md-6 excuse"><b class="current-tab">Step 1 of 7</b></div>
					<div class="col-md-6">
						<ul class="pager wizard cs-appcal-nav">
							<li class="previous">
								<a href="#"><%t APPLICATION.Back  "Back" %></a>
							</li>
							<li class="next">
								<a href="#"><%t APPLICATION.Next  "Next" %></a>

								<!-- YOUR_ACTION_BUTTON -->
								$Actions.dataFieldByName(action_SendApplicationForm)
							</li>
						</ul>
					</div>
				</div><!-- ./ wizard navigation -->


			</div><!-- ./ wizard -->



		</form>
	</div>
</div><!-- ./ form row -->
