import { LightningElement } from 'lwc';
import insertAccount from '@salesforce/apex/StudentInfo.insertStudentDetails'
export default class Lwcinsertstudent extends LightningElement {
    sName;
    sFName;
    sEmail;
    sFees;
    handleOnChangesName(event){
        this.sName = event.target.value;
    }
    handleOnChangesFName(event){
        this.sFName = event.target.value;
    }
    handleOnChangesEmail(event){
        this.sEmail = event.target.value;
    }
    handleOnChangesFees(event){
        this.sFees = event.target.value;
    }
    inserttudent(event){
        insertAccount({snm:this.sName,sfnm:this.sFName,smail:this.sEmail,sfee:this.sFees}).then(results=>{
            alert('Inserted Scuusefully');
        }).catch(error=>{
            alert('Fail to insert');
        })
        
    }
}