public class contactCaseHandler {
     
    public static void createCase(list<Contact>varContacts){
        list<case> varCaseList = new list<case>();
        for(Contact c:varContacts){
            
            case c1 = new case();
            c1.Status = 'Working';
            c1.Origin = 'New Contact';
            c1.ContactId = c.Id;
            c1.AccountId  = c.AccountId;
            c1.OwnerId = c.OwnerId;
            if(c.Level__c == 'Primary'){
                c1.Priority = 'High';
                
            }
            else if (c.Level__c == 'Secondry'){
                c1.Priority = 'Medium';
                
            }
            else if(c.Level__c == 'Tertiary'){
                c1.Priority = 'Low';
                
            }
            varCaseList.add(c1);
            
           
               
        }
        if(!varCaseList.isEmpty()){
            database.insert(varCaseList, false);
            
        }        
    }

}