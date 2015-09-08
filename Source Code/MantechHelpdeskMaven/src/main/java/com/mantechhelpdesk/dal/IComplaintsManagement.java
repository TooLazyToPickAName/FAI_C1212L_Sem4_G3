/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mantechhelpdesk.dal;

import com.mantechhelpdesk.entity.Category;
import com.mantechhelpdesk.entity.Complaint;
import com.mantechhelpdesk.entity.Department;
import com.mantechhelpdesk.entity.User;
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
    boolean login(String username,String userpass);
    User getUserByUsername(String username);
    List<Complaint> getPendingComplaints();
    boolean createAccount(User u);
    User getUserByEmail(String email);
    List<Complaint> getAllComplaintsByEmployeeId(int employeeId);
    List<User> getAllUser();
    List<Complaint> getProcessingComplaints();
    List<User> getAllTechnical();
    List<Complaint> getRejectedComplaints();
    List<Complaint> getClosedComplaints();
    List<Complaint> historyComplaintsTechnical(int technicalId);
    List<Complaint> getProcessingComplaintsTechnical(int technicalId);
    boolean changePassword(String username, String oldPassword, String newPassword);
}
