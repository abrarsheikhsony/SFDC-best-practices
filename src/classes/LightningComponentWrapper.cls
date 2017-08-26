/*----------------------------------------------------------------------
Name: 		LightningComponentWrapper.cls
Purpose: 	A wrapper class of Lightning component
------------------------------History----------------------------------
Version 	Author 		Date 				Detail Description 
-------		-------		-------------- 		------------------
1.0 		Abrar 		25-August-2017		Initial Development	
----------------------------------------------------------------------*/
public with sharing class LightningComponentWrapper{

	@AuraEnabled public String firstName {get; set;}
	@AuraEnabled public String lastName {get; set;}
	@AuraEnabled public String emailAddress {get; set;}
	@AuraEnabled public Boolean isActive {get; set;}
	// Other variables here...

	public LightningComponentWrapper(){
		firstName = '';	
		firstName = '';	
		firstName = '';
		isActive = false;
		// Other variables here...
	}

}