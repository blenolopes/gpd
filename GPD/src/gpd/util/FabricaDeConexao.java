package gpd.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import gpd.dao.GpdDAOException;

public class FabricaDeConexao {	
	private static void close(Connection conn, Statement stmt, ResultSet rs) throws GpdDAOException {
		try {
			if(rs   != null) rs.close();
			if(stmt != null) stmt.close();
			if(rs   != null) rs.close();
		} catch(Exception e) {
			throw new GpdDAOException(e.getMessage());
		}
	}
	
	
	public static Connection getConnection() throws GpdDAOException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://mysql.esparta.bin/gpd", "gpd", "gpd");
		} catch(Exception e) {
			throw new GpdDAOException(e.getMessage());
		}
	}
	
	public static void closeConnection(Connection conn) throws GpdDAOException {
		close(conn, null, null);
	}

	public static void closeConnection(Connection conn, Statement stmt) throws GpdDAOException {
		close(conn, stmt, null);
	}
	
	public static void closeConnection(Connection conn, Statement stmt, ResultSet rs) throws GpdDAOException {
		close(conn, stmt, rs);
	}

}

