/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mantechhelpdesk.action;

import com.mantechhelpdesk.dal.DefaultComplaintsManagements;
import com.mantechhelpdesk.dal.IComplaintsManagement;
import com.mantechhelpdesk.entity.Complaint;
import com.mantechhelpdesk.entity.User;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import java.util.List;
import java.util.Map;

/**
 *
 * @author windluffy
 */
public class ShowComplaints {
    private List<Complaint> complaints;
    private int employeeId;

    public int getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(int employeeId) {
        this.employeeId = employeeId;
    }
    

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
    
    public String getPendingComplaints() throws Exception {
        IComplaintsManagement complaintsManagement = new DefaultComplaintsManagements();
        this.complaints = complaintsManagement.getPendingComplaints();
        return Action.SUCCESS;
    }
    
    public int getUserId(){
        Map session = ActionContext.getContext().getSession();
        User user=new User();
        user= (User) session.get("user");
        return user.getId();
    }
    
    public String getComplaintsByEmployeeId() throws Exception {
        IComplaintsManagement complaintsManagement = new DefaultComplaintsManagements();
        this.complaints = complaintsManagement.getAllComplaintsByEmployeeId(getUserId());
        return Action.SUCCESS;
    } 
    
    public String getProcessingComplaints() throws Exception {
        IComplaintsManagement complaintsManagement = new DefaultComplaintsManagements();
        this.complaints = complaintsManagement.getProcessingComplaints();
        return Action.SUCCESS;
    }
}
