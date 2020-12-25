package frontend;

import java.io.IOException;
import java.sql.SQLException;

import com.vti.ultis.JdbcUtils;

import backend.DepartmentDao;
import entity.Department;

public class Run {

	private static JdbcUtils jdbcUtils;
	public static void main(String[] args) throws IOException, ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub

//		JdbcUtils jdbcUtils = new JdbcUtils();  
//		jdbcUtils.connectForTesting();
	
		DepartmentDao departmentDao = new DepartmentDao();
//		departmentDao.getDepartments();
		
//		System.out.println(departmentDao.searchById(5));
//		System.out.println(departmentDao.searchByName("Sale"));
//		departmentDao.createDepartment("Sale1");
//		departmentDao.updateDepartmentName(1, "234");
		
		departmentDao.deleteDepartment(5, "Kỹ thuật");
		
	}

}
