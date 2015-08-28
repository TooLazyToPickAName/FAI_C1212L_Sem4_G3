/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mantechhelpdesk.action;

import com.mantechhelpdesk.dal.DefaultComplaintsManagements;
import com.mantechhelpdesk.dal.IComplaintsManagement;
import com.mantechhelpdesk.entity.Category;
import com.mantechhelpdesk.entity.Department;
import com.opensymphony.xwork2.Action;
import java.util.List;

/**
 *
 * @author windluffy
 */
public class ShowCreateComplaint {
    private List<Category> categories;
    private List<Department> departments;

    public List<Category> getCategories() {
        return categories;
    }

    public void setCategories(List<Category> categories) {
        this.categories = categories;
    }

    public List<Department> getDepartments() {
        return departments;
    }

    public void setDepartments(List<Department> departments) {
        this.departments = departments;
    }
    
    
    public ShowCreateComplaint() {
    }
    
    public String execute() throws Exception {
        this.initControls();
        return Action.SUCCESS;
    }
    
    private void initControls() {
        IComplaintsManagement complaintsManagement = new DefaultComplaintsManagements();
        this.categories = complaintsManagement.getAllCategory();
        this.departments = complaintsManagement.getAllDepartment();
    }
    
}
