package www.everytime.com.persistance;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

import lombok.extern.log4j.Log4j;

@Log4j
public class JDBCTests {
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Test
	public void testConnection() {
		try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/everytime?useSSL=false", "everytime",
				"everytime")) {
			log.info(conn);

		} catch (Exception e) {
			fail(e.getMessage());
		}

	}
}