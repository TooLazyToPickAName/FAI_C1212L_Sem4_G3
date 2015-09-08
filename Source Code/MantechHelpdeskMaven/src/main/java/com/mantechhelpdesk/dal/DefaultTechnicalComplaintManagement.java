/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mantechhelpdesk.dal;

import com.mantechhelpdesk.common.RoleType;
import com.mantechhelpdesk.common.StatusType;
import com.mantechhelpdesk.entity.Complaint;
import com.mantechhelpdesk.entity.Technical;
import java.sql.Connection;
import java.sql.PreparedStatement;
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
public class DefaultTechnicalComplaintManagement implements ITechnicalComplaintManagement {

    public PreparedStatement ps = null;
    public ResultSet rs = null;

    /**
     * *
     * Get all TechnicalComplaint order by number of technical 's progressing
     * complaints in ascending
     *
     * @return
     */
    @Override
    public List<Technical> getAllTechnicalComplaints() {
        List<Technical> ret = new ArrayList<>();

        DataConnection db = new DataConnection();
        Connection conn = db.getConnection();
        try {
            Statement cmd = conn.createStatement();
            String query = "SELECT DISTINCT\n"
                    + "	t.*, IFNULL(core.numberProgressing, 0) as numberProgressing\n"
                    + "FROM\n"
                    + "	USER t\n"
                    + "LEFT JOIN (\n"
                    + "	SELECT\n"
                    + "		technical_id,\n"
                    + "		COUNT(complaint_id) AS numberProgressing\n"
                    + "	FROM\n"
                    + "		complaintstechnicals ct\n"
                    + "	INNER JOIN complaint ON id = complaint_id\n"
                    + "	WHERE\n"
                    + "		`status` = 1\n"
                    + "	GROUP BY\n"
                    + "		(technical_id)\n"
                    + ") AS core ON core.technical_id = t.id\n"
                    + "WHERE\n"
                    + "	t.role_id = " + RoleType.TECHNICAL + "\n"
                    + "ORDER BY numberProgressing ASC";
            rs = cmd.executeQuery(query);

            while (rs.next()) {
                Technical tc = new Technical();
                tc.setId(rs.getInt("id"));
                tc.setUsername(rs.getString("username"));
                tc.setFullname(rs.getString("fullname"));
                tc.setNumberProgressing(rs.getInt("numberProgressing"));
                ret.add(tc);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DefaultComplaintsManagements.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                conn.close();
            } catch (SQLException ex) {
                Logger.getLogger(DefaultTechnicalComplaintManagement.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return ret;

    }

    @Override
    public List<Technical> searchTechnicals(String keyword) {
        List<Technical> ret = new ArrayList<>();

        DataConnection db = new DataConnection();
        Connection conn = db.getConnection();
        try {
            String query
                    = "SELECT DISTINCT\n"
                    + "	t.*, IFNULL(core.numberProgressing, 0) as numberProgressing\n"
                    + "FROM\n"
                    + "	USER t\n"
                    + "LEFT JOIN (\n"
                    + "	SELECT\n"
                    + "		technical_id,\n"
                    + "		COUNT(complaint_id) AS numberProgressing\n"
                    + "	FROM\n"
                    + "		complaintstechnicals ct\n"
                    + "	INNER JOIN complaint ON id = complaint_id\n"
                    + "	WHERE\n"
                    + "		`status` = 1\n"
                    + "	GROUP BY\n"
                    + "		(technical_id)\n"
                    + ") AS core ON core.technical_id = t.id\n"
                    + "WHERE\n"
                    + "	t.role_id = " + RoleType.TECHNICAL + "\n"
                    + "	AND \n"
                    + "	 (t.id LIKE ?  OR t.username LIKE ? OR t.fullname LIKE ? OR t.phone_number LIKE ? OR t.email LIKE ?)\n"
                    + "ORDER BY numberProgressing ASC";

            ps = conn.prepareStatement(query);
            //set params
            for (int i = 1; i <= 5; i++) {
                ps.setString(i, "%" + keyword + "%");
            }

            rs = ps.executeQuery();

            while (rs.next()) {
                Technical tc = new Technical();
                tc.setId(rs.getInt("id"));
                tc.setUsername(rs.getString("username"));
                tc.setFullname(rs.getString("fullname"));
                tc.setNumberProgressing(rs.getInt("numberProgressing"));
                ret.add(tc);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DefaultComplaintsManagements.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                conn.close();
            } catch (SQLException ex) {
                Logger.getLogger(DefaultTechnicalComplaintManagement.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return ret;
    }

    private boolean saveComplaint(Complaint c) {
        DataConnection db = new DataConnection();
        Connection conn = db.getConnection();
        int affectedRow = -1;

        try {
            String query = "UPDATE Complaint SET priority = ?, status = ? WHERE id = ?";

            ps = conn.prepareStatement(query);
            ps.setInt(1, c.getPriority());
            ps.setInt(3, c.getId());
            ps.setInt(2, c.getStatus() == StatusType.PROGRESSING ? StatusType.PROGRESSING : StatusType.PENDING);

            affectedRow = ps.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(DefaultComplaintsManagements.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                conn.close();
            } catch (SQLException ex) {
                Logger.getLogger(DefaultTechnicalComplaintManagement.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return affectedRow > 0;
    }

    private boolean assignTechnicalJob(List<Technical> technicals, Complaint complaint) {
        DataConnection db = new DataConnection();
        Connection conn = db.getConnection();
        int affectedRow = -1;
        try {
            String query = "insert into ComplaintsTechnicals(complaint_id, technical_id, date_created) values \n";
            String valQuery = "(#1, #2, default)";
            StringBuilder valsQuery = new StringBuilder();
            for (int i = 0; i < technicals.size(); i++) {
                String passedStr = valQuery.replace("#1", complaint.getId() + "").replace("#2", technicals.get(i).getId() + "");

                valsQuery.append(passedStr);
                if (i != technicals.size() - 1) {
                    valsQuery.append(",");
                }
            }
            query += valsQuery.toString();
            ps = conn.prepareStatement(query);

            affectedRow = ps.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(DefaultComplaintsManagements.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                conn.close();
            } catch (SQLException ex) {
                Logger.getLogger(DefaultTechnicalComplaintManagement.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return affectedRow > 0;
    }

    @Override
    public boolean assignAndSaveTechnicalsJob(List<Technical> technicals, Complaint complaint) {
        boolean bSaveComplaint = this.saveComplaint(complaint);
        boolean bSaveAssignTechnicalsJob = technicals.size() > 0 ? this.assignTechnicalJob(technicals, complaint) : true;
        return bSaveAssignTechnicalsJob && bSaveComplaint;
    }

    @Override
    public boolean closeComplaint(int complaintId) {
        DataConnection db = new DataConnection();
        Connection conn = db.getConnection();
        int affectedRow = -1;

        try {
            String query = "UPDATE Complaint SET status = ?, date_close = current_timestamp, notes = 'Success' WHERE id = ?";

            ps = conn.prepareStatement(query);
            ps.setInt(1, StatusType.CLOSED);
            ps.setInt(2, complaintId);
            affectedRow = ps.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(DefaultComplaintsManagements.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                conn.close();
            } catch (SQLException ex) {
                Logger.getLogger(DefaultTechnicalComplaintManagement.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return affectedRow > 0;
    }

    @Override
    public boolean rejectComplaint(int complaintId, String notes) {
        DataConnection db = new DataConnection();
        Connection conn = db.getConnection();
        int affectedRow = -1;

        try {
            String query = "UPDATE Complaint SET status = ?, notes = ?, date_close = current_timestamp WHERE id = ?";

            ps = conn.prepareStatement(query);
            ps = conn.prepareStatement(query);
            ps.setInt(1, StatusType.REJECTED);
            ps.setString(2, notes);
            ps.setInt(3, complaintId);

            affectedRow = ps.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(DefaultComplaintsManagements.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                conn.close();
            } catch (SQLException ex) {
                Logger.getLogger(DefaultTechnicalComplaintManagement.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return affectedRow > 0;
    }

}
