public class ConsumeRest {
    //@future(callout=True)
    public  void consumeWebServices(){
        
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('POST');
        request.setHeader('Content-Type','application/json;charset=UTF-8');
        
        //set the body as JSON object
        request.setBody('{"name":"Tiger"}');
        HttpResponse response = http.send(request);
        
        // parse the JSON Response
        
        if (response.getStatusCode()!=201){
            System.debug('The Status Code returned was not excepted : '+ response.getStatusCode()+' '+response.getStatus());            
        }else{
            System.debug(response.getBody());
        }
        
    }
}