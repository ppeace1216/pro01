package pro01.test;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Logger;

import org.junit.Test;


public class OracleBoardTest {
    private final static Logger log = Logger.getGlobal();
    private static final String DRIVER = "oracle.jdbc.OracleDriver";
    private static final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
    private static final String USER = "system";
    private static final String PW = "1234";
    
	@Test
	public void connectTest() throws ClassNotFoundException {
		Class.forName(DRIVER);
		
		String sql = "select * from membera";
		try(
			Connection con = DriverManager.getConnection(URL,USER,PW);
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			) {
			
			assertNotNull(con);
			log.info("conn : " + con);
			log.info("pstmt : " + pstmt);
			
			while(rs.next()) {
				log.info(rs.getString("id"));
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}