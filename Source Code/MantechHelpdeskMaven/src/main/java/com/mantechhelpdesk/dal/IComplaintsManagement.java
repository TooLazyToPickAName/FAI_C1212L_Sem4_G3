/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mantechhelpdesk.dal;

import com.mantechhelpdesk.entity.Category;
import com.mantechhelpdesk.entity.Complaint;
import com.mantechhelpdesk.entity.Department;
import java.util.List;

/**
 *
 * @author windluffy
 */
public interface IComplaintsManagement {
    List<Complaint> getAllComplaints();
    Complaint getComplaintById(int id);
    boolean createComplaint(Complaint c);
    List<Category> getAllCategory();
    List<Department> getAllDepartment();
}
