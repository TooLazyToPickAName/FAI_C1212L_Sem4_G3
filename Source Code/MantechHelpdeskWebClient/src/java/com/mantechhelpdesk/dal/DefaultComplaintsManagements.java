
package com.mantechhelpdesk.dal;

import com.mantechhelpdesk.entity.Complaint;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


public class DefaultComplaintsManagements implements IComplaintsManagement {

    /**
     * *
     * Get all complaints from db
     *
     * @return List complaints
     */
    
    public static PreparedStatement ps = null;
    public static ResultSet rs = null;
    private boolean check = false;
    
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
    
    @Override
    public boolean createComplaint(Complaint c){
        
        try {
            DataConnection db = new DataConnection();
            Connection conn = db.getConnection();
            String str="INSERT INTO Complaint(title, category_id , department_id, time_taken, employee_id) VALUES (?, ?, ?, ?, ?)";
            
            ps = conn.prepareStatement(str);
            ps.setString(1, c.getTitle());
            ps.setInt(2, 3); 
            ps.setInt(3, 1);
            ps.setInt(4, 2);
            ps.setInt(5, 3);
            
            int executeUpdate = ps.executeUpdate();
            if(executeUpdate>0){
                check=true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DefaultComplaintsManagements.class.getName()).log(Level.SEVERE, null, ex);
        }
        return check;
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
