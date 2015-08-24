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

/**
 *
 * @author windluffy
 */
public class AjaxComplaintDetails {
    private Complaint complaint;
    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Complaint getComplaint() {
        return complaint;
    }

    public void setComplaint(Complaint complaint) {
        this.complaint = complaint;
    }
    
    public AjaxComplaintDetails() {
    }
    
    public String execute() throws Exception {
        this.loadComplaint();
        return Action.SUCCESS;
    }
    
    private void loadComplaint() {
        IComplaintsManagement complaintsManagement = new DefaultComplaintsManagements();
        this.complaint = complaintsManagement.getComplaintById(this.id);
    }
    
}
