import { LightningElement } from 'lwc';

export default class Parentact extends LightningElement {
    searchDetail=[];
    handleaccount(event){
        this.searchDetail=[];
        alert('See the magic, I Called from Child');
        alert(event.detail);
        try{
            event.detail.forEach(x => {
                var accData = {
                    id:x.Id,
                    name:x.Name
                }
                this.searchDetail.push(accData);
            });
        }
        catch(e){
            console.log(e);
        }
    }
}