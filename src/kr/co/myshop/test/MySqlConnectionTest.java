package kr.co.myshop.test;

import static org.junit.Assert.*;

import java.sql.*;
import java.util.logging.Logger;

import org.junit.Test;
public class MySqlConnectionTest {
	private final static Logger log = Logger.getGlobal();
	private final static String DRIVER = "com.mysql.cj.jdbc.Driver";
	private final static String URL ="jdbc:mysql://localhost:3306/myshop?serverTimezone=Asia/Seoul";
	private final static String USER="root";
	private final static String PASS="a1234";
	String sql="";
	@Test
	public void ysqlConnectionTest() throws ClassNotFoundException {
		Class.forName(DRIVER);
		sql = "select now() as time";
		try(
				Connection con = DriverManager.getConnection(URL, USER, PASS);
				PreparedStatement pstmt = con.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
		){
			assertNotNull(con);
			log.info("con :" +con);
			log.info("pstmt : "+pstmt);
			rs.next();
			log.info("현재 : "+ rs.getDate("time"));
			rs.close();
			pstmt.close();
			con.close();
		} catch(Exception e){
			e.printStackTrace();
		}

	}
}
