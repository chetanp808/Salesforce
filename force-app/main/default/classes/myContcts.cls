public class myContcts {

    public PageReference doSave() {
        upsert con;
        return new PageReference('/apex/mySucess') ;
    }

    contact con;
    
    public myContcts(){
    
        id i = apexpages.currentpage().getparameters().get('id');
        
        if (i==null){
            con = new contact();
        }
        else{
        con = [select id, name from contact where id=:i];
        }
    }

    public Contact getmyContcts() {
        return con;
    }

}