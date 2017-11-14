/*----------------------------------------------------------------------
Name: 		AccountTriggerHandler.cls
Purpose: 	Trigger Handler of Account object
------------------------------History----------------------------------
Version 	Author 		Date 					Detail Description 
-------		-------		-------------- 			------------------
1.0 		Abrar 		14-November-2017		Initial Development	
----------------------------------------------------------------------*/
public with sharing class AccountTriggerHandler{

	// Execute on Before Insert
    public void OnBeforeInsert(List<Account> newAccounts){
        // Call a utility class etc.
        // Code here...
    }

	// Execute on Before Update
    public void OnBeforeUpdate(List<Account> updatedAccounts, List<Account> oldAccounts, Map<Id, Account> updatedAccountsMap, Map<Id, Account> oldAccountsMap){   
        // Call a utility class etc.
        // Code here...
	}

	// Execute on Before Delete
    public void OnBeforeDelete(List<Account> oldAccounts, Map<Id, Account> oldAccountsMap){
        // Call a utility class etc.
        // Code here...
    }

	// Execute on After Insert
    public void OnAfterInsert(List<Account> newAccounts, Map<Id, Account> newAccountsMap){
        // Call a utility class etc.
        // Code here...
    }

	// Execute on After Update
    public void OnAfterUpdate(List<Account> updatedAccounts, List<Account> oldAccounts, Map<Id, Account> updatedAccountsMap, Map<Id, Account> oldAccountsMap){
        // Call a utility class etc.
        // Code here...
    }

	// Execute on After Delete
    public void OnAfterDelete(List<Account> oldAccounts, Map<Id, Account> oldAccountsMap){
        // Call a utility class etc.
        // Code here...
    }

	// Execute on After Undelete
    public void OnAfterUndelete(List<Account> newAccounts, Map<Id, Account> newAccountsMap){
        // Call a utility class etc.
        // Code here...
    }

}