//
//
//
trigger TPM_AccountTrigger on Account (before insert) {
  TPM_TriggerDispatcher.executeTrigger(new TPM_AccountTriggerHandler());
}