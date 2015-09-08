/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mantechhelpdesk.interceptor;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.opensymphony.xwork2.util.TextParseUtil;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;

/**
 *
 * @author windluffy
 */
public class RolesInterceptor extends AbstractInterceptor {

    private String roleSessionField = "role";
    private Map<String, Set> roleActions = Collections.EMPTY_MAP;
    private static final String AuthorizationRequireResult = "authorization_required";

    public Map<String, Set> getRoleActions() {
        return roleActions;
    }

    public String getRoleSessionField() {
        return roleSessionField;
    }

    public void setRoleSessionField(String roleSessionField) {
        this.roleSessionField = roleSessionField;
    }

    public void setRoleActions(String roleActionsParam) {
        StringTokenizer roleActionsParamTokenizer = new StringTokenizer(roleActionsParam, ";");
        this.roleActions = new HashMap<String, Set> (roleActionsParamTokenizer.countTokens());
        
        while(roleActionsParamTokenizer.hasMoreTokens()) {
            String roleActionArray[] = roleActionsParamTokenizer.nextToken().trim().split(":");
            
            if(roleActionArray.length == 2) {
                String role = roleActionArray[0].toLowerCase();
                Set actions = TextParseUtil.commaDelimitedStringToSet(roleActionArray[1]);
                this.roleActions.put(role, actions);
            }
        }
    }

    @Override
    public String intercept(ActionInvocation ai) throws Exception {
        final String actionName = ai.getProxy().getActionName();
        Map session = ai.getInvocationContext().getSession();

        //inject rolesaware instance
        if (ai.getAction() instanceof RolesAware) {
            RolesAware action = (RolesAware) ai.getAction();
            action.setRoleActions(roleActions);
        }

        Object userRole = session.get(this.roleSessionField);

        if(this.hasCorrectRole(userRole, actionName)) {
            return ai.invoke();
        }
        return AuthorizationRequireResult;
    }

    private boolean hasCorrectRole(Object userRole, String actionName) {
        if (roleActions.containsKey("*") && roleActions.get("*").contains(actionName)) {
            return true;
        }

        if (userRole != null && userRole instanceof String) {
            String userRoleString = ((String) userRole).toLowerCase();

            if (roleActions.containsKey(userRoleString)
                    && roleActions.get(userRoleString).contains(actionName)) {
                return true;
            }
        }
        return false;
    }

}
