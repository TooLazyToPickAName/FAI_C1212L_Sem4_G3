/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mantechhelpdesk.interceptor;

import com.mantechhelpdesk.entity.User;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.opensymphony.xwork2.util.TextParseUtil;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

/**
 *
 * @author windluffy
 */
public class AuthenticationInterceptor extends AbstractInterceptor {

    private String userSessionField = new String("user");
    private static final String authenticationRequiredResult = "login";
    private Set excludeActions = Collections.EMPTY_SET;

    public String getAuthenticationSessionField() {
        return userSessionField;
    }

    public void setAuthenticationSessionField(String authenticationSessionField) {
        this.userSessionField = authenticationSessionField;
    }

    public Set getExcludeActions() {
        return excludeActions;
    }

    public void setExcludeActions(String excludeActions) {
        this.excludeActions = TextParseUtil.commaDelimitedStringToSet(excludeActions);
    }

    @Override
    public String intercept(ActionInvocation ai) throws Exception {
        Map session = ai.getInvocationContext().getSession();
        String actionName = ai.getProxy().getActionName();
        
        Object userObj = session.get(userSessionField);

        if (excludeActions.contains(actionName) || (userObj != null && userObj instanceof User)) {
            if (ai.getAction() instanceof UserAware) {
                UserAware action = (UserAware) ai.getAction();
                action.setUserModel((User) userObj);
            }

            return ai.invoke();
        }

        return authenticationRequiredResult;
    }

}
