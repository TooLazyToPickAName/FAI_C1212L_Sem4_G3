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
import java.util.List;

/**
 *
 * @author windluffy
 */
public class ShowComplaints {
    private List<Complaint> complaints;

    public List<Complaint> getComplaints() {
        return complaints;
    }

    public void setComplaints(List<Complaint> complaints) {
        this.complaints = complaints;
    }
    
    public ShowComplaints() {
    }
    
    public String execute() throws Exception {
        IComplaintsManagement complaintsManagement = new DefaultComplaintsManagements();
        this.complaints = complaintsManagement.getAllComplaints();
        return Action.SUCCESS;
    }
    
}
