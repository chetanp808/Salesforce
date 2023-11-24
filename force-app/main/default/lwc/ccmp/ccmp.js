import { LightningElement } from 'lwc';
 
export default class Ccmp extends LightningElement {
    constructor()
    {
        super();
        alert("Child Constructor is called");
    }
 
    connectedCallback()
    {
        alert("Child Connected Call Back Called");
    }
 
    renderedCallback()
    {
        alert("Child rendered Call Back is Called");
    }
 
    disconnectedCallback()
    {
        alert("Child diconnected Call Back called");
    }
    errorCallback()
    {
        alert("Child error call back is called");
    }
}