/*----------------------------------------------------------------------
Name:       TriggerSettingUtility.cls
Purpose:    A generalised trigger utility for all triggers to enable/disable 
            one "or" many trigger contexts (before insert, before update, 
            before delete, after insert, after update, after delete, after undelete) 
            using a custom setting "Trigger Setting (TriggersSetting__c)".
------------------------------History----------------------------------
Version   Author     Date               Detail Description 
-------   -------    --------------     ------------------
1.0       Abrar     11-November-2017     Initial Development  
----------------------------------------------------------------------*/
public with sharing class TriggerSettingUtility{

    /*----------------------------------------------------------------------
    Purpose:    Check whether Apex trigger of the specific object should execute or not?
    Parameters: SObject API Name
    Returns:    Flag (True or Active / False or Inactive)
    ------------------------------History----------------------------------
    Version   Author     Date               Detail Description 
    ------- -------    --------------       ------------------
    1.0     Abrar     11-November-2017       Initial Development
    ----------------------------------------------------------------------*/
    public static Boolean isTriggerActive(String objectAPIName, ApplicationConstant.TRIGGER_CONTEXT triggerContext){
        if( String.isNotBlank(objectAPIName) ){
            TriggersSetting__c triggerSetting = TriggersSetting__c.getInstance(objectAPIName);

            if( triggerSetting <> null ){
                if(triggerSetting.IsDeactivateTrigger__c){
                    return false;           
                }
                else if(triggerSetting.IsDeactivateBeforeInsert__c && triggerContext == ApplicationConstant.TRIGGER_CONTEXT.BEFORE_INSERT){
                    return false;
                }
                else if(triggerSetting.IsDeactivateBeforeUpdate__c && triggerContext == ApplicationConstant.TRIGGER_CONTEXT.BEFORE_UPDATE){
                    return false;
                }
                else if(triggerSetting.IsDeactivateBeforeDelete__c && triggerContext == ApplicationConstant.TRIGGER_CONTEXT.BEFORE_DELETE){
                    return false;
                }
                else if(triggerSetting.IsDeactivateAfterInsert__c && triggerContext == ApplicationConstant.TRIGGER_CONTEXT.AFTER_INSERT){
                    return false;
                }
                else if(triggerSetting.IsDeactivateAfterUpdate__c && triggerContext == ApplicationConstant.TRIGGER_CONTEXT.AFTER_UPDATE){
                    return false;
                }
                else if(triggerSetting.IsDeactivateAfterDelete__c && triggerContext == ApplicationConstant.TRIGGER_CONTEXT.AFTER_DELETE){
                    return false;
                }
                else if(triggerSetting.IsDeactivateAfterUnDelete__c && triggerContext == ApplicationConstant.TRIGGER_CONTEXT.AFTER_UNDELETE){
                    return false;
                }
            }
        }
        return true;
    }

}