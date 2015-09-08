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
 * @author windluffy
 */
public class AjaxChangePassword {

    private String username;
    private String oldPassword;
    private String newPassword;
    private boolean isSuccess;

    public boolean isIsSuccess() {
        return isSuccess;
    }

    public void setIsSuccess(boolean isSuccess) {
        this.isSuccess = isSuccess;
    }

    public String getOldPassword() {
        return oldPassword;
    }

    public void setOldPassword(String oldPassword) {
        this.oldPassword = oldPassword;
    }

    public String getNewPassword() {
        return newPassword;
    }

    public void setNewPassword(String newPassword) {
        this.newPassword = newPassword;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public AjaxChangePassword() {
    }

    public String execute() throws Exception {
        IComplaintsManagement icm = new DefaultComplaintsManagements();
        this.isSuccess = icm.changePassword(username, oldPassword, newPassword);
        return Action.SUCCESS;
    }

}
