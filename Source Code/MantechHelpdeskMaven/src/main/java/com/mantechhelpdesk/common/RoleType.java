package com.mantechhelpdesk.common;

/**
 *
 * @author windluffy
 */
public class RoleType {
    public static final int ADMINISTRATOR = 0;
    public static final int EMPLOYEE = 2;
    public static final int TECHNICAL = 1;
    
    public static String getTitle(int roleId) {
        switch(roleId) {
            case ADMINISTRATOR:
                return "administrator";
            case EMPLOYEE:
                return "employee";
            case TECHNICAL:
                return "technical";
            default:
                return null;
        }
    }
}
