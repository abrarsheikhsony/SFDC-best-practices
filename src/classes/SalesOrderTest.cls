/*----------------------------------------------------------------------
Name: 		SalesOrderTest.cls
Purpose: 	A test class of SalesOrder__c object
------------------------------History----------------------------------
Version 	Author 		Date 				Detail Description 
-------		-------		-------------- 		------------------
1.0 		Abrar 		25-August-2017		Initial Development	
----------------------------------------------------------------------*/
/*
Considerations for @isTest(isParallel=true) annotation:
(1) Use the @isTest(isParallel=true) annotation to indicate test classes that can run in parallel and aren’t restricted by the default limits on the number of concurrent tests. This makes the execution of test classes more efficient, because more tests can be run in parallel.
(2) This annotation overrides the default setting (Disable Parallel Apex Testing) that disable parallel testing.
(3) A test class that doesn’t have this annotation is restricted by the default limits on the number of concurrent tests.
*/
@isTest(isParallel=true)
private class SalesOrderTest{

	/*
	Considerations for @testSetup annotation:
	(1) Methods with @testSetup annotation are available/supported ONLY with those test classes which are marked as @isTest and NOT with @isTest(SeeAllData=true).
	(2) You can have only one test setup method per test class.
	(3) Methods defined with the @testSetup annotation are used for creating common test records that are available for all test methods in the class.
	(4) If a test class contains a test setup method, the testing framework executes the test setup method first, before any test method in the class.
	(5) Records that are created in a test setup method are available to all test methods in the test class and are rolled back at the end of test class execution.
	(6) If a test method changes those records, such as record field updates or record deletions, those changes are rolled back after each test method finishes execution. The next executing test method gets access to the original unmodified state of those records.
	*/
    @testSetup static void setupCommonData(){
    	// Create custom setting records
    	TestDataFactory.createTriggerSwitchSetting();

    	// Code here...
    }

	static testMethod void testCaseName1(){
    	// Code here...
	}

	/*
	Recommended Approach:
	Using the @isTest annotation instead of the testMethod keyword is more flexible as you can specify parameters in the annotation.
	e.g. @isTest(SeeAllData=true)
	*/
	@isTest static void testCaseName2(){
    	// Code here...
	}

}