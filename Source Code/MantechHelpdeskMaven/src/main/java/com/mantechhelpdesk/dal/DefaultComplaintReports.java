/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mantechhelpdesk.dal;

import com.mantechhelpdesk.common.StatusType;
import com.mantechhelpdesk.entity.SummaryComplaintReports;
import com.mantechhelpdesk.entity.Technical;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author windluffy
 */
public class DefaultComplaintReports implements IComplaintReports {

    @Override
    public SummaryComplaintReports getSummaryComplaintReports() {
        SummaryComplaintReports ret = null;

        DataConnection db = new DataConnection();
        Connection conn = db.getConnection();
        try {
            String query
                    = "SELECT 'Total' AS TypeReport, COUNT(cTotal.id) AS Count FROM complaint cTotal\n"
                    + "UNION ALL\n"
                    + "SELECT 'Pending' AS TypeReport, COUNT(cPending.id) AS Count FROM complaint cPending WHERE cPending.`status` = " + StatusType.PENDING + "\n"
                    + "UNION ALL\n"
                    + "SELECT 'Progressing' AS TypeReport, COUNT(cProgressing.id) AS Count FROM complaint cProgressing WHERE cProgressing.`status` = " + StatusType.PROGRESSING + "\n"
                    + "UNION ALL\n"
                    + "SELECT 'Closed' AS TypeReport, COUNT(cClosed.id) AS Count FROM complaint cClosed WHERE cClosed.`status` = " + StatusType.CLOSED + "\n"
                    + "UNION ALL\n"
                    + "SELECT 'Rejected' AS TypeReport, COUNT(cRejected.id) AS Count FROM complaint cRejected WHERE cRejected.`status` = " + StatusType.REJECTED + "\n";

            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            ret = new SummaryComplaintReports();
            while(rs.next()) {
                ret.setValueBaseOnTypeReport(rs.getString("TypeReport"), rs.getInt("Count"));
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

}
