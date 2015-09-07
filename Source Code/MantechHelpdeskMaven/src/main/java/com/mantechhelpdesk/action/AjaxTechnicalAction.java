/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mantechhelpdesk.action;

import com.mantechhelpdesk.dal.DefaultTechnicalComplaintManagement;
import com.mantechhelpdesk.dal.ITechnicalComplaintManagement;
import com.opensymphony.xwork2.Action;

/**
 *
 * @author windluffy
 */
public class AjaxTechnicalAction {
    private int technicalId;
    private String notes;
    private int status;
    private int complaintId;
    private boolean isSaveSuccess;

    public int getComplaintId() {
        return complaintId;
    }

    public void setComplaintId(int complaintId) {
        this.complaintId = complaintId;
    }

    public boolean isIsSaveSuccess() {
        return isSaveSuccess;
    }

    public void setIsSaveSuccess(boolean isSaveSuccess) {
        this.isSaveSuccess = isSaveSuccess;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
    
    public int getTechnicalId() {
        return technicalId;
    }

    public void setTechnicalId(int technicalId) {
        this.technicalId = technicalId;
    }
    
    
    public AjaxTechnicalAction() {
    }
    
    public String closeComplaint() {
        ITechnicalComplaintManagement itcm = new DefaultTechnicalComplaintManagement();
        this.isSaveSuccess = itcm.closeComplaint(complaintId);
        return Action.SUCCESS;
    }
    
    public String rejectComplaint() {
        ITechnicalComplaintManagement itcm = new DefaultTechnicalComplaintManagement();
        this.isSaveSuccess = itcm.rejectComplaint(complaintId, notes);
        return Action.SUCCESS;
    }
}
