/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mantechhelpdesk.action;

import com.mantechhelpdesk.common.RoleType;
import com.mantechhelpdesk.dal.DefaultComplaintsManagements;
import com.mantechhelpdesk.dal.IComplaintsManagement;
import com.mantechhelpdesk.entity.User;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 *
 * @author tinblanc
 */
public class ManagerAccountAction extends ActionSupport {

    private User user;
    private String dateOfBirth;
    private List<User> listUser;
    private String oldPassword;
    private String newPassword;

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

    public List<User> getListUser() {
        return listUser;
    }

    public void setListUser(List<User> listUser) {
        this.listUser = listUser;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public ManagerAccountAction() {
    }

    public User formatUser() {
        DateFormat df = new SimpleDateFormat("MM-dd-yyyy");
        java.util.Date startDate = null;
        try {
            startDate = df.parse(this.dateOfBirth);
            String newDateString = df.format(startDate);
            System.out.println(newDateString);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        user.setDateOfBirth(startDate);

        if (user.getRoleId() == RoleType.TECHNICAL) {
            user.setDepartmentId(null);
        }
        return user;
    }

    public String createAccount() throws Exception {
        IComplaintsManagement complaintsManagement = new DefaultComplaintsManagements();
        if (complaintsManagement.createAccount(this.formatUser())) {
            return Action.SUCCESS;
        }
        return Action.ERROR;
    }

    public String displayForm() {
        this.user = new User();
        return SUCCESS;
    }

    public String showAccount() throws Exception {
        IComplaintsManagement complaintsManagement = new DefaultComplaintsManagements();
        this.listUser = complaintsManagement.getAllUser();
        return Action.SUCCESS;
    }

    public String showAllTechnical() throws Exception {
        IComplaintsManagement complaintsManagement = new DefaultComplaintsManagements();
        this.listUser = complaintsManagement.getAllTechnical();
        return Action.SUCCESS;
    }

    public String getUsername() {
        Map session = ActionContext.getContext().getSession();
        User user1 = new User();
        user1 = (User) session.get("user");
        return user1.getUsername();
    }

    public String getPassword() {
        Map session = ActionContext.getContext().getSession();
        User user1 = new User();
        user1 = (User) session.get("user");
        return user1.getPassword();
    }

    public boolean checkOldPassword() {
        Map session = ActionContext.getContext().getSession();
        User user1 = null;
        user1 = (User) session.get("user");
        String currentPassword = user1.getPassword();
        if (oldPassword.equals(currentPassword)) {
            return true;
        }
        return false;
    }

    public String changePassword() throws Exception {
        String username = getUsername();
        IComplaintsManagement complaintsManagement = new DefaultComplaintsManagements();
        if (checkOldPassword()==true) {
            if (complaintsManagement.changePassword(username, newPassword)) {
                return Action.SUCCESS;
            }
            return Action.ERROR;
        }

        return Action.ERROR;
    }
}
