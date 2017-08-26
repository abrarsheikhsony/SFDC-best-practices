/*----------------------------------------------------------------------
Name: 		SalesOrderUtility.cls
Purpose: 	A utility class of SalesOrder__c object
------------------------------History----------------------------------
Version 	Author 		Date 				Detail Description 
-------		-------		-------------- 		------------------
1.0 		Abrar 		25-August-2017		Initial Development	
----------------------------------------------------------------------*/
public with sharing class SalesOrderUtility{

	// Must use "@TestVisible" annotation to get access in the test class
	@TestVisible private static Boolean hasLineItems = false;

	/*----------------------------------------------------------------------
	Purpose: 	Calculate the total amount
	Parameters: list of SalesOrders
	Returns:	None
	------------------------------History----------------------------------
	Version 	Author 		Date 				Detail Description 
	-------		-------		-------------- 		------------------
	1.0 		Abrar 		25-August-2017		Initial Development
	----------------------------------------------------------------------*/
	public static void calculateTotalAmount(List<SalesOrder__c> lstSalesOrders){
        // Code here...
	}

	/*----------------------------------------------------------------------
	Purpose: 	Get Accounts
	Parameters: list of SalesOrders
	Returns:	None
	------------------------------History----------------------------------
	Version 	Author 		Date 				Detail Description 
	-------		-------		-------------- 		------------------
	1.0 		Abrar 		25-August-2017		Initial Development
	----------------------------------------------------------------------*/
	// Must use "@TestVisible" annotation to get access in the test class
	@TestVisible
	private static Set<Id> getAccounts(List<SalesOrder__c> lstSalesOrders){
		Set<Id> setAccountIds = new Set<Id>();
        	// Code here...
		return setAccountIds;
	}

}