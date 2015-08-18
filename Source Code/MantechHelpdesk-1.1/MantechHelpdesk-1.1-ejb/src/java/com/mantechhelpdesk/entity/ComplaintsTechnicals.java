/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mantechhelpdesk.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author tinblanc
 */
@Entity
@Table(name = "ComplaintsTechnicals")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ComplaintsTechnicals.findAll", query = "SELECT c FROM ComplaintsTechnicals c"),
    @NamedQuery(name = "ComplaintsTechnicals.findByComplaintId", query = "SELECT c FROM ComplaintsTechnicals c WHERE c.complaintsTechnicalsPK.complaintId = :complaintId"),
    @NamedQuery(name = "ComplaintsTechnicals.findByTechnicalId", query = "SELECT c FROM ComplaintsTechnicals c WHERE c.complaintsTechnicalsPK.technicalId = :technicalId"),
    @NamedQuery(name = "ComplaintsTechnicals.findByDateCreated", query = "SELECT c FROM ComplaintsTechnicals c WHERE c.dateCreated = :dateCreated")})
public class ComplaintsTechnicals implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected ComplaintsTechnicalsPK complaintsTechnicalsPK;
    @Column(name = "date_created")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateCreated;
    @JoinColumn(name = "technical_id", referencedColumnName = "id", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private User user;
    @JoinColumn(name = "complaint_id", referencedColumnName = "id", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Complaint complaint;

    public ComplaintsTechnicals() {
    }

    public ComplaintsTechnicals(ComplaintsTechnicalsPK complaintsTechnicalsPK) {
        this.complaintsTechnicalsPK = complaintsTechnicalsPK;
    }

    public ComplaintsTechnicals(int complaintId, int technicalId) {
        this.complaintsTechnicalsPK = new ComplaintsTechnicalsPK(complaintId, technicalId);
    }

    public ComplaintsTechnicalsPK getComplaintsTechnicalsPK() {
        return complaintsTechnicalsPK;
    }

    public void setComplaintsTechnicalsPK(ComplaintsTechnicalsPK complaintsTechnicalsPK) {
        this.complaintsTechnicalsPK = complaintsTechnicalsPK;
    }

    public Date getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Complaint getComplaint() {
        return complaint;
    }

    public void setComplaint(Complaint complaint) {
        this.complaint = complaint;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (complaintsTechnicalsPK != null ? complaintsTechnicalsPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ComplaintsTechnicals)) {
            return false;
        }
        ComplaintsTechnicals other = (ComplaintsTechnicals) object;
        if ((this.complaintsTechnicalsPK == null && other.complaintsTechnicalsPK != null) || (this.complaintsTechnicalsPK != null && !this.complaintsTechnicalsPK.equals(other.complaintsTechnicalsPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.mantechhelpdesk.entity.ComplaintsTechnicals[ complaintsTechnicalsPK=" + complaintsTechnicalsPK + " ]";
    }
    
}
