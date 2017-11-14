public with sharing class ApplicationConstant{

	// Types are final by default, use virtual to declare a type that can be extended
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
    // SObject Types
    public static final String SOBJECT_TYPE_APEX_TRIGGER = 'ApexTrigger';
    public static final String SOBJECT_TYPE_APEX_CLASS = 'ApexClass';
    public static final String SOBJECT_TYPE_ACCOUNT = 'Account';

    public static final String SALES_ORDER_STATUS = 'Approved';

}