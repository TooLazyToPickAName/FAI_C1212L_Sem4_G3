/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mantechhelpdesk.dal;

import com.mantechhelpdesk.entity.Technical;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
import java.util.List;

/**
 *
 * @author windluffy
 */
public interface ITechnicalComplaintManagement {
    public List<Technical> getAllTechnicalComplaints();
    public List<Technical> searchTechnicals(String keyword);
}
