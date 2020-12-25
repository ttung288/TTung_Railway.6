package backend;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.vti.ultis.JdbcUtils;

import entity.Department;

public class DepartmentDao {

	public static List<Department> getDepartments() throws IOException, ClassNotFoundException, SQLException {

		List<Department> listDepartment = new ArrayList<Department>();
		JdbcUtils jdbcUtills = new JdbcUtils();
		Connection connection = jdbcUtills.connect();
		Statement statement = connection.createStatement();

		String querry = "SELECT * FROM department";
		ResultSet resultSet = statement.executeQuery(querry);

		while (resultSet.next()) {

			listDepartment.add(new Department(resultSet.getInt("DepartmentID"), resultSet.getString("DepartmentName")));

		}

//		System.out.println(listDepartment);
		return listDepartment;

	}

	public Department searchById(int id) throws ClassNotFoundException, IOException, SQLException {
		List<Department> listDepartment = new ArrayList<Department>();
		listDepartment = getDepartments();
		boolean timthayDepartment = false;
		for (Department department : listDepartment) {
			if (department.getId() == id) {
				timthayDepartment = true;
				return department;
			}

		}
		if (!timthayDepartment) {
			System.out.println("Not Found");
		}

		return null;

	}

	public Department searchByName(String name) throws ClassNotFoundException, IOException, SQLException {
		List<Department> listDepartment = new ArrayList<Department>();
		listDepartment = getDepartments();
		boolean timthayDepartmentName = false;
		for (Department department : listDepartment) {
			if (department.getName().equals(name)) {
				timthayDepartmentName = true;
				return department;
			}
//			String querry = "UPDATE department" + "SET `DepartmentName` = 1234" + "Where DepartmentID = 5";
		}
		if (!timthayDepartmentName) {
			System.out.println("Not Found");
		}

		return null;

	}

	public void createDepartment(String name) throws IOException, ClassNotFoundException, SQLException {
		JdbcUtils jdbcUtills = new JdbcUtils();
		Connection connection = jdbcUtills.connect();
		Statement statement = connection.createStatement();

		if (searchByName(name) == null) {
			String querry = "	INSERT INTO Department(DepartmentName) " + "VALUES ('" + name + "')";
			System.out.println(statement.executeUpdate(querry));
		} else {
			System.out.println("Insert Fail!!!");
		}
	}

	public void updateDepartmentName(int id, String name) throws IOException, ClassNotFoundException, SQLException {
		JdbcUtils jdbcUtills = new JdbcUtils();
		Connection connection = jdbcUtills.connect();
		Statement statement = connection.createStatement();

		if (searchById(id) == null) {
			System.out.println("Không có id!");
		} else if (searchByName(name) != null) {
			System.out.println("Tên đã tồn tại");
		} else {
			String querry = "UPDATE department SET `DepartmentName` = '" + name + "'  Where DepartmentID = " + id;
			statement.executeUpdate(querry);
			System.out.println("department sau up date" + searchById(id));
		}
	}
	
	public void deleteDepartment(int id, String name) throws IOException, ClassNotFoundException, SQLException {
		JdbcUtils jdbcUtills = new JdbcUtils();
		Connection connection = jdbcUtills.connect();
		Statement statement = connection.createStatement();

		if (searchById(id) == null) {
			System.out.println("Không có id!");
		} else if (searchByName(name) != null) {
			System.out.println("Tên đã tồn tại");
		} else {
			String querry = "UPDATE department SET `DepartmentName` = '" + name + "'  Where DepartmentID = " + id;
			statement.executeUpdate(querry);
			System.out.println("department bị xóa :" + searchById(id));
		}
	}
	
	

}
