package pf.integrador.java;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySqlConexion {
	
	private static final String CONTROLADOR = "com.mysql.cj.jdbc.Driver";
	private static final String URL = "jdbc:mysql://localhost:3306/trabajo_integrador";
	private static final String USER = "root";
	private static final String PASS = "Karamello$";
	
	static {
		try {
			Class.forName(CONTROLADOR);
			//System.out.println("Se cargó el controlador correctamente");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("Se generó un error al cargar el controlador");
			e.printStackTrace();
		}
	}
	
	public static Connection conectar( ) {
		
		Connection conexion = null;
		
		try {
			conexion = DriverManager.getConnection(URL, USER, PASS);
			//System.out.println("Conexión con la DB existosa");
		}catch(SQLException e) {
			System.out.println("Error al hacer a conexión con la DB");
			e.printStackTrace();
		}
		return conexion;
	}
}
