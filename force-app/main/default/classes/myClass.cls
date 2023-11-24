public with sharing class myClass {

    public PageReference doSave() {
        upsert act;
        return new PageReference('/apex/mySucess') ;
    }


    Account act;
    
    public myClass(){
    
        id i = apexpages.currentpage().getparameters().get('id');
        
        if (i==null){
            act = new Account();
        }
        else{
        act = [select id, name from account where id=:i];
        }
    }

    public Account getMyClass() {
        return act;
    }

}