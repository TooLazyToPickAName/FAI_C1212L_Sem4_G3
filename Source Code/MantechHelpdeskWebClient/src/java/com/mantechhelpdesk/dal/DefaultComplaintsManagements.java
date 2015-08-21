/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mantechhelpdesk.dal;

import com.mantechhelpdesk.entity.Complaint;
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

    /***
     * Get all complaints from db
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
                Complaint obj = new Complaint();
                obj.setId(Integer.parseInt(rs.getString("id")));
                obj.setTitle(rs.getString("title"));
                ret.add(obj);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DefaultComplaintsManagements.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
        }
        return ret;
    }

}
