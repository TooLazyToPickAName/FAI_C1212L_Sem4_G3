/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mantechhelpdesk.entitybean;

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
 * @author windluffy
 */
@Entity
@Table(name = "complaintstechnicals")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Complaintstechnicals.findAll", query = "SELECT c FROM Complaintstechnicals c"),
    @NamedQuery(name = "Complaintstechnicals.findByComplaintId", query = "SELECT c FROM Complaintstechnicals c WHERE c.complaintstechnicalsPK.complaintId = :complaintId"),
    @NamedQuery(name = "Complaintstechnicals.findByTechnicalId", query = "SELECT c FROM Complaintstechnicals c WHERE c.complaintstechnicalsPK.technicalId = :technicalId"),
    @NamedQuery(name = "Complaintstechnicals.findByDateCreated", query = "SELECT c FROM Complaintstechnicals c WHERE c.dateCreated = :dateCreated")})
public class Complaintstechnicals implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected ComplaintstechnicalsPK complaintstechnicalsPK;
    @Column(name = "date_created")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateCreated;
    @JoinColumn(name = "technical_id", referencedColumnName = "id", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private User user;
    @JoinColumn(name = "complaint_id", referencedColumnName = "id", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Complaint complaint;

    public Complaintstechnicals() {
    }

    public Complaintstechnicals(ComplaintstechnicalsPK complaintstechnicalsPK) {
        this.complaintstechnicalsPK = complaintstechnicalsPK;
    }

    public Complaintstechnicals(int complaintId, int technicalId) {
        this.complaintstechnicalsPK = new ComplaintstechnicalsPK(complaintId, technicalId);
    }

    public ComplaintstechnicalsPK getComplaintstechnicalsPK() {
        return complaintstechnicalsPK;
    }

    public void setComplaintstechnicalsPK(ComplaintstechnicalsPK complaintstechnicalsPK) {
        this.complaintstechnicalsPK = complaintstechnicalsPK;
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
        hash += (complaintstechnicalsPK != null ? complaintstechnicalsPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Complaintstechnicals)) {
            return false;
        }
        Complaintstechnicals other = (Complaintstechnicals) object;
        if ((this.complaintstechnicalsPK == null && other.complaintstechnicalsPK != null) || (this.complaintstechnicalsPK != null && !this.complaintstechnicalsPK.equals(other.complaintstechnicalsPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.mantechhelpdesk.entitybean.Complaintstechnicals[ complaintstechnicalsPK=" + complaintstechnicalsPK + " ]";
    }
    
}
