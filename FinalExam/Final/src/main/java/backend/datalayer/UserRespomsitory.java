package backend.datalayer;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import com.vti.Utils.JdbcUltils;

import entity.Manager;
import entity.Project;
import entity.User;

public class UserRespomsitory {

	JdbcUltils jdbcUltils;
	Connection connection;

	public UserRespomsitory() throws FileNotFoundException, ClassNotFoundException, IOException, SQLException {
		jdbcUltils = new JdbcUltils();
		connection = jdbcUltils.connect();

	}

	List<User> users = new ArrayList<User>();

	public User getUserbyProjectId(int id) {
		
		try { 
			connection = jdbcUltils.connect();
			String sql = " SELECT * " + " FROM `User` " + " WHERE ProjectID = ? ";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, id);
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				int userId = resultSet.getInt("UserID");
				String fullName = resultSet.getString("FullName");
				String email = resultSet.getString("Email");
				String password = resultSet.getString("Password");
				User user = new User();
				return user;
			}
		}
		return null;
		} final{
			connection.close();
		}
		
		
	}
	
		
		

	private boolean checkExpInYear(int explnYear) {
		// TODO Auto-generated method stub
		return false;
	}

	private boolean checkEmail(String email) {
		// TODO Auto-generated method stub
		return false;
	}

	// ktra xem email có ít nhất 2 từ và chứa @
	public boolean ktraEmail(String Email) {
		boolean checkInEmail = false;

		for (int i = 0; i < Email.length(); i++) {
			if (Email.charAt(i) == '@') {
				checkInEmail = true;
			}
		}
		if (Email.length() >= 2 && checkInEmail) {
			return true;
		} else {
			return false;
		}
	}

	public void login() throws SQLException {
		Scanner scanner = new Scanner(System.in);
		String email = "";
		while (true) {
			System.out.println("Mời bạn nhập Email:");
			email = scanner.nextLine();
			if (ktraEmail(email)) {
				break;
			}
		}
		String password = "";
		while (true) {
			System.out.println("Mời bạn nhập password:");
			password = scanner.nextLine();
			if (ktraPassword(password)) {
				break;
			}
		}
		
		for (User user : users) {
			if (user.getEmail().equals(email) && user.getPassWord().equals(password)) {
				System.out.println("login thành công");
				return;
			}
		}
		System.out.println("login thất bại!");
	}

	// ktra xem passw có 1 chữ viết hoa và 6->12 kí tự
	public boolean ktraPassword(String Password) {
		boolean checkPassword = false;
		// so sánh từng chữ trong Password xem có chữ nào
		// viết hoa hay không
		for (int i = 0; i < Password.length(); i++) {
			if (Password.charAt(i) >= 'A' && Password.charAt(i) <= 'Z') {
				checkPassword = true;
			}
		}
		if (Password.length() >= 6 && Password.length() <= 12 && checkPassword) {
			return true;
		} else {
			return false;
		}
	}

}
