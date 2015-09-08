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
import java.util.Map;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author tinblanc
 */
public class LoginAction extends ActionSupport implements SessionAware {

    private String username, userpass;
    SessionMap<String, String> sessionmap;
    private boolean isLoginSuccess;
    private String urlReturn;

    public String getUrlReturn() {
        return urlReturn;
    }

    public void setUrlReturn(String urlReturn) {
        this.urlReturn = urlReturn;
    }

    public boolean isIsLoginSuccess() {
        return isLoginSuccess;
    }

    public void setIsLoginSuccess(boolean isLoginSuccess) {
        this.isLoginSuccess = isLoginSuccess;
    }


    public LoginAction() {
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserpass() {
        return userpass;
    }

    public void setUserpass(String userpass) {
        this.userpass = userpass;
    }

    public void setSession(Map map) {
        sessionmap = (SessionMap) map;
        sessionmap.put("login", "true");
    }

    public String execute() throws Exception {
        Map session = ActionContext.getContext().getSession();
        IComplaintsManagement complaintsManagement = new DefaultComplaintsManagements();
        User user = null;
        if (complaintsManagement.login(username, userpass)) {
            user = complaintsManagement.getUserByUsername(username);
            if (user != null) {
                this.isLoginSuccess = true;
                session.put("user", user);
                session.put("role", RoleType.getTitle(user.getRoleId()));
                switch (user.getRoleId()) {
                    case RoleType.ADMINISTRATOR:
                        this.urlReturn = "indexAdmin";
                        break;
                    case RoleType.TECHNICAL:
                        this.urlReturn = "indexTechnical";
                        break;
                    case RoleType.EMPLOYEE:
                        this.urlReturn = "indexEmployee";
                        break;
                    default:
                        break;
                }
            } else {
                this.isLoginSuccess = false;
            }
        }
        return SUCCESS;
    }

//    public String logout(){
//        sessionmap.invalidate();
//        return "success";
//    }
}
