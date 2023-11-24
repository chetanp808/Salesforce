import { LightningElement } from 'lwc';

export default class Firstcmp extends LightningElement {
    name = 'Chetan';
    isActive=true;
    handleOnChange(event){
        this.name = event.target.value;
    }
    conditionalRender(event){
        this.isActive = event.target.checked;
    }

}