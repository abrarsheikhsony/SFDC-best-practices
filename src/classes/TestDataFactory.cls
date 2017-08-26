/*----------------------------------------------------------------------
Name: 		TestDataFactory.cls
Purpose: 	A test data factory class of the whole application
			(1) You must NOT do any DML operation here. The DML operation
			must be done in the test class which would call this data factory class
------------------------------History----------------------------------
Version 	Author 		Date 				Detail Description 
-------		-------		-------------- 		------------------
1.0 		Abrar 		25-August-2017		Initial Development	
----------------------------------------------------------------------*/
@isTest
public class TestDataFactory{

	/*----------------------------------------------------------------------
	Purpose: 	Create records of a custom setting "TriggerSwitch__c" using a 
				Static Resource "TriggerSwitchResource"
	Parameters: None
	Returns:	None
	------------------------------History----------------------------------
	Version 	Author 		Date 				Detail Description 
	-------		-------		-------------- 		------------------
	1.0 		Abrar 		25-August-2017		Initial Development
	----------------------------------------------------------------------*/
    public static List<TriggerSwitch__c> createTriggerSwitchSetting(){
        // Create a sample .csv file "TriggerSwitchResource" and save it in Static Resource
        List<TriggerSwitch__c> customSetting = Test.loadData(TriggerSwitch__c.sObjectType, 'TriggerSwitchResource');
        return customSetting;

        // Code here...
    }

	/*----------------------------------------------------------------------
	Purpose: 	Create records of an Account record
	Parameters: None
	Returns:	None
	------------------------------History----------------------------------
	Version 	Author 		Date 				Detail Description 
	-------		-------		-------------- 		------------------
	1.0 		Abrar 		25-August-2017		Initial Development
	----------------------------------------------------------------------*/
    public static Account createAccount(String pName, String pRecordTypeId){
    	Account accountRecord = new Account();
    		accountRecord.Name = pName;
    		accountRecord.RecordTypeId = pRecordTypeId;
    	return accountRecord;
    }

	// Code here for additional methods...

}