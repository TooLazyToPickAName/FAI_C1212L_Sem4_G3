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
import com.mantechhelpdesk.entity.User;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

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
            String query = "select \n"
                    + "	c.*, \n"
                    + "	d.title as departmentName,\n"
                    + "	cg.title as categoryName\n"
                    + "from complaint c \n"
                    + "	inner join department d on c.department_id = d.id\n"
                    + "	inner join category cg on c.category_id = cg.id\n"
                    + "order by c.id desc";
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
    public List<User> getAllTechnical() {
        List<User> listUser = new ArrayList<>();
        DataConnection db = new DataConnection();
        Connection conn = db.getConnection();
        User user = null;

        try {
            Statement cmd = conn.createStatement();
            String query = "select \n"
                    + "	u.*,\n"
                    + "    d.title as departmentName\n"
                    + "from user u \n"
                    + "	left join Department d on u.department_id = d.id\n"
                    + "where u.role_id = " + RoleType.TECHNICAL;
            ResultSet rs = cmd.executeQuery(query);

            while (rs.next()) {
                user = new User();
                user.setId(rs.getInt("id"));
                user.setUsername(rs.getString("username"));
                user.setFullname(rs.getString("fullname"));
                user.setDateOfBirth(rs.getDate("date_of_birth"));
                user.setPhoneNumber(rs.getString("phone_number"));
                user.setDepartmentId(rs.getInt("department_id"));
                user.setEmail(rs.getString("email"));
                user.setRoleId(rs.getInt("role_id"));
                user.setRoleName(RoleType.getTitle(user.getRoleId()));
                user.setDepartmentName(rs.getString("departmentName"));
                user.setImgAvatar(rs.getString("img_avatar"));

                listUser.add(user);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DefaultComplaintsManagements.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
        }
        return listUser;
    }

    @Override
    public List<Complaint> getAllComplaintsByEmployeeId(int employeeId) {
        List<Complaint> ret = new ArrayList<>();
        DataConnection db = new DataConnection();
        Connection conn = db.getConnection();

        String query = "select \n"
                + "	c.*, \n"
                + "	d.title as departmentName,\n"
                + "	cg.title as categoryName\n"
                + "from complaint c \n"
                + "	inner join department d on c.department_id = d.id\n"
                + "	inner join category cg on c.category_id = cg.id\n"
                + "where c.employee_id = ? \n"
                + "order by c.date_register desc";
        ResultSet rs = null;
        try {
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, employeeId);
            rs = ps.executeQuery();
            while (rs.next()) {
                ret.add(this.createComplaintObj(rs));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DefaultComplaintsManagements.class.getName()).log(Level.SEVERE, null, ex);
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
            ResultSet rs = cmd.executeQuery(query);

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
    public List<Department> getAllDepartment() {
        List<Department> listDepartment = new ArrayList<>();
        DataConnection db = new DataConnection();

        Connection conn = db.getConnection();

        try {
            Statement cmd = conn.createStatement();
            String query = "select * from Department";
            ResultSet rs = cmd.executeQuery(query);

            while (rs.next()) {
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
        boolean check = false;
        try {
            DataConnection db = new DataConnection();
            Connection conn = db.getConnection();

            String str = "INSERT INTO Complaint(category_id, title, description, date_close, department_id, time_taken, employee_id, status, priority) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

            PreparedStatement ps = conn.prepareStatement(str);
            ps.setInt(1, c.getCategoryId());
            ps.setString(2, c.getTitle());
            ps.setString(3, c.getDescription());
            ps.setDate(4, null);
            ps.setInt(5, c.getDepartmentId());
            ps.setInt(6, c.getTimeTaken());
            ps.setInt(7, c.getEmployeeId());
            ps.setInt(8, c.getStatus());
            //ps.setInt(9, c.getPriority());
            ps.setInt(9, PriorityType.NORMAL);

            int executeUpdate = ps.executeUpdate();
            if (executeUpdate > 0) {
                check = true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DefaultComplaintsManagements.class.getName()).log(Level.SEVERE, null, ex);
        }
        return check;
    }

    @Override
    public boolean createAccount(User u) {
        boolean check = false;
        try {
            DataConnection db = new DataConnection();
            Connection conn = db.getConnection();
            String str = "INSERT INTO User(username, password, fullname, department_id, date_of_birth, phone_number, email, role_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

            PreparedStatement ps = conn.prepareStatement(str);
            ps.setString(1, u.getUsername());
            ps.setString(2, u.getPassword());
            ps.setString(3, u.getFullname());
            ps.setString(4, u.getDepartmentId() == null ? null : u.getDepartmentId().toString());
            ps.setDate(5, new Date(u.getDateOfBirth().getTime()));
            ps.setString(6, u.getPhoneNumber());
            ps.setString(7, u.getEmail());
            ps.setInt(8, u.getRoleId());

            int executeUpdate = ps.executeUpdate();
            if (executeUpdate > 0) {
                check = true;
            }

        } catch (SQLException ex) {
            Logger.getLogger(DefaultComplaintsManagements.class.getName()).log(Level.SEVERE, null, ex);
        }
        return check;
    }

    @Override
    public boolean changePassword(String username, String oldPassword, String newPassword) {
        boolean check = false;
        try {
            DataConnection db = new DataConnection();
            Connection conn = db.getConnection();
            String str = "UPDATE User u SET u.password = ? WHERE u.username = ? and u.password = ?";

            PreparedStatement ps = conn.prepareStatement(str);
            ps.setString(1, newPassword);
            ps.setString(2, username);
            ps.setString(3, oldPassword);

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

    @Override
    public List<Complaint> getPendingComplaints() {
        DataConnection db = new DataConnection();
        Connection conn = db.getConnection();
        List<Complaint> ret = new ArrayList<>();

        Statement cmd;
        try {
            cmd = conn.createStatement();
            String query = "select \n"
                    + "	c.*, \n"
                    + "	d.title as departmentName,\n"
                    + "	cg.title as categoryName\n"
                    + "from complaint c \n"
                    + "	inner join department d on c.department_id = d.id\n"
                    + "	inner join category cg on c.category_id = cg.id\n"
                    + "where c.status = 0 \n"
                    + "order by c.priority asc";
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
    public List<Complaint> getProcessingComplaints() {
        DataConnection db = new DataConnection();
        Connection conn = db.getConnection();
        List<Complaint> ret = new ArrayList<>();

        Statement cmd;
        try {
            cmd = conn.createStatement();
            String query = "select \n"
                    + "	c.*, \n"
                    + "	d.title as departmentName,\n"
                    + "	cg.title as categoryName\n"
                    + "from complaint c \n"
                    + "	inner join department d on c.department_id = d.id\n"
                    + "	inner join category cg on c.category_id = cg.id\n"
                    + "where c.status = 1 \n"
                    + "order by c.priority asc";
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
    public List<Complaint> getRejectedComplaints() {
        DataConnection db = new DataConnection();
        Connection conn = db.getConnection();
        List<Complaint> ret = new ArrayList<>();

        Statement cmd;
        try {
            cmd = conn.createStatement();
            String query = "select \n"
                    + "	c.*, \n"
                    + "	d.title as departmentName,\n"
                    + "	cg.title as categoryName\n"
                    + "from complaint c \n"
                    + "	inner join department d on c.department_id = d.id\n"
                    + "	inner join category cg on c.category_id = cg.id\n"
                    + "where c.status = 2 \n"
                    + "order by c.priority asc";
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
    public List<Complaint> getClosedComplaints() {
        DataConnection db = new DataConnection();
        Connection conn = db.getConnection();
        List<Complaint> ret = new ArrayList<>();

        Statement cmd;
        try {
            cmd = conn.createStatement();
            String query = "select \n"
                    + "	c.*, \n"
                    + "	d.title as departmentName,\n"
                    + "	cg.title as categoryName\n"
                    + "from complaint c \n"
                    + "	inner join department d on c.department_id = d.id\n"
                    + "	inner join category cg on c.category_id = cg.id\n"
                    + "where c.status = 3 \n"
                    + "order by c.priority asc";
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
    public List<Complaint> historyComplaintsTechnical(int technicalId) {
        DataConnection db = new DataConnection();
        Connection conn = db.getConnection();
        List<Complaint> ret = new ArrayList<>();

        try {
            String query = "select *,ca.title as categoryName from user t \n"
                    + "inner join complaintstechnicals ct on t.id = ct.technical_id\n"
                    + "inner join complaint c on c.id = ct.complaint_id\n"
                    + "inner join category ca on ca.id = c.category_id\n"
                    + "where t.role_id = " + RoleType.TECHNICAL + " and t.id = ? and c.status = " + StatusType.CLOSED
                    + " or c.status = " + StatusType.REJECTED;
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, technicalId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Complaint obj = new Complaint();
                obj.setId(rs.getInt("complaint_id"));
                obj.setTitle(rs.getString("title"));
                obj.setCategoryId(rs.getInt("category_id"));
                obj.setDescription(rs.getString("description"));
                obj.setDateRegister(rs.getDate("date_register"));
                obj.setDateClose(rs.getDate("date_close"));
                obj.setTimeTaken(rs.getInt("time_taken"));
                obj.setEmployeeId(rs.getInt("employee_id"));
                obj.setStatus(rs.getInt("status"));
                obj.setPriority(rs.getInt("priority"));
                obj.setStatusName(StatusType.getTitle(rs.getInt("status")));
                obj.setPriorityName(PriorityType.getTitle(rs.getInt("priority")));
                obj.setNotes(rs.getString("notes"));
                obj.setCategoryName(rs.getString("categoryName"));

                ret.add(obj);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DefaultComplaintsManagements.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
        }
        return ret;
    }

    @Override
    public List<Complaint> getProcessingComplaintsTechnical(int technicalId) {
        DataConnection db = new DataConnection();
        Connection conn = db.getConnection();
        List<Complaint> ret = new ArrayList<>();

        try {
            String query = "select *,ca.title as categoryName from user t \n"
                    + "inner join complaintstechnicals ct on t.id = ct.technical_id\n"
                    + "inner join complaint c on c.id = ct.complaint_id\n"
                    + "inner join category ca on ca.id = c.category_id\n"
                    + "where t.role_id = " + RoleType.TECHNICAL + " and t.id = ? and c.status = " + StatusType.PROGRESSING;
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, technicalId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Complaint obj = new Complaint();
                obj.setId(rs.getInt("complaint_id"));
                obj.setTitle(rs.getString("title"));
                obj.setCategoryId(rs.getInt("category_id"));
                obj.setDescription(rs.getString("description"));
                obj.setDateRegister(rs.getDate("date_register"));
                obj.setDateClose(rs.getDate("date_close"));
                obj.setTimeTaken(rs.getInt("time_taken"));
                obj.setEmployeeId(rs.getInt("employee_id"));
                obj.setStatus(rs.getInt("status"));
                obj.setPriority(rs.getInt("priority"));
                obj.setStatusName(StatusType.getTitle(rs.getInt("status")));
                obj.setPriorityName(PriorityType.getTitle(rs.getInt("priority")));
                obj.setNotes(rs.getString("notes"));
                obj.setCategoryName(rs.getString("categoryName"));

                ret.add(obj);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DefaultComplaintsManagements.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
        }
        return ret;
    }

    @Override
    public boolean login(String username, String userpass) {
        DataConnection db = new DataConnection();
        Connection conn = db.getConnection();
        boolean status = false;
        User user = new User();

        String query = "select * from User where username=? and password=?";

        try {

            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, userpass);
            ResultSet rs = ps.executeQuery();
            status = rs.next();

        } catch (SQLException ex) {
            Logger.getLogger(DefaultComplaintsManagements.class.getName()).log(Level.SEVERE, null, ex);
        }
        return status;
    }

    @Override
    public List<User> getAllUser() {
        List<User> listUser = new ArrayList<>();
        DataConnection db = new DataConnection();
        Connection conn = db.getConnection();
        User user = null;

        try {
            Statement cmd = conn.createStatement();
            String query = "select \n"
                    + "	u.*,\n"
                    + "    d.title as departmentName\n"
                    + "from user u \n"
                    + "	left join Department d on u.department_id = d.id\n"
                    + " order by u.role_id asc";
            ResultSet rs = cmd.executeQuery(query);

            while (rs.next()) {
                user = new User();
                user.setId(rs.getInt("id"));
                user.setUsername(rs.getString("username"));
                user.setFullname(rs.getString("fullname"));
                user.setDateOfBirth(rs.getDate("date_of_birth"));
                user.setPhoneNumber(rs.getString("phone_number"));
                user.setDepartmentId(rs.getInt("department_id"));
                user.setEmail(rs.getString("email"));
                user.setRoleId(rs.getInt("role_id"));
                user.setRoleName(RoleType.getTitle(user.getRoleId()));
                user.setDepartmentName(rs.getString("departmentName"));

                listUser.add(user);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DefaultComplaintsManagements.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
        }
        return listUser;
    }

    @Override
    public User getUserByUsername(String username) {
        DataConnection db = new DataConnection();
        Connection conn = db.getConnection();
        User user = null;

        String query = "select \n"
                + "	u.*,\n"
                + "    d.title as departmentName\n"
                + "from user u \n"
                + "	left join Department d on u.department_id = d.id\n"
                + "where u.username = ?";

        PreparedStatement ps;
        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                user = new User();
                user.setId(rs.getInt("id"));
                user.setUsername(username);
                user.setFullname(rs.getString("fullname"));
                user.setDateOfBirth(rs.getDate("date_of_birth"));
                user.setPhoneNumber(rs.getString("phone_number"));
                user.setDepartmentId(rs.getInt("department_id"));
                user.setEmail(rs.getString("email"));
                user.setRoleId(rs.getInt("role_id"));
                user.setDepartmentName(rs.getString("departmentName"));
                user.setImgAvatar(rs.getString("img_avatar"));
                user.setPassword(rs.getString("password"));
                return user;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DefaultComplaintsManagements.class.getName()).log(Level.SEVERE, null, ex);
        }

        return user;

    }

    private Complaint createComplaintObj(ResultSet rs) {
        Complaint obj = new Complaint();
        try {
            obj.setId(rs.getInt("id"));
            obj.setTitle(rs.getString("title"));
            obj.setCategoryId(rs.getInt("category_id"));
            obj.setDescription(rs.getString("description"));
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
            obj.setNotes(rs.getString("notes"));

        } catch (SQLException ex) {
            Logger.getLogger(DefaultComplaintsManagements.class.getName()).log(Level.SEVERE, null, ex);
        }
        return obj;
    }

    @Override
    public User getUserByEmail(String email) {
        DataConnection db = new DataConnection();
        Connection conn = db.getConnection();
        User user = null;

        String query = "select \n"
                + "	u.*,\n"
                + "    d.title as departmentName\n"
                + "from user u \n"
                + "	left join Department d on u.department_id = d.id\n"
                + "where u.email = ?";

        PreparedStatement ps;
        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                user = new User();
                user.setId(rs.getInt("id"));
                user.setUsername(rs.getString("username"));
                user.setFullname(rs.getString("fullname"));
                user.setDateOfBirth(rs.getDate("date_of_birth"));
                user.setPhoneNumber(rs.getString("phone_number"));
                user.setEmail(rs.getString("email"));
                user.setRoleId(rs.getInt("role_id"));
                user.setDepartmentName(rs.getString("departmentName"));
                return user;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DefaultComplaintsManagements.class.getName()).log(Level.SEVERE, null, ex);
        }

        return user;
    }

}
