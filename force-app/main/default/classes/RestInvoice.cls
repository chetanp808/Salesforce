@RestResource(urlMapping='/MyInvoice/*')
global class RestInvoice {
    
    @httpGet
    global static List<invoice__c> getDetails(){
        List<invoice__c> inv = [select id,Name,Invoice_Desc__c,Invoice_Status__c,
                                Maximum_Sellitem_Price__c,Minimum_Sellitem_Price__c,
                                Total_Sellitm_Price__c,Total_Items_Sold__c from invoice__c];
        return inv;
    }
    
    @httpPost
    global static void createInvoice(String invdesc,String invstatus){
        invoice__c i = new invoice__c();
        i.Invoice_Desc__c = invdesc;
        i.Invoice_Status__c = invstatus;
      insert i;
    }
  
         @httpDelete
    	global static void delInvoice(){
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        
        String reqid = req.requestURI.subString(req.requestURI.lastIndexOf('/')+1);
        
        invoice__c inv = [select id from invoice__c where id=:reqid];
        
        delete inv;
        
    }
        
    
}