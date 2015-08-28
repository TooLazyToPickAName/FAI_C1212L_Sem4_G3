package com.mantechhelpdesk.dal;

import com.mantechhelpdesk.entity.Complaint;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import com.mantechhelpdesk.common.*;
import com.mantechhelpdesk.entity.Category;
import com.mantechhelpdesk.entity.Department;

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
            String query = "select \n"
                    + "	c.*, \n"
                    + "	d.title as departmentName,\n"
                    + "	cg.title as categoryName\n"
                    + "from complaint c \n"
                    + "	inner join department d on c.department_id = d.id\n"
                    + "	inner join category cg on c.category_id = cg.id\n"
                    + "order by c.date_register desc";
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
    public List<Category> getAllCategory() {
        List<Category> listCategory = new ArrayList<>();
        DataConnection db = new DataConnection();

        Connection conn = db.getConnection();
        try {

            Statement cmd = conn.createStatement();
            String query = "select * from Category";
            rs = cmd.executeQuery(query);

            while (rs.next()) {
                Category c = new Category();
                c.setId(rs.getInt("id"));
                c.setTitle(rs.getString("title"));
                c.setDescription(rs.getString("description"));
                listCategory.add(c);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DefaultComplaintsManagements.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listCategory;
    }
    
    @Override
    public List<Department> getAllDepartment(){
        List<Department> listDepartment = new ArrayList<>();
        DataConnection db = new DataConnection();
        
        Connection conn = db.getConnection();
        
        
        try {
            Statement cmd= conn.createStatement();
            String query = "select * from Department";
            rs = cmd.executeQuery(query);
            
            while(rs.next()){
                Department d = new Department();
                d.setId(rs.getInt("id"));
                d.setTitle(rs.getString("title"));
                d.setDescription(rs.getString("description"));
                listDepartment.add(d);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DefaultComplaintsManagements.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listDepartment;
    }

    @Override
    public boolean createComplaint(Complaint c) {

        try {
            DataConnection db = new DataConnection();
            Connection conn = db.getConnection();
            String str = "INSERT INTO Complaint(title, category_id , department_id, time_taken, employee_id) VALUES (?, ?, ?, ?, ?)";

            ps = conn.prepareStatement(str);
            ps.setString(1, c.getTitle());
            ps.setInt(2, 3);
            ps.setInt(3, 1);
            ps.setInt(4, 2);
            ps.setInt(5, 3);

            int executeUpdate = ps.executeUpdate();
            if (executeUpdate > 0) {
                check = true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DefaultComplaintsManagements.class.getName()).log(Level.SEVERE, null, ex);
        }
        return check;
    }

    /**
     * *
     * Get Complaint Obj base on Id
     *
     * @param id complaint
     * @return Complaint Object
     */
    @Override
    public Complaint getComplaintById(int id) {
        DataConnection db = new DataConnection();
        Connection conn = db.getConnection();

        String query = "select \n"
                + "	c.*, \n"
                + "	d.title as departmentName,\n"
                + "	cg.title as categoryName\n"
                + "from complaint c \n"
                + "	inner join department d on c.department_id = d.id\n"
                + "	inner join category cg on c.category_id = cg.id\n"
                + "where c.id = ? \n"
                + "order by c.date_register desc";
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
            obj.setDateRegister(rs.getDate("date_register"));
            obj.setDateClose(rs.getDate("date_close"));
            obj.setTimeTaken(rs.getInt("time_taken"));
            obj.setEmployeeId(rs.getInt("employee_id"));
            obj.setStatus(rs.getInt("status"));
            obj.setPriority(rs.getInt("priority"));
            obj.setStatusName(StatusType.getTitle(rs.getInt("status")));
            obj.setPriorityName(PriorityType.getTitle(rs.getInt("priority")));
            obj.setDepartmentName(rs.getString("departmentName"));
            obj.setCategoryName(rs.getString("categoryName"));

        } catch (SQLException ex) {
            Logger.getLogger(DefaultComplaintsManagements.class.getName()).log(Level.SEVERE, null, ex);
        }
        return obj;
    }

}
