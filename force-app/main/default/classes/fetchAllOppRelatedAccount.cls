public class fetchAllOppRelatedAccount {

    @AuraEnabled
    public static void fetchAllRelatedOpp(){
        Map<Id,Opportunity> AccOppMap = new Map<Id,Opportunity>();
        for(Account acc : [SELECT Id,Name,(SELECT Id,Name From Opportunities) FROM Account]){
            for(opportunity opp : acc.opportunities){
                AccOppMap.put(acc.Id,opp);
            }
            system.debug('accId ===> ' + acc.Id);
            }
     
        system.debug('AccOppMap size() ===> ' + AccOppMap.size());
        system.debug('AccOppMap ===> ' + AccOppMap);
                     
    }
}