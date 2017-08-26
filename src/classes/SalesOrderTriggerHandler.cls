/*----------------------------------------------------------------------
Name: 		SalesOrderTriggerHandler.cls
Purpose: 	Trigger Handler of SalesOrder__c object
------------------------------History----------------------------------
Version 	Author 		Date 				Detail Description 
-------		-------		-------------- 		------------------
1.0 		Abrar 		25-August-2017		Initial Development	
----------------------------------------------------------------------*/
public with sharing class SalesOrderTriggerHandler{

	// Execute on Before Insert
    public void OnBeforeInsert(List<SalesOrder__c> newSalesOrders){
        // Call a utility class etc.
        // Code here...
    }

	// Execute on Before Update
    public void OnBeforeUpdate(List<SalesOrder__c> updatedSalesOrders, List<SalesOrder__c> oldSalesOrders, Map<Id, SalesOrder__c> updatedSalesOrdersMap, Map<Id, SalesOrder__c> oldSalesOrdersMap){   
        // Call a utility class etc.
        // Code here...
    }

	// Execute on Before Delete
    public void OnBeforeDelete(List<SalesOrder__c> oldSalesOrders, Map<Id, SalesOrder__c> oldSalesOrdersMap){
        // Call a utility class etc.
        // Code here...
    }

	// Execute on After Insert
    public void OnAfterInsert(List<SalesOrder__c> newSalesOrders, Map<Id, SalesOrder__c> newSalesOrdersMap){
        // Call a utility class etc.
        // Code here...
    }

	// Execute on After Update
    public void OnAfterUpdate(List<SalesOrder__c> updatedSalesOrders, List<SalesOrder__c> oldSalesOrders, Map<Id, SalesOrder__c> updatedSalesOrdersMap, Map<Id, SalesOrder__c> oldSalesOrdersMap){
        // Call a utility class etc.
        // Code here...
    }

	// Execute on After Delete
    public void OnAfterDelete(List<SalesOrder__c> oldSalesOrders, Map<Id, SalesOrder__c> oldSalesOrdersMap){
        // Call a utility class etc.
        // Code here...
    }

	// Execute on After Undelete
    public void OnAfterUndelete(List<SalesOrder__c> newSalesOrders, Map<Id, SalesOrder__c> newSalesOrdersMap){
        // Call a utility class etc.
        // Code here...
    }

}