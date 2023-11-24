import { LightningElement } from 'lwc';
export default class accountrecordpicker extends LightningElement {

    selectedAccountId;

    handleChange( event ) {

        console.log(
            'Selected Account Id is',
            event.detail.recordId
        );
        this.selectedAccountId = event.detail.recordId;

    }

}