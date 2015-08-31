/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mantechhelpdesk.action;

import com.mantechhelpdesk.dal.DefaultComplaintsManagements;
import com.mantechhelpdesk.dal.IComplaintsManagement;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author tinblanc
 */
public class LoginAction extends ActionSupport implements SessionAware{
    
    private String username, userpass;
    SessionMap<String,String> sessionmap;
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
    sessionmap=(SessionMap)map;  
    sessionmap.put("login","true");  
    }  
    
    
    public String execute() throws Exception {
        Map session = ActionContext.getContext().getSession();
        IComplaintsManagement complaintsManagement=new DefaultComplaintsManagements();
        if(complaintsManagement.login(username, userpass)){
            if(complaintsManagement.getUser(username,userpass)!=null){
                if(complaintsManagement.getUser(username, userpass).getRoleId()==0){
                    return "admin";
                }else if(complaintsManagement.getUser(username, userpass).getRoleId()==1){
                    return "employee";
                }else if(complaintsManagement.getUser(username, userpass).getRoleId()==2){
                    return "technical";
                }
                session.put("login","true");
            }else{
                return "error";
            }
        }else{
            return "error";
        }
        return "error";
    }
    
//    public String logout(){
//        sessionmap.invalidate();
//        return "success";
//    }

   
    
}
