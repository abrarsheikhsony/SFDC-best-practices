/*----------------------------------------------------------------------
Name: 		TPM_AccountTriggerHandler.cls
Purpose: 	Trigger Handler of Account object
------------------------------History----------------------------------
Version 	Author 		Date 					Detail Description 
-------		-------		-------------- 			------------------
1.0 		Abrar 		02-November-2018		Initial Development	
----------------------------------------------------------------------*/
public virtual with sharing class TPM_AccountTriggerHandler extends TPM_BaseTriggerHandler{

	/*----------------------------------------------------------------------
	Purpose: 	Check the trigger status
	Parameters: 
	Returns:	
	------------------------------History----------------------------------
	Version 	Author 		Date 				Detail Description 
	-------		-------		-------------- 		------------------
	1.0 		Abrar 		25-August-2017		Initial Development
	----------------------------------------------------------------------*/    
	public override boolean isTriggerActive (TPM_ApplicationConstant.TRIGGER_CONTEXT triggerContext) {
        return TPM_BaseTriggerHandler.isTriggerActive(TPM_ApplicationConstant.SOBJECT_TYPE_ACCOUNT, triggerContext);
    } 
    
	/*----------------------------------------------------------------------
	Purpose: 	Execute Before Insert trigger context of Account
	Parameters: 
	Returns:	
	------------------------------History----------------------------------
	Version 	Author 		Date 					Detail Description 
	-------		-------		-------------- 			------------------
	1.0 		Abrar 		02-November-2018		Initial Development
	----------------------------------------------------------------------*/
    public override void beforeInsert(List<SObject> lstSObjects){
        for(Account accountRecord : (List<Account>)lstSObjects){
            System.Debug('>>TPM_AccountTriggerHandler Before Insert accountRecord<<'+accountRecord);            
        }
    }
    
}