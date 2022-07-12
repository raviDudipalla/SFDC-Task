public class caseTaskHandler {
    public static void createTask(list<case>varCaseList){
        list<Task>varTaskList = new list<Task>();
        for(case cs:varCaseList){
            Task tsk = new Task();
            tsk.Status = 'Not Started';
            tsk.Subject = 'Welcome call for '+cs.CaseNumber;
            tsk.Priority = 'Normal';
            tsk.OwnerId = cs.OwnerId;
            if(cs.Priority == 'High'){
            Date d  = Date.parse(date.today().format());
            system.debug(d);
            Date d1 = d.addDays(7);
            system.debug(d1);
                
            tsk.ActivityDate = d1;
                
            }
            if(cs.Priority == 'Medium'){
            Date d  = Date.parse(date.today().format());
            system.debug(d);
            Date d1 = d.addDays(14);   
            tsk.ActivityDate = d1;
                
            }
            if(cs.Priority == 'Low'){
            Date d  = Date.parse(date.today().format());
            system.debug(d);
            Date d1 = d.addDays(21);   
            tsk.ActivityDate = d1;
                
            }
            
            
          varTaskList.add(tsk);  
        }
        if(!varTaskList.isEmpty()){
            database.insert(varTaskList, false);
        }
        
        
    }

}