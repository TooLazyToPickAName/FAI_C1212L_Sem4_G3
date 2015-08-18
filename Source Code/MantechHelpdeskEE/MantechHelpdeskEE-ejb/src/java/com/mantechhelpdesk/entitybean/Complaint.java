/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mantechhelpdesk.entitybean;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author windluffy
 */
@Entity
@Table(name = "complaint")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Complaint.findAll", query = "SELECT c FROM Complaint c"),
    @NamedQuery(name = "Complaint.findById", query = "SELECT c FROM Complaint c WHERE c.id = :id"),
    @NamedQuery(name = "Complaint.findByTitle", query = "SELECT c FROM Complaint c WHERE c.title = :title"),
    @NamedQuery(name = "Complaint.findByDateRegister", query = "SELECT c FROM Complaint c WHERE c.dateRegister = :dateRegister"),
    @NamedQuery(name = "Complaint.findByDateClose", query = "SELECT c FROM Complaint c WHERE c.dateClose = :dateClose"),
    @NamedQuery(name = "Complaint.findByTimeTaken", query = "SELECT c FROM Complaint c WHERE c.timeTaken = :timeTaken"),
    @NamedQuery(name = "Complaint.findByStatus", query = "SELECT c FROM Complaint c WHERE c.status = :status"),
    @NamedQuery(name = "Complaint.findByPriority", query = "SELECT c FROM Complaint c WHERE c.priority = :priority")})
public class Complaint implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Size(max = 200)
    @Column(name = "title")
    private String title;
    @Basic(optional = false)
    @NotNull
    @Column(name = "date_register")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateRegister;
    @Column(name = "date_close")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateClose;
    @Column(name = "time_taken")
    private Integer timeTaken;
    @Basic(optional = false)
    @NotNull
    @Column(name = "status")
    private int status;
    @Basic(optional = false)
    @NotNull
    @Column(name = "priority")
    private int priority;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "complaint")
    private List<Complaintstechnicals> complaintstechnicalsList;
    @JoinColumn(name = "department_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Department departmentId;
    @JoinColumn(name = "category_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Category categoryId;
    @JoinColumn(name = "employee_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private User employeeId;

    public Complaint() {
    }

    public Complaint(Integer id) {
        this.id = id;
    }

    public Complaint(Integer id, Date dateRegister, int status, int priority) {
        this.id = id;
        this.dateRegister = dateRegister;
        this.status = status;
        this.priority = priority;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getDateRegister() {
        return dateRegister;
    }

    public void setDateRegister(Date dateRegister) {
        this.dateRegister = dateRegister;
    }

    public Date getDateClose() {
        return dateClose;
    }

    public void setDateClose(Date dateClose) {
        this.dateClose = dateClose;
    }

    public Integer getTimeTaken() {
        return timeTaken;
    }

    public void setTimeTaken(Integer timeTaken) {
        this.timeTaken = timeTaken;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getPriority() {
        return priority;
    }

    public void setPriority(int priority) {
        this.priority = priority;
    }

    @XmlTransient
    public List<Complaintstechnicals> getComplaintstechnicalsList() {
        return complaintstechnicalsList;
    }

    public void setComplaintstechnicalsList(List<Complaintstechnicals> complaintstechnicalsList) {
        this.complaintstechnicalsList = complaintstechnicalsList;
    }

    public Department getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(Department departmentId) {
        this.departmentId = departmentId;
    }

    public Category getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Category categoryId) {
        this.categoryId = categoryId;
    }

    public User getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(User employeeId) {
        this.employeeId = employeeId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Complaint)) {
            return false;
        }
        Complaint other = (Complaint) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.mantechhelpdesk.entitybean.Complaint[ id=" + id + " ]";
    }
    
}
