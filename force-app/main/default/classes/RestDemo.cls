@RestResource(urlMapping='/MyAccount/*')
global class RestDemo {
    
    @httpGet
    global static List<account> getDetails(){
        List<Account> act = [select id,name from account];
        return act;
    }
    
    @httpPost
    global static void createAccount(String ActName){
        Account a = new Account();
        a.name = ActName;
        insert a;
    }
    
    @httpDelete
    global static void delAccount(){
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        
        String reqid = req.requestURI.subString(req.requestURI.lastIndexOf('/')+1);
        
        Account act = [select id from account where id=:reqid];
        
        delete act;
        
    }
    
}