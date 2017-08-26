/*----------------------------------------------------------------------
Name: 		LightningComponentController.cls
Purpose: 	A controller of a Lightning component
------------------------------History----------------------------------
Version 	Author 		Date 				Detail Description 
-------		-------		-------------- 		------------------
1.0 		Abrar 		25-August-2017		Initial Development	
----------------------------------------------------------------------*/
public with sharing class LightningComponentController{

	@AuraEnabled public Account accountRecord {get; set;}

	public LightningComponentController(){
		accountRecord = new Account();	
		// Code here...
	}

	/*----------------------------------------------------------------------
	Purpose: 	Query and get Account record
	Parameters: A valid account record Id
	Returns:	Account record
	------------------------------History----------------------------------
	Version 	Author 		Date 				Detail Description 
	-------		-------		-------------- 		------------------
	1.0 		Abrar 		25-August-2017		Initial Development
	----------------------------------------------------------------------*/
	@AuraEnabled
	public static Account getAccount(String pAccountId){
		Account queryAccountRecord = [SELECT Id, Name FROM Account LIMIT 1];
		if( String.isNotBlank(pAccountId) ){
			// Code here...
		}
		return queryAccountRecord;
	}

}