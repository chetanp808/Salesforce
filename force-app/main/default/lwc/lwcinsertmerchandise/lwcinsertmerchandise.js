import { LightningElement } from 'lwc';
import insertMer from '@salesforce/apex/MerchInfo.insertMerchandiseDetails'
export default class Lwcinsertstudent extends LightningElement {
    mName;
    mDesc;
    mStock;
    mPrice;
    handleOnChangesName(event){
        this.mName = event.target.value;
    }
    handleOnChangemerDesc(event){
        this.mDesc = event.target.value;
    }
    handleOnChangemerStock(event){
        this.mStock = event.target.value;
    }
    handleOnChangemerPrice(event){
        this.mPrice = event.target.value;
    }
    insertMerchandise(event){
        insertMer({mnm:this.mName,mdsc:this.mDesc,mstk:this.mStock,mprc:this.mPrice}).then(results=>{
            alert('Inserted Scuusefully');
        }).catch(error=>{
            alert('Fail to insert');
        })
        
    }
}