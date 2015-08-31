/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mantechhelpdesk.action;

import com.mantechhelpdesk.dal.DefaultComplaintsManagements;
import com.mantechhelpdesk.dal.IComplaintsManagement;
import com.mantechhelpdesk.entity.Category;
import com.mantechhelpdesk.entity.Complaint;
import com.mantechhelpdesk.entity.Department;
import com.opensymphony.xwork2.Action;
import java.util.List;

/**
 *
 * @author windluffy
 */
public class CreateComplaint {
    private List<Category> categories;
    private List<Department> departments;
    private Complaint complaint;

    public List<Category> getCategories() {
        return categories;
    }

    public void setCategories(List<Category> categories) {
        this.categories = categories;
    }

    public Complaint getComplaint() {
        return complaint;
    }

    public void setComplaint(Complaint complaint) {
        this.complaint = complaint;
    }

    public List<Department> getDepartments() {
        return departments;
    }

    public void setDepartments(List<Department> departments) {
        this.departments = departments;
    }
    
    
    public CreateComplaint() {
    }
    
    public String displayForm() throws Exception {
        this.complaint = new Complaint();
        this.initControls();
        return Action.SUCCESS;
    }
    
    private void initControls() {
        IComplaintsManagement complaintsManagement = new DefaultComplaintsManagements();
        this.categories = complaintsManagement.getAllCategory();
        this.departments = complaintsManagement.getAllDepartment();
    }
    
    public String createComplaint() {
        IComplaintsManagement complaintsManagement = new DefaultComplaintsManagements();
        complaint.setDepartmentId(2);
        complaint.setEmployeeId(2);
        if (complaintsManagement.createComplaint(complaint)) {
            return Action.SUCCESS;
        }
        return Action.ERROR;
    }
    
}
