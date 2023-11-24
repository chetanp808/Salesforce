import { LightningElement } from 'lwc';
import {NavigationMixin} from 'lightning/navigation';
export default class Contactnavigation extends NavigationMixin(LightningElement) {
    openNewContact(){
        this[NavigationMixin.Navigate]({
            type:'standard__objectPage',
            attributes:{
                objectApiName:'Contact',
                actionName : 'new'
            }
        });
    }
}