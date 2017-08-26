/*----------------------------------------------------------------------
Name: 		VisualforceController.cls
Purpose: 	A controller class of a Visualforce page
------------------------------History----------------------------------
Version 	Author 		Date 				Detail Description 
-------		-------		-------------- 		------------------
1.0 		Abrar 		25-August-2017		Initial Development	
----------------------------------------------------------------------*/
public with sharing class VisualforceController{

	public Account accountRecord {get; set;}

	public VisualforceController(){
		accountRecord = new Account();

        // Code here...
	}

	// This is ONLY required if the associated Visualforce page is using a 
	// StandardController = Account and Extension = VisualforceController
    public VisualforceController(ApexPages.StandardController stdController){
		accountRecord = (Account)stdController.getRecord();

        // Code here...
    }

}