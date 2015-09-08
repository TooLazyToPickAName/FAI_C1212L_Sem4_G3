/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mantechhelpdesk.interceptor;

import com.mantechhelpdesk.entity.User;

/**
 *
 * @author windluffy
 */
public interface UserAware {
    void setUserModel(User user);
}
