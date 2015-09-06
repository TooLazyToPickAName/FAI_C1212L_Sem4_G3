package com.mantechhelpdesk.common;

/**
 *
 * @author windluffy
 */
public class StatusType {

    public final static int PENDING = 0;
    public final static int PROGRESSING = 1;
    public final static int REJECTED = 2;
    public final static int CLOSED = 3;

    public static String getTitle(int statusId) {
        switch (statusId) {
            case StatusType.PENDING:
                return "pending";
            case StatusType.PROGRESSING:
                return "progressing";
            case StatusType.REJECTED:
                return "rejected";
            case StatusType.CLOSED:
                return "closed";
            default:
                return null;
        }
    }
}
