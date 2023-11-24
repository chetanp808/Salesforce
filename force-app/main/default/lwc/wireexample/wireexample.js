import { LightningElement,api,wire } from 'lwc';
import {getRecord, getFieldValue} from 'lightning/uiRecordApi';
import nameField from '@salesforce/schema/Account.Name';
import phoneField from '@salesforce/schema/Account.Phone';
export default class Wireexample extends LightningElement {
    @api recordId;
    @wire (getRecord,{recordId:'$recordId',fields:[nameField,phoneField]}) record;
    get name(){
        return this.record.data ? getFieldValue(this.record.data, nameField): '';
    }
    get phone(){
        return this.record.data ? getFieldValue(this.record.data, phoneField): '';
    }
}