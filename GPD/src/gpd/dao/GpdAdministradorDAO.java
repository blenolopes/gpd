package gpd.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import gpd.bean.Administrador;
import gpd.util.FabricaDeConexao;

public class GpdAdministradorDAO {
	private Connection conn;
	
	public GpdAdministradorDAO() throws GpdDAOException {
		try {
			this.conn = FabricaDeConexao.getConnection();
		} catch(Exception e) {
			throw new GpdDAOException(e.getMessage());
		}
	}
	
	public void incluirAdministrador(Administrador administrador) throws GpdDAOException {
		Connection conn = null;
		PreparedStatement ps = null;
		
		if(administrador == null) {
			throw new GpdDAOException("GpdAdministradorDAO:001> Valor nulo!");
		}
		
		try {
			String SQL = "insert into administrador (adm_nome, adm_email, adm_usuario, adm_senha) VALUES (?, ?, ?, ?)";
			
			conn = this.conn;
			ps = conn.prepareStatement(SQL);
			ps.setString(1, administrador.getNome());
			ps.setString(2, administrador.getEmail());
			ps.setString(3, administrador.getUsuario());
			ps.setString(4, administrador.getSenha());
			ps.executeUpdate();
		} catch(SQLException sqle) {
			throw new GpdDAOException(sqle);
		} finally {
			FabricaDeConexao.closeConnection(conn, ps);
		}
	}
	
	public boolean checaUsuario(String usuario) throws GpdDAOException {
		ResultSet rs = null;
		Connection conn = null;
		PreparedStatement ps = null;
		
		try {
			String SQL = "select adm_usuario from administrador where adm_usuario=?";
			
			conn = this.conn;
			ps = conn.prepareStatement(SQL);
			ps.setString(1, usuario);
			
			rs = ps.executeQuery();
			while(rs.next()) {
				return true;
			}
			
			return false;
			
		} catch(SQLException sqle) {
			throw new GpdDAOException(sqle);
		} finally {
			FabricaDeConexao.closeConnection(conn, ps, rs);
		}
	}
}