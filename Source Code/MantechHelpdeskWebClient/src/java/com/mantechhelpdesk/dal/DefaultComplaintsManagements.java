/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mantechhelpdesk.dal;

import com.mantechhelpdesk.entity.Complaint;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author windluffy
 */
public class DefaultComplaintsManagements implements IComplaintsManagement {

    /**
     * *
     * Get all complaints from db
     *
     * @return List complaints
     */
    @Override
    public List<Complaint> getAllComplaints() {
        List<Complaint> ret = new ArrayList<>();
        DataConnection db = new DataConnection();

        Connection conn = db.getConnection();

        try {
            Statement cmd = conn.createStatement();
            String query = "SELECT * FROM Complaint";
            ResultSet rs = cmd.executeQuery(query);

            while (rs.next()) {
                ret.add(this.createComplaintObj(rs));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DefaultComplaintsManagements.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
        }
        return ret;
    }

    
    /***
     * Get Complaint Obj base on Id
     * @param id complaint
     * @return Complaint Object
     */
    @Override
    public Complaint getComplaintById(int id) {
        DataConnection db = new DataConnection();
        Connection conn = db.getConnection();

        String query = "SELECT * FROM Complaint WHERE id = ?";
        ResultSet rs = null;
        try {
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                return this.createComplaintObj(rs);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DefaultComplaintsManagements.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    private Complaint createComplaintObj(ResultSet rs) {
        Complaint obj = new Complaint();
        try {
            obj.setId(rs.getInt("id"));
            obj.setTitle(rs.getString("title"));
            obj.setCategoryId(rs.getInt("category_id"));
            obj.setDateCreated(rs.getDate("date_register"));
            obj.setDateClosed(rs.getDate("date_closed"));
            obj.setTimeTaken(rs.getInt("time_time"));
            obj.setEmployeeId(rs.getInt("employee_id"));
            obj.setStatus(rs.getInt("status"));
            obj.setPriority(rs.getInt("priority"));
        } catch (SQLException ex) {
            Logger.getLogger(DefaultComplaintsManagements.class.getName()).log(Level.SEVERE, null, ex);
        }
        return obj;
    }

}
