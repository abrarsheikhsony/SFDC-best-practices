trigger SalesOrderTrigger on SalesOrder__c (before insert, before update, before delete,  after insert, after update, after delete, after undelete) {

    SalesOrderTriggerHandler handler = new SalesOrderTriggerHandler();

    if( Trigger.isBefore ){
        // Execute on Before Insert
        if( Trigger.isInsert ){
            handler.OnBeforeInsert(Trigger.new);
        }
        // Execute on Before Update
        if( Trigger.isUpdate ){
            handler.OnBeforeUpdate(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
        }
        // Execute on Before Delete
        if( Trigger.isDelete ){
            handler.OnBeforeDelete(Trigger.old, Trigger.oldMap);
        }
    }
    else if( Trigger.isAfter ){
        // Execute on After Insert
        if( Trigger.isInsert ){
            handler.OnAfterInsert(Trigger.new, Trigger.newMap);
        }
        // Execute on After Update
        if( Trigger.isUpdate ){
            handler.OnAfterUpdate(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
        }
        // Execute on After Delete
        if( Trigger.isDelete ){
            handler.OnAfterDelete(Trigger.old, Trigger.oldMap);
        }
    	// Execute on After Undelete
		if( Trigger.isUndelete ){
        	handler.OnAfterUndelete(Trigger.new, Trigger.newMap);
    	}
    }

}