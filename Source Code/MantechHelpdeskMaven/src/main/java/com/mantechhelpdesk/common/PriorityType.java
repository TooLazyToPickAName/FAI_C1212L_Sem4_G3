package com.mantechhelpdesk.common;

/**
 *
 * @author windluffy
 */
public class PriorityType {

    public static final int HIGH = 0;
    public static final int NORMAL = 1;
    public static final int LOW = 2;

    public static String getTitle(int priorityId) {
        switch (priorityId) {
            case PriorityType.HIGH:
                return "high";
            case PriorityType.NORMAL:
                return "normal";
            case PriorityType.LOW:
                return "low";
            default:
                return null;
        }
    }
}
