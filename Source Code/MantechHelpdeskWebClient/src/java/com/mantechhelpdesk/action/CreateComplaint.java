/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mantechhelpdesk.action;

import com.mantechhelpdesk.dal.DefaultComplaintsManagements;
import com.mantechhelpdesk.dal.IComplaintsManagement;
import com.mantechhelpdesk.entity.Complaint;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author tinblanc
 */
public class CreateComplaint extends ActionSupport {
    private Complaint complaint;
    
    public CreateComplaint() {
    }
    
    
    public String execute() throws Exception {
        IComplaintsManagement complaintsManagement=new DefaultComplaintsManagements();
        boolean result= complaintsManagement.createComplaint(complaint);
        if(result==true){
            return Action.SUCCESS;
        }else{
            return Action.INPUT;
        }
        
    }

    public Complaint getComplaint() {
        return complaint;
    }

    public void setComplaint(Complaint complaint) {
        this.complaint = complaint;
    }
    
    
}
