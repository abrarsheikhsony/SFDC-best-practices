//
//
//
public with sharing class TPM_TriggerDispatcher{

    public static void executeTrigger(TPM_BaseTriggerHandler handler){
        if (trigger.isBefore) {
            // Execute on Before Insert
            if (trigger.isInsert && handler.isTriggerActive(TPM_ApplicationConstant.TRIGGER_CONTEXT.BEFORE_INSERT)) {
                handler.beforeInsert (trigger.new);
            }
           // Execute on Before Update
            if (trigger.isUpdate && handler.isTriggerActive(TPM_ApplicationConstant.TRIGGER_CONTEXT.BEFORE_UPDATE)) {
                handler.beforeUpdate (trigger.newMap, trigger.oldMap);
            }
            // Execute on Before Delete
           if (trigger.isDelete && handler.isTriggerActive(TPM_ApplicationConstant.TRIGGER_CONTEXT.BEFORE_DELETE)) {
                handler.beforeDelete (trigger.oldMap);
           }
        }       
        if (trigger.isAfter) {
            // Execute on After Insert
            if (trigger.isInsert && handler.isTriggerActive(TPM_ApplicationConstant.TRIGGER_CONTEXT.AFTER_INSERT)) {
                handler.afterInsert (trigger.newMap);
            }
           // Execute on After Update
            if (trigger.isUpdate && handler.isTriggerActive(TPM_ApplicationConstant.TRIGGER_CONTEXT.AFTER_UPDATE)) {
                handler.afterUpdate (trigger.newMap, trigger.oldMap);
            }
            // Execute on After Delete
           if (trigger.isDelete && handler.isTriggerActive(TPM_ApplicationConstant.TRIGGER_CONTEXT.AFTER_DELETE)) {
                handler.afterDelete (trigger.oldMap);
           }
            // Execute on After Undelete
            if (trigger.isUndelete && handler.isTriggerActive(TPM_ApplicationConstant.TRIGGER_CONTEXT.AFTER_UNDELETE)) {
                handler.afterUndelete(trigger.newMap);
            }
        }
    }
    
}