@isTest
class contactCaseHandlerTest {
    @isTest
    static void createCaseTest(){
        Contact cnt = new Contact();
        cnt.Salutation = 'Mr.';
        cnt.LastName = 'ManiTeja';
        cnt.Level__c = 'Primary';
        insert cnt;
        list<Contact>varList = [SELECT Id, AccountId FROM Contact WHERE LastName = 'ManiTeja'];
        system.assertEquals(1, varList.size());
        
    }
    @isTest
     static void createCaseTest1(){
        Contact cnt = new Contact();
        cnt.Salutation = 'Mr.';
        cnt.LastName = 'test1';
        cnt.Level__c = 'Secondry';
        insert cnt;
        list<Contact>varList = [SELECT Id, AccountId FROM Contact WHERE LastName = 'test1'];
        system.assertEquals(1, varList.size());
        
    }
    @isTest
     static void createCaseTest2(){
        Contact cnt = new Contact();
        cnt.Salutation = 'Mr.';
        cnt.LastName = 'test2';
        cnt.Level__c = 'Tertiary';
        insert cnt;
        list<Contact>varList = [SELECT Id, AccountId FROM Contact WHERE LastName = 'test2'];
        system.assertEquals(1, varList.size());
        
    }
   
   
    

}