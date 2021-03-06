/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mantechhelpdesk.entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;

/**
 *
 * @author tinblanc
 */
@Embeddable
public class ComplaintsTechnicalsPK implements Serializable {
    @Basic(optional = false)
    @NotNull
    @Column(name = "complaint_id")
    private int complaintId;
    @Basic(optional = false)
    @NotNull
    @Column(name = "technical_id")
    private int technicalId;

    public ComplaintsTechnicalsPK() {
    }

    public ComplaintsTechnicalsPK(int complaintId, int technicalId) {
        this.complaintId = complaintId;
        this.technicalId = technicalId;
    }

    public int getComplaintId() {
        return complaintId;
    }

    public void setComplaintId(int complaintId) {
        this.complaintId = complaintId;
    }

    public int getTechnicalId() {
        return technicalId;
    }

    public void setTechnicalId(int technicalId) {
        this.technicalId = technicalId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) complaintId;
        hash += (int) technicalId;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ComplaintsTechnicalsPK)) {
            return false;
        }
        ComplaintsTechnicalsPK other = (ComplaintsTechnicalsPK) object;
        if (this.complaintId != other.complaintId) {
            return false;
        }
        if (this.technicalId != other.technicalId) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.mantechhelpdesk.entity.ComplaintsTechnicalsPK[ complaintId=" + complaintId + ", technicalId=" + technicalId + " ]";
    }
    
}
