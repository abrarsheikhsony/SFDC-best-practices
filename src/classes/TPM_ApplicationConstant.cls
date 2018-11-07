//
//
//
public with sharing class TPM_ApplicationConstant{

    public Enum TRIGGER_CONTEXT {
        ALL,
        BEFORE_INSERT,
        BEFORE_UPDATE,
        BEFORE_DELETE,
        AFTER_INSERT,
        AFTER_UPDATE,
        AFTER_DELETE,
        AFTER_UNDELETE
    }
    
    public static final String SOBJECT_TYPE_ACCOUNT = 'Account';

}