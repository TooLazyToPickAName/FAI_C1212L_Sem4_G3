/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mantechhelpdesk.entity;

/**
 *
 * @author windluffy
 */
public class SummaryComplaintReports {

    private final String TOTAL = "total";
    private final String PENDING = "pending";
    private final String PROGRESSING = "progressing";
    private final String CLOSED = "closed";
    private final String REJECTED = "rejected";

    private int total;
    private int countPending;
    private int countProgressing;
    private int countClosed;
    private int countRejected;

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public int getCountPending() {
        return countPending;
    }

    public void setCountPending(int countPending) {
        this.countPending = countPending;
    }

    public int getCountProgressing() {
        return countProgressing;
    }

    public void setCountProgressing(int countProgressing) {
        this.countProgressing = countProgressing;
    }

    public int getCountClosed() {
        return countClosed;
    }

    public void setCountClosed(int countClosed) {
        this.countClosed = countClosed;
    }

    public int getCountRejected() {
        return countRejected;
    }

    public void setCountRejected(int countRejected) {
        this.countRejected = countRejected;
    }

    public boolean setValueBaseOnTypeReport(String typeReport, Object value) {
        boolean isSuccess = true;
        switch (typeReport.toLowerCase()) {
            case TOTAL:
                this.setTotal((int) value);
                break;
            case PENDING:
                this.setCountPending((int) value);
                break;
            case PROGRESSING:
                this.setCountProgressing((int) value);
                break;
            case CLOSED:
                this.setCountClosed((int) value);
                break;
            case REJECTED:
                this.setCountRejected((int) value);
                break;
            default:
                isSuccess = false;
                break;
        }
        
        return isSuccess;
    }

    public SummaryComplaintReports() {
    }

}
