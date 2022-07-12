trigger CaseTaskMasterTrigger on Case (after insert) {
    if(trigger.isAfter == true && trigger.isInsert == true){
        caseTaskHandler.createTask(trigger.new);
    }

}