# Salesforce Best Practices
# With Great Power Comes Great Responsibility!


The best applications are coded properly. The "properly" means the code not only does its job well, but is also easy to understand, add to, maintain and debug.

Coding standards are great! We want to ensure that the Salesforce org is self documented. The consistent and well-written code is critical to ensuring high quality standards across all applications. 

Here you will find the Best Practices (Naming Conventions & Coding Standards) of following components of Salesforce.com org:
1. Custom Objects
2. Custom Fields
3. Apex Triggers
4. Apex Classes
5. Re-factor Apex Classes<br/>
(a) Apex Constants class<br/>
(b) Apex Trigger Handler class<br/>
(c) Apex Utility class<br/>
(d) Apex Wrapper class<br/>
(e) Apex Controller (Visualforce / Lightning) class<br/>
(f) Apex Test Data Factory class<br/>
(g) Apex Test class<br/>



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
			Custom Buttons & Links
		</td>
		<td>CapitalizedCamelCase without Underscores</td>
		<td>SalesOrder__c</td>
	</tr>
	<tr>
		<th colspan="3">Salesforce Naming Conventions (Apex)</th>
	</tr>	
	<tr>
		<td></td>
		<td>CapitalizedCamelCase without Underscores</td>
		<td>AccountTrigger</td>
	</tr>
	<tr>
		<th colspan="3">Salesforce Naming Conventions (Visualforce / Static Resource / Custom Labels)</th>
	</tr>
	<tr>
		<td></td>
		<td>CapitalizedCamelCase without Underscores</td>
		<td>AccountTrigger</td>
	</tr>
	<tr>
		<th colspan="3">Salesforce Naming Conventions (Lightning)</th>
	</tr>
	<tr>
		<td></td>
		<td>CapitalizedCamelCase without Underscores</td>
		<td>AccountTrigger</td>
	</tr>
</table>
  

### Custom Objects
1. Custom object name should be <b>CapitalizedCamelCase</b>
2. e.g. SalesOrder__c etc. <font color="green">(Yes this one!)</font>
3. Sales_Order__c (Not this one!)

### Custom Fields
1. Custom field name should be <b>CapitalizedCamelCase</b>
2. e.g. SalesAmount__c etc. <font color="green">(Yes this one!)</font>
3. Sales_Amount__c (Not this one!)

### Apex Trigger
1. Apex trigger name should be <b>CapitalizedCamelCase</b>
2. e.g. AccountTrigger, SalesOrderTrigger etc. <font color="green">(Yes this one!)</font>
3. AfterUpdateTrigger etc. (Not this one!)
4. Apex triggers should be Bulkified.
5. Apex triggers should be implemented with NO Business Logic in it rather calling an Apex Trigger Handler to handle the Business Logic.
##### Reference Links
(a) <a href="https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_triggers_context_variables_considerations.htm" target="_blank" alt="Context Variable Considerations">Context Variable Considerations</a><br/>
(b) <a href="https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_triggers_context_variables.htm" target="_blank" alt="Trigger Context Variables">Trigger Context Variables</a><br/>
(c) <a href="https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_triggers_recovered_records.htm" target="_blank" alt="Triggers and Recovered Records">Triggers and Recovered Records for after undelete trigger</a><br/>

### Apex Class
1. Apex class name should be <b>CapitalizedCamelCase</b>
2. e.g. SalesOrderTriggerHandler, SalesOrderUtility etc. <font color="green">(Yes this one!)</font>
3. Sales_Order_Trigger_Handler, Sales_Order_Utility etc. (Not this one!)
4. Method or Function names should use <b>lowerCamelCase</b>
5. e.g. calculateTotalAmount etc. <font color="green">(Yes this one!)</font>
6. e.g. CalculateTotalAmount, CALCULATE_TOTAL_AMOUNT, Calculate_Total_Amount etc. (Not this one!)

### Apex Constant Class
1. Apex constant class name should be <b>CapitalizedCamelCase</b>
2. e.g. ApplicationConstant etc. <font color="green">(Yes this one!)</font>
2. Constants should be CAPITALIZED_WITH_UNDERSCORES.
3. e.g. SALES_ORDER_STATUS etc. <font color="green">(Yes this one!)</font>
4. e.g. salesOrderStatus, sales_Order_Status etc. (Not this one!)

### Apex Trigger Handler Class
1. Apex trigger handler class name should be <b>CapitalizedCamelCase</b>
2. e.g. AccountTriggerHandler, SalesOrderTriggerHandler etc. <font color="green">(Yes this one!)</font>

### Apex Utility Class
1. Apex utility class name should be <b>CapitalizedCamelCase</b>
2. e.g. AccountUtility, SalesOrderUtility etc. <font color="green">(Yes this one!)</font>

### Apex Wrapper Class
1. Apex wrapper class name should be <b>CapitalizedCamelCase</b>
2. e.g. AccountWrapper, SalesOrderWrapper, IntegrationWrapper, LightningComponentWrapper etc. <font color="green">(Yes this one!)</font>

### Visualforce / Lightning Controller Class
1. Visualforce / Lightning component class name should be <b>CapitalizedCamelCase</b>
2. e.g. AccountController, SalesOrderController etc. <font color="green">(Yes this one!)</font>

### Apex Test Data Factory Class
1. Apex test data factory class name should be <b>CapitalizedCamelCase</b>
2. e.g. TestDataFactory <font color="green">(Yes this one!)</font>
3. The TestDataFactory will have test methods to build objects with the data. 
##### Reference Links
(a) <a href="https://trailhead.salesforce.com/en/modules/apex_testing/units/apex_testing_intro" target="_blank" alt="Get Started with Apex Unit Tests">Get Started with Apex Unit Tests</a><br/>
(b) <a href="http://releasenotes.docs.salesforce.com/en-us/winter18/release-notes/rn_apex_annotation_istest_isparallel.htm" target="_blank" alt="@isTest(isParallel=true) annotation">@isTest(isParallel=true) annotation</a><br/>
(c) <a href="https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_testing_utility_classes.htm" target="_blank" alt="Common Test Utility Classes for Test Data Creation">Common Test Utility Classes for Test Data Creation</a><br/>
(d) <a href="https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_methods_system_test.htm" target="_blank" alt="Standard Test Methods">Standard Test Methods</a><br/>

### Apex Test Class
1. Apex test class name should be <b>CapitalizedCamelCase</b>
2. e.g. AccountTriggerHandlerTest, SalesOrderTriggerHandlerTest etc. <font color="green">(Yes this one!)</font>
##### Reference Links
(a) <a href="https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_qs_test.htm" target="_blank" alt="Hello World Trigger Test Class">Hello World Trigger Test Class</a><br/>
(b) <a href="https://developer.salesforce.com/page/An_Introduction_to_Apex_Code_Test_Methods" target="_blank" alt="An Introduction to Apex Code Test Methods">An Introduction to Apex Code Test Methods</a><br/>
