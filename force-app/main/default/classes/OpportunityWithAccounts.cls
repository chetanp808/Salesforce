public class OpportunityWithAccounts {

    public void getAllrecords(){
        List<Opportunity> op = [select id, name,account.name from opportunity];
        for (Opportunity o : op){
            System.debug('Id : '+o.id+' '+'Opportunity Name : '+o.name+' '+'Account Name : '+o.account.name);
        }
    }
    
}