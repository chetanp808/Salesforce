import { LightningElement } from 'lwc';
 
export default class Pcmp extends LightningElement {
 
    
    isVisible=true;
    constructor()
    {
        super();
        alert("Parent Constructor is called");
    }
 
    connectedCallback()
    {   
        alert("Parent Connected Call Back Called");
    }
 
    renderedCallback()
    {
        alert("Parent rendered Call Back is Called")
    }
 
    disconnectedCallback()
    {
        alert("Parent diconnected Call Back called");
    }
 
    errorCallback()
    {
       alert("Parent error Call back called") 
    }
 
    handleClick()
    {
        if(this.isVisible==true)
        {
            this.isVisible=false;
        }else
        {
            this.isVisible=true;
        }
 
    }
}