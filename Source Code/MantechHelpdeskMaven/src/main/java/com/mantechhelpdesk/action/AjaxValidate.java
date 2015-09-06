/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mantechhelpdesk.action;

import com.mantechhelpdesk.dal.DefaultComplaintsManagements;
import com.mantechhelpdesk.dal.IComplaintsManagement;
import com.opensymphony.xwork2.Action;

/**
 *
 * @author tinblanc
 */
public class AjaxValidate {

    private enum TypeValidation {
        UsernameExist,
        EmailExist
    }

    private TypeValidation typeValidation;
    private String value;
    private boolean isValidated;
    private String errMsg;

    public String getErrMsg() {
        return errMsg;
    }

    public void setErrMsg(String errMsg) {
        this.errMsg = errMsg;
    }
    

    public TypeValidation getTypeValidation() {
        return typeValidation;
    }

    public void setTypeValidation(TypeValidation typeValidation) {
        this.typeValidation = typeValidation;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public boolean isIsValidated() {
        return isValidated;
    }

    public void setIsValidated(boolean isValidated) {
        this.isValidated = isValidated;
    }

    public AjaxValidate() {
    }

    public String execute() throws Exception {
        if (this.typeValidation == null) {
            this.errMsg = "type validation must be specified";
            return Action.SUCCESS;
        }
        switch (this.typeValidation) {
            case UsernameExist:
                this.processUsernameExist();
                break;
            case EmailExist:
                this.processEmailExist();
                break;
            default:
                this.errMsg = "No found the type validation";
                break;
        }
        
        return Action.SUCCESS;
    }

    private void processUsernameExist() {
        IComplaintsManagement complaintsManagement = new DefaultComplaintsManagements();
        boolean isExisted = complaintsManagement.getUser(value) != null;
       
        this.isValidated = !isExisted;
    }
    
    private void processEmailExist() {
        IComplaintsManagement complaintsManagement = new DefaultComplaintsManagements();
        boolean isExisted = complaintsManagement.getUserByEmail(value) != null;
       
        this.isValidated = !isExisted;
    }
}
