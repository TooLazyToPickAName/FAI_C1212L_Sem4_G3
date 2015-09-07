/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mantechhelpdesk.action;

import com.mantechhelpdesk.dal.DefaultComplaintReports;
import com.mantechhelpdesk.dal.IComplaintReports;
import com.mantechhelpdesk.entity.SummaryComplaintReports;
import com.opensymphony.xwork2.Action;

/**
 *
 * @author windluffy
 */
public class AjaxSummaryComplaintReports {
    SummaryComplaintReports summaryReports;

    public SummaryComplaintReports getSummaryReports() {
        return summaryReports;
    }

    public void setSummaryReports(SummaryComplaintReports summaryReports) {
        this.summaryReports = summaryReports;
    }
    
    public AjaxSummaryComplaintReports() {
    }
    
    public String execute() throws Exception {
        IComplaintReports reports = new DefaultComplaintReports();
        this.summaryReports = reports.getSummaryComplaintReports();
        return Action.SUCCESS;
    }
    
}
