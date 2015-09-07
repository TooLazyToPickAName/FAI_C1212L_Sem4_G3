/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mantechhelpdesk.action;

import com.mantechhelpdesk.common.PriorityType;
import com.mantechhelpdesk.common.StatusType;
import com.mantechhelpdesk.dal.DefaultTechnicalComplaintManagement;
import com.mantechhelpdesk.dal.ITechnicalComplaintManagement;
import com.mantechhelpdesk.entity.Complaint;
import com.mantechhelpdesk.entity.Technical;
import com.opensymphony.xwork2.Action;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author windluffy
 */
public class AjaxAssignTechnicals {

    private List<Technical> technicals;
    private String strTechnicalsId;

    public String getStrTechnicalsId() {
        return strTechnicalsId;
    }

    public void setStrTechnicalsId(String strTechnicalsId) {
        this.strTechnicalsId = strTechnicalsId;
    }
    private int complaintId;
    private int priority;

    private boolean isAssignSuccess;

    public boolean isIsAssignSuccess() {
        return isAssignSuccess;
    }

    public void setIsAssignSuccess(boolean isAssignSuccess) {
        this.isAssignSuccess = isAssignSuccess;
    }

    public List<Technical> getTechnicals() {
        return technicals;
    }

    public void setTechnicals(List<Technical> technicals) {
        this.technicals = technicals;
    }

    public int getComplaintId() {
        return complaintId;
    }

    public void setComplaintId(int complaintId) {
        this.complaintId = complaintId;
    }

    public int getPriority() {
        return priority;
    }

    public void setPriority(int priority) {
        this.priority = priority;
    }

    public AjaxAssignTechnicals() {
    }

    public String execute() throws Exception {
        Complaint complaint = new Complaint();
        complaint.setId(complaintId);
        complaint.setPriority(priority);

        ITechnicalComplaintManagement itcm = new DefaultTechnicalComplaintManagement();
        List<Technical> technicals = this.getTechnicalsFromIds();
        if (technicals.size() > 0) {
            complaint.setStatus(StatusType.PROGRESSING);
        }
        this.isAssignSuccess = itcm.assignAndSaveTechnicalsJob(technicals, complaint);
        return Action.SUCCESS;
    }

    private List<Technical> getTechnicalsFromIds() {
        List<Technical> ret = new ArrayList<>();
        String[] arrId = this.strTechnicalsId.split(",");
        for (String arrId1 : arrId) {
            Technical t = new Technical();
            t.setId(Integer.parseInt(arrId1));
            ret.add(t);
        }
        return ret;
    }
}