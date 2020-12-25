package frontend;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.SQLException;

import com.vti.Utils.JdbcUltils;

import backend.datalayer.UserRespomsitory;


public class Run {

	public static void main(String[] args) throws FileNotFoundException, ClassNotFoundException, IOException, SQLException {
		// TODO Auto-generated method stub

		JdbcUltils jdbcUltils = new JdbcUltils();
		jdbcUltils.connect();
		System.out.println("Connect Success!");
	
		UserRespomsitory responsitory = new UserRespomsitory();
		responsitory.login();
	
	}

}
