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
	</tr>
	<tr>
		<td>Visualforce Controllers</td>
		<td></td>
		<td>Y</td>
		<td></td>
		<td>Y</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>Visualforce Controllers</td>
		<td></td>
		<td>Y</td>
		<td></td>
		<td>Y</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
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
