trigger AccountTrigger on Account (before insert, before update, before delete,  after insert, after update, after delete, after undelete) {

    AccountTriggerHandler handler = new AccountTriggerHandler();

    if( TriggerSettingUtility.isTriggerActive(ApplicationConstant.SOBJECT_TYPE_ACCOUNT, null) ){
        if( Trigger.isBefore ){
            // Execute on Before Insert
            if( Trigger.isInsert && TriggerSettingUtility.isTriggerActive(ApplicationConstant.SOBJECT_TYPE_ACCOUNT, ApplicationConstant.TRIGGER_CONTEXT.BEFORE_INSERT) ){
                handler.OnBeforeInsert(Trigger.new);
            }
            // Execute on Before Update
            if( Trigger.isUpdate && TriggerSettingUtility.isTriggerActive(ApplicationConstant.SOBJECT_TYPE_ACCOUNT, ApplicationConstant.TRIGGER_CONTEXT.BEFORE_UPDATE) ){
                handler.OnBeforeUpdate(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
            }
            // Execute on Before Delete
            if( Trigger.isDelete && TriggerSettingUtility.isTriggerActive(ApplicationConstant.SOBJECT_TYPE_ACCOUNT, ApplicationConstant.TRIGGER_CONTEXT.BEFORE_DELETE) ){
                handler.OnBeforeDelete(Trigger.old, Trigger.oldMap);
            }
        }
        else if( Trigger.isAfter ){
            // Execute on After Insert
            if( Trigger.isInsert && TriggerSettingUtility.isTriggerActive(ApplicationConstant.SOBJECT_TYPE_ACCOUNT, ApplicationConstant.TRIGGER_CONTEXT.AFTER_INSERT) ){
                handler.OnAfterInsert(Trigger.new, Trigger.newMap);
            }
            // Execute on After Update
            if( Trigger.isUpdate && TriggerSettingUtility.isTriggerActive(ApplicationConstant.SOBJECT_TYPE_ACCOUNT, ApplicationConstant.TRIGGER_CONTEXT.AFTER_UPDATE) ){
                handler.OnAfterUpdate(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
            }
            // Execute on After Delete
            if( Trigger.isDelete && TriggerSettingUtility.isTriggerActive(ApplicationConstant.SOBJECT_TYPE_ACCOUNT, ApplicationConstant.TRIGGER_CONTEXT.AFTER_DELETE) ){
                handler.OnAfterDelete(Trigger.old, Trigger.oldMap);
            }
            // Execute on After Undelete
            if( Trigger.isUndelete && TriggerSettingUtility.isTriggerActive(ApplicationConstant.SOBJECT_TYPE_ACCOUNT, ApplicationConstant.TRIGGER_CONTEXT.AFTER_UNDELETE) ){
                handler.OnAfterUndelete(Trigger.new, Trigger.newMap);
            }
        }
    }

}