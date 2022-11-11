package in.adit;

import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import in.ac.adit.model.Stu;

import java.sql.*;

public class StudentDAO {

	    private final static String URL = "jdbc:mysql://localhost:3308/student_db";
	    private final static String USERNAME = "root";
	    private final static String PASSWORD = "";

	    private Connection connection=null;
	    private PreparedStatement pstmt=null;

	    public StudentDAO() {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				connection=DriverManager.getConnection(URL,USERNAME,PASSWORD);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	    
	    public boolean deleteStu(String name) {
			try {
				pstmt=connection.prepareStatement("delete from student where name=?");
				pstmt.setNString(1, name);
				pstmt.execute();
				return true;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return false;
		}

	    public List<Stu> getAllData(String name){
			List<Stu> list=new ArrayList<Stu>();
			Stu data=null;
			
			try {
				pstmt=connection.prepareStatement("select name,email,city,dob from student where name=?");
				pstmt.setNString(1, name);
				ResultSet rs=pstmt.executeQuery();
				while(rs.next()) {
					data=new Stu();
					data.setname(rs.getString(1));
					data.setEmail(rs.getString(2));
					data.setcity(rs.getString(3));
					data.setDOB(rs.getInt(4));
					list.add(data);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return list;
		}
	    
		
		public boolean insert(Stu insert) {
			try {
				pstmt=connection.prepareStatement("insert into register (fullname,email,password) values(?,?,?)");
				pstmt.setString(1,insert.getname());
				pstmt.setString(2,insert.getEmail());
				pstmt.setString(3,insert.getPassword());
				pstmt.setString(4,insert.getcity());
				pstmt.setInt(5,insert.getDOB());
				pstmt.execute();
				return true;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return false;	
		}
		
		public boolean login(Stu Login) {
				try {
					pstmt=connection.prepareStatement("select email,password from register where email=? AND password=?");
					pstmt.setString(1,Login.getEmail());
					pstmt.setString(2,Login.getPassword());
					ResultSet rs=pstmt.executeQuery();
					if(rs.next()) {
						return true;
					}
					return false;
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return false;
			
		}

}
