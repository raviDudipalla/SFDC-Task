trigger contactCaseTrigger on Contact (after insert) {
    if(trigger.isAfter == true && trigger.isInsert == true){
        contactCaseHandler.createCase(trigger.new);
    }
    

}