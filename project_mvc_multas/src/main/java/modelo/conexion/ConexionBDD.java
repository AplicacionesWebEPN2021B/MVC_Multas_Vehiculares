package modelo.conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ConexionBDD {
	private static ConexionBDD conexionClass = null;
	private static Connection instancia = null;
	
	private ConexionBDD() {
		try {
		if(instancia == null) {
			String servidor = "localhost";
			String database = "mvc";
			String usuario = "root";
			String clave = "mysql2022";
			String url = "jdbc:mysql://" + servidor + "/" + database;
			
				DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
			
			instancia = DriverManager.getConnection(url, usuario, clave);
			System.out.println("Conexion realizada");
		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static Connection getConexion() {
		if(conexionClass == null) {
			conexionClass = new ConexionBDD();
		}
		return instancia;
	}
	
	public static void cerrar (ResultSet rs) {
		try {
			rs.close();
		}catch (SQLException e) {
			rs = null;
		}
		
	}
	
	public static void cerrar (PreparedStatement pstmt) {
		try {
			pstmt.close();
		}catch (SQLException e) {
			e.printStackTrace();
		}
		pstmt = null;
	}
	
}
