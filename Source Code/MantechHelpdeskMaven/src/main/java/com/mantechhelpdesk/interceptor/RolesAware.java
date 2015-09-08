/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mantechhelpdesk.interceptor;

import java.util.Map;
import java.util.Set;

/**
 *
 * @author windluffy
 */
public interface RolesAware {

    void setRoleActions(Map<String, Set> roleActions);
}
