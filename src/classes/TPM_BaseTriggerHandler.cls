//
//
//
public virtual with sharing class TPM_BaseTriggerHandler{

    public static TPM_TriggerSetting__mdt getTriggerSetting(String objectAPIName){
        TPM_TriggerSetting__mdt triggerSettingRecord = [SELECT Id, TPM_ObjectAPIName__c, TPM_IsDeactivateTrigger__c,
                                                    TPM_IsDeactivateBeforeInsert__c, TPM_IsDeactivateBeforeUpdate__c, TPM_IsDeactivateBeforeDelete__c,
                                                    TPM_IsDeactivateAfterInsert__c, TPM_IsDeactivateAfterUpdate__c, TPM_IsDeactivateAfterDelete__c, TPM_IsDeactivateAfterUnDelete__c
                                                    FROM TPM_TriggerSetting__mdt WHERE TPM_ObjectAPIName__c = :objectAPIName];
        return triggerSettingRecord;
    }
    
    public static Boolean isTriggerActive(String objectAPIName, TPM_ApplicationConstant.TRIGGER_CONTEXT triggerContext){
        TPM_TriggerSetting__mdt triggerSettingRecord = getTriggerSetting(objectAPIName);
        
        if(triggerSettingRecord.TPM_IsDeactivateTrigger__c){
            return false;            
        }
        
        return true;
    }

    public virtual Boolean isTriggerActive(TPM_ApplicationConstant.TRIGGER_CONTEXT triggerContext) {
        return false;
    }
    
    public virtual void beforeInsert(List<Sobject> lstSobjects) {}
    
    public virtual void beforeUpdate(Map<Id, Sobject> updatedSobjectsMap, Map<Id, Sobject> oldSobjectsMap) {}
    
    public virtual void beforeDelete(Map<Id, Sobject> oldSobjectsMap) {}
    
    public virtual void afterInsert(Map<Id, Sobject> newSobjectsMap) {}
    
    public virtual void afterUpdate(Map<Id, Sobject> updatedSobjectsMap, Map<Id, Sobject> oldSobjectsMap) {}
    
    public virtual void afterDelete(Map<Id, Sobject> oldSobjectsMap) {}
    
    public virtual void afterUndelete(Map<Id, Sobject> newSobjectsMap) {}
    
}