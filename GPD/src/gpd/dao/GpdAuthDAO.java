package gpd.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import gpd.util.FabricaDeConexao;

public class GpdAuthDAO {
	private Connection conn;
	
	public GpdAuthDAO() throws GpdDAOException {
		try {
			this.conn = FabricaDeConexao.getConnection();
		} catch(Exception e) {
			throw new GpdDAOException(e.getMessage());
		}
	}
	
	public boolean autenticaUsuarioSenha(String usuario, String senha) throws GpdDAOException {
		ResultSet rs = null;
		Connection conn = null;
		PreparedStatement ps = null;
		
		try {
			conn = this.conn;
			ps = conn.prepareStatement("select adm_usuario, adm_senha from administrador where adm_usuario=? and adm_senha=?");
			
			ps.setString(1, usuario);
			ps.setString(2, senha);
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				return true;
				// break;
			}
			return false;
			
		} catch(SQLException sqle) {
			throw new GpdDAOException(sqle);
		} finally {
			FabricaDeConexao.closeConnection(conn, ps, rs);
		}
	}
	
	public String getNomeCompleto(String usuario) throws GpdDAOException {
		ResultSet rs = null;
		Connection conn = null;
		PreparedStatement ps = null;
		
		try {
			conn = this.conn;
			ps = conn.prepareStatement("select adm_nome from administrador where adm_usuario=?");
			ps.setString(1, usuario);
			rs = ps.executeQuery();
			while(rs.next()) {
				return rs.getString("adm_nome");
			}
			
			return "";
		} catch(SQLException sqle) {
			throw new GpdDAOException(sqle);
		} finally {
			FabricaDeConexao.closeConnection(conn, ps, rs);
		}
	}
}