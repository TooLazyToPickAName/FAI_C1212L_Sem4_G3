/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mantechhelpdesk.action;

import com.mantechhelpdesk.dal.DefaultTechnicalComplaintManagement;
import com.mantechhelpdesk.dal.ITechnicalComplaintManagement;
import com.mantechhelpdesk.entity.Technical;
import com.opensymphony.xwork2.Action;
import java.util.List;

/**
 *
 * @author windluffy
 */
public class AjaxStatusTechnicals {

    private String keyword;

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }
    private List<Technical> technicals;

    public List<Technical> getTechnicals() {
        return technicals;
    }

    public void setTechnicals(List<Technical> technicals) {
        this.technicals = technicals;
    }

    public AjaxStatusTechnicals() {
    }

    public String execute() throws Exception {
        ITechnicalComplaintManagement itcm = new DefaultTechnicalComplaintManagement();
        if (null == keyword || keyword.isEmpty()) {
            this.technicals = itcm.getAllTechnicalComplaints();
        } else {
            this.technicals = itcm.searchTechnicals(keyword);
        }
        
        return Action.SUCCESS;
    }

}
