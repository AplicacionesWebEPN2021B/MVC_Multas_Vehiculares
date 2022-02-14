package modelo.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import modelo.conexion.ConexionBDD;
import modelo.entidades.*;

public class PersonaDAO {
		//C
		private static final String SQL_SELECT_USUARIO_WHERE_PASSWORD="SELECT * FROM PERSONA WHERE usuario=? AND password=?";
		
		
		public static boolean autenticar(String usuario, String password) {
			Persona p = null;
			
			ResultSet rs = null;
			PreparedStatement pstmt =null;
			try {
				pstmt = ConexionBDD.getConexion().prepareStatement(SQL_SELECT_USUARIO_WHERE_PASSWORD);
				pstmt.setString(1, usuario);
				pstmt.setString(2, password);
				rs = pstmt.executeQuery();
				if(rs != null) return true;
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			return false;
		}
}
