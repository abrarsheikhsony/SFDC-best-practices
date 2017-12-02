# Salesforce Best Practices
# With Great Power Comes Great Responsibility!


The best applications are coded properly. The "properly" means the code not only does its job well, but is also easy to understand, add to, maintain and debug.

Coding standards are great! We want to ensure that the Salesforce org is self documented. The consistent and well-written code is critical to ensuring high quality standards across all applications. 

Here you will find the Best Practices (Naming Conventions & Coding Standards) of development components for Salesforce org.

<table>
	<tr>
		<th colspan="3">Salesforce Naming Conventions (Point and Click Tools)</th>
	</tr>
	<tr>
		<th>Component</th>
		<th>Naming Convention</th>
		<th>Example</th>
	</tr>
	<tr>
		<td>
			Custom Object Name<br/>
			Custom Field Name<br/>
			Record Types<br/>
			Validation Rules<br/>
			Workflow Rules<br/>
			Approval Processes<br/>
			Custom Buttons & Links<br/>
			......................<br/>
		</td>
		<td>CapitalizedCamelCase without Underscores</td>
		<td>SalesOrder__c</td>
	</tr>
</table>

<br/>

<table>
	<tr>
		<th colspan="3">Salesforce Naming Conventions (Apex)</th>
	</tr>
	<tr>
		<th>Component</th>
		<th>Naming Convention</th>
		<th>Examples with Suffix</th>
	</tr>
	<tr>
		<td>Apex Trigger</td>
		<td>CapitalizedCamelCase without Underscores</td>
		<td>AccountTrigger</td>
	</tr>
	<tr>
		<td>Apex Trigger Handler Class</td>
		<td>CapitalizedCamelCase without Underscores</td>
		<td>AccountTriggerHandler</td>
	</tr>
	<tr>
		<td>Apex Utility Class</td>
		<td>CapitalizedCamelCase without Underscores</td>
		<td>AccountUtility</td>
	</tr>
	<tr>
		<td>Apex Helper Class</td>
		<td>CapitalizedCamelCase without Underscores</td>
		<td>AccountRollupHelper</td>
	</tr>
	<tr>
		<td>Apex Wrapper class</td>
		<td>CapitalizedCamelCase without Underscores</td>
		<td>AccountWrapper</td>
	</tr>
	<tr>
		<td>Apex Batch Class</td>
		<td>CapitalizedCamelCase without Underscores</td>
		<td>ProcessAccountsBatch</td>
	</tr>
	<tr>
		<td>Apex Schedule Class</td>
		<td>CapitalizedCamelCase without Underscores</td>
		<td>ProcessAccountsBatchSchedule</td>
	</tr>
	<tr>
		<td>Apex/Visualforce Controller</td>
		<td>CapitalizedCamelCase without Underscores</td>
		<td>AccountController</td>
	</tr>
	<tr>
		<td>Apex/Visualforce Controller Extension</td>
		<td>CapitalizedCamelCase without Underscores</td>
		<td>AccountControllerExtension</td>
	</tr>
	<tr>
		<td>Apex Test Data Factory</td>
		<td>CapitalizedCamelCase without Underscores</td>
		<td>AccountTestDataFactory</td>
	</tr>
	<tr>
		<td>Apex Test Class Name</td>
		<td>CapitalizedCamelCase without Underscores</td>
		<td>AccountTest</td>
	</tr>
	<tr>
		<td>Apex Class Method</td>
		<td>lowerCamelCase without Underscores</td>
		<td>public void calculateSales(){}</td>
	</tr>
	<tr>
		<td>Apex Constant Class Variables</td>
		<td>CAPITALIZED_WITH_UNDERSCORES</td>
		<td>public static final OBJECT_TYPE_ACCOUNT = ‘Account’;</td>
	</tr>
	<tr>
		<td>Boolean Variables</td>
		<td>lowerCamelCase without Underscores</td>
		<td>isActive, hasErrors, hasLineItems, isSuccess etc.</td>
	</tr>
</table>

<br/>

<table>
	<tr>
		<th colspan="3">Salesforce Naming Conventions (Visualforce / Static Resource / Custom Labels)</th>
	</tr>
	<tr>
		<th>Component</th>
		<th>Naming Convention</th>
		<th>Examples with Suffix</th>
	</tr>
	<tr>
		<td>Visualforce Page</td>
		<td>CapitalizedCamelCase without Underscores</td>
		<td>ViewSales</td>
	</tr>
	<tr>
		<td>Static Resources</td>
		<td>lowerCamelCase without Underscores</td>
		<td>paginationResource</td>
	</tr>
	<tr>
		<td>Custom Label</td>
		<td>CapitalizedCamelCase without Underscores</td>
		<td>ErrorMessage</td>
	</tr>
</table>

<br/>

<table>
	<tr>
		<th colspan="3">Salesforce Naming Conventions (Lightning)</th>
	</tr>
	<tr>
		<th>Component</th>
		<th>Naming Convention</th>
		<th>Examples with Suffix</th>
	</tr>
	<tr>
		<td>Lightning Application</td>
		<td>CapitalizedCamelCase without Underscores</td>
		<td>HRMApp</td>
	</tr>
	<tr>
		<td>Lightning Interface</td>
		<td>CapitalizedCamelCase without Underscores</td>
		<td>PaginationInterface</td>
	</tr>
	<tr>
		<td>Lightning Component</td>
		<td>lowerCamelCase without Underscores</td>
		<td>processRecordsComponent</td>
	</tr>
	<tr>
		<td>Lightning Token</td>
		<td>lowerCamelCase without Underscores</td>
		<td>integrationCredentialsToken</td>
	</tr>
	<tr>
		<td>Lightning Application Event</td>
		<td>lowerCamelCase with Underscores</td>
		<td>deleteRecord_AppEvent</td>
	</tr>
	<tr>
		<td>Lightning Component Event</td>
		<td>lowerCamelCase with Underscores</td>
		<td>sendAccountToSAP_CompEvent</td>
	</tr>
</table>

<br/>

<table>
	<tr>
		<th colspan="12">Acceptable Keywords & Access Modifiers (Y)</th>
	</tr>
	<tr>
		<th>Class Type</th>
		<th>global</th>
		<th>public</th>
		<th>private</th>
		<th>with sharing</th>
		<th>without sharing</th>		
		<th>@isTest annotation</th>
		<th>@testSetup annotation</th>
		<th>@TestVisible annotation</th>
		<th>@AuraEnabled annotation</th>
	</tr>
	<tr>
		<td>Apex Constant Class</td>
		<td></td>
		<td>Y</td>
		<td></td>
		<td>Y</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>Apex Trigger Handler</td>
		<td></td>
		<td>Y</td>
		<td></td>
		<td>Y</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>Apex Utility</td>
		<td></td>
		<td>Y</td>
		<td></td>
		<td>Y</td>
		<td>Y</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>Apex Helper</td>
		<td></td>
		<td>Y</td>
		<td></td>
		<td>Y</td>
		<td>Y</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>Apex Schedule</td>
		<td>Y</td>
		<td></td>
		<td></td>
		<td>Y</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>Apex Batch</td>
		<td>Y</td>
		<td></td>
		<td></td>
		<td>Y</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>Apex Wrapper</td>
		<td></td>
		<td>Y</td>
		<td></td>
		<td>Y</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>Visualforce Controller</td>
		<td></td>
		<td>Y</td>
		<td></td>
		<td>Y</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>Visualforce Controller Extension</td>
		<td></td>
		<td>Y</td>
		<td></td>
		<td>Y</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>Lightning Controller</td>
		<td></td>
		<td>Y</td>
		<td></td>
		<td>Y</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td>Y</td>
	</tr>
	<tr>
		<td>Apex Test Data Factory</td>
		<td></td>
		<td>Y</td>
		<td></td>
		<td></td>
		<td></td>
		<td>Y</td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>Apex Test Class</td>
		<td></td>
		<td></td>
		<td>Y</td>
		<td></td>
		<td></td>
		<td>Y</td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>Apex Non-Test Class Private Variables</td>
		<td></td>
		<td></td>
		<td>Y</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td>Y</td>
		<td></td>
	</tr>
	<tr>
		<td>Apex Non-Test Class Private Methods</td>
		<td></td>
		<td></td>
		<td>Y</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td>Y</td>
		<td></td>
	</tr>
	<tr>
		<td>Apex Setup / Common Method</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td>Y</td>
		<td>Y</td>
		<td></td>
		<td></td>
	</tr>
</table>

<br/>

<table>
	<tr>
		<th colspan="3">Custom Settings</th>
	</tr>
	<tr>
		<th>Component</th>
		<th>Best Practice</th>
		<th>Examples</th>
	</tr>
	<tr>
		<td>List Custom Settings in Apex</td>
		<td>Don't use SOQL Query to access custom setting. Use following List custom setting methods to access it.<br/>
			(1) getAll()<br/>
			(2) getInstance(dataSetName)<br/>
			(3) getValues(dataSetName)<br/>
		</td>
		<td>(1) Get all records of a custom setting <br/>
			<code>
			Map<String, TriggerSetting_c> triggerSetting = TriggerSetting_c.getAll();
			for(String triggerName : triggerSetting.keySet()){
				System.Debug('>>triggerName<<'+triggerName); 
				System.Debug('>>Trigger flag Activate/Deactivate<<'+triggerSetting.get(triggerName).Deactivate__c);
			}
			</code>
			<br/><br/>(2) Get specific record from the custom setting using literal <br/>
			<code>
			TriggerSetting_c accountTriggerSetting = TriggerSetting_c.getInstance('Account');
			System.Debug('>>accountTriggerSetting<<'+accountTriggerSetting);
			System.Debug('>>accountTriggerSetting<<'+accountTriggerSetting.Deactivate__c);
			</code>
			<br/><br/>(3) Get specific record from the custom setting using literal <br/>
			<code>
			TriggerSetting_c accountTriggerSetting = TriggerSetting_c.getValues('Account');
			System.Debug('>>accountTriggerSetting<<'+accountTriggerSetting);
			System.Debug('>>accountTriggerSetting<<'+accountTriggerSetting.Deactivate__c);
			</code>
		</td>
	</tr>
	<tr>
		<td>Hierarchy Custom Setting in Apex</td>
		<td>Don't use SOQL Query to access custom setting. Use following Hierarchy custom setting methods to access it.<br/>
			(1) getInstance() <br/>
			(2) getInstance(userId) <br/>
			(3) getInstance(profileId) <br/>
			(4) getOrgDefaults() <br/>
			(5) getValues(userId) <br/>
			(6) getValues(profileId) <br/>
		</td>
		<td>(1) <br/>
			<code>
			TPM_ApplicationSetting_c applicationSetting = TPM_ApplicationSetting_c.getOrgDefaults();
			System.Debug('>>applicationSetting<<'+applicationSetting);
			System.Debug('>>applicationSetting<<'+applicationSetting.TPM_RecordsPerPage__c);
			if( applicationSetting.TPM_RecordsPerPage__c <> null ){
			// Your code here... 
			}
			</code>
			<br/> (2) <br/>
			<code>
			TPM_ApplicationSetting_c applicationSetting = TPM_ApplicationSetting_c.getInstance();
			System.Debug('>>applicationSetting<<'+applicationSetting);
			System.Debug('>>applicationSetting<<'+applicationSetting.TPM_RecordsPerPage__c);
			if( applicationSetting.TPM_RecordsPerPage__c <> null ){
			// Your code here... 
			}
			</code>
		</td>
	</tr>
</table>

<br/>

<table>
	<tr>
		<th colspan="3">Custom Metadata Types</th>
	</tr>
	<tr>
		<th>Best Practice</th>
		<th>Examples</th>
	</tr>
	<tr>
		<td>Use SOQL query to access Custom Metadata Type record</td>
		<td>(1) Access All records <br/>
			<code>
			List<TPM_KPIConfiguration__mdt> lstKPIConfigurations = [SELECT MasterLabel, QualifiedApiName, DeveloperName, TPM_Active__c FROM TPM_KPIConfiguration__mdt];
			</code>
			<br/> (2) Access specific record <br/>
			<code>
			TPM_KPIConfiguration__mdt kpiConfiguration = [SELECT MasterLabel, QualifiedApiName, DeveloperName, TPM_Active__c FROM TPM_KPIConfiguration__mdt WHERE QualifiedApiName = 'WaveAnalytics1'];
			</code>
		</td>
	</tr>
</table>

<br/>

##### Reference Links for Apex Trigger
(a) <a href="https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_triggers_context_variables_considerations.htm" target="_blank" alt="Context Variable Considerations">Context Variable Considerations</a><br/>
(b) <a href="https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_triggers_context_variables.htm" target="_blank" alt="Trigger Context Variables">Trigger Context Variables</a><br/>
(c) <a href="https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_triggers_recovered_records.htm" target="_blank" alt="Triggers and Recovered Records">Triggers and Recovered Records for after undelete trigger</a><br/>

##### Reference Links Apex Test Data Factory Class
(a) <a href="https://trailhead.salesforce.com/en/modules/apex_testing/units/apex_testing_intro" target="_blank" alt="Get Started with Apex Unit Tests">Get Started with Apex Unit Tests</a><br/>
(b) <a href="http://releasenotes.docs.salesforce.com/en-us/winter18/release-notes/rn_apex_annotation_istest_isparallel.htm" target="_blank" alt="@isTest(isParallel=true) annotation">@isTest(isParallel=true) annotation</a><br/>
(c) <a href="https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_testing_utility_classes.htm" target="_blank" alt="Common Test Utility Classes for Test Data Creation">Common Test Utility Classes for Test Data Creation</a><br/>
(d) <a href="https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_methods_system_test.htm" target="_blank" alt="Standard Test Methods">Standard Test Methods</a><br/>

##### Reference Links for Apex Test Class
(a) <a href="https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_qs_test.htm" target="_blank" alt="Hello World Trigger Test Class">Hello World Trigger Test Class</a><br/>
(b) <a href="https://developer.salesforce.com/page/An_Introduction_to_Apex_Code_Test_Methods" target="_blank" alt="An Introduction to Apex Code Test Methods">An Introduction to Apex Code Test Methods</a><br/>

## Trigger Setting to enable (Active) or disable (Inactive) trigger on a specific object.
<img src="supportedimages/1.TriggerSetting.png" />

<img src="supportedimages/2.TriggerSetting.png" />

<img src="supportedimages/3.TriggerSetting.png" />

## Transaction Control in Apex (Savepoint & Rollback)

```
public PageReference saveAccounts(){

    Savepoint sp = Database.setSavepoint();

    try{
    	// Your code logic here...
    }        
    catch(System.Exception ex){

        Database.rollback(sp);

        // Show error to user
    }

    return null;

}
```

## Salesforce Trailmixes
(1) <a href="https://trailhead.salesforce.com/trails/learn_salesforce_with_trailhead" target="_blank" alt="Learn Salesforce with Trailhead">Learn Salesforce with Trailhead</a><br/>

(2) <a href="https://trailhead.salesforce.com/users/00550000006G25XAAS/trailmixes/salesforce-for-starters" target="_blank" alt="Salesforce for Starters (useful for Consultants and Functional folks)">Salesforce for Starters (useful for Consultants and Functional folks)</a><br/>

(3) <a href="https://trailhead.salesforce.com/users/00550000006G25XAAS/trailmixes/salesforce-for-ui-ux-developers" target="_blank" alt="Salesforce for UI/UX Developers (useful for SmartUI and Visualforce developers)">Salesforce for UI/UX Developers (useful for SmartUI and Visualforce developers)</a><br/>

(4) <a href="https://trailhead.salesforce.com/users/00550000006G25XAAS/trailmixes/apex-for-developers" target="_blank" alt="Apex for Developers">Apex for Developers</a><br/>

(5) <a href="https://trailhead.salesforce.com/users/00550000006G25XAAS/trailmixes/integration-with-salesforce" target="_blank" alt="Integration with Salesforce (useful for Apex developers + MuleSoft + Heroku folks)">Integration with Salesforce (useful for Apex developers + Integration folks)</a><br/>

#### Object Oriented Programming in Apex (useful for Advanced Apex developers)
(6) <a href="https://th3silverlining.com/2014/06/06/a-beginners-guide-to-object-oriented-programming-with-apex/" target="_blank" alt="A Beginner’s Guide to Object-Oriented Programming with Apex">A Beginner’s Guide to Object-Oriented Programming with Apex</a><br/>

(7) <a href="https://trailhead.salesforce.com/users/00550000006G25XAAS/trailmixes/oop-in-apex" target="_blank" alt="Apex Enterprise Patterns">Apex Enterprise Patterns</a><br/>

(8) <a href="https://developer.salesforce.com/page/Apex_Design_Patterns" target="_blank" alt="Apex Design Patterns">Apex Design Patterns</a><br/>
