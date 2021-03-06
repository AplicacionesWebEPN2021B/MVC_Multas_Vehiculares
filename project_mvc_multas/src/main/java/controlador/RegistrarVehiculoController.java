package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.dao.VehiculoDAO;
import modelo.entidades.Vehiculo;

/**
 * Servlet implementation class RegistrarVehiculoController
 */
@WebServlet("/RegistrarVehiculoController")
public class RegistrarVehiculoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RegistrarVehiculoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/jsp/registrarVehiculo.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1._ Obtener los parametros
		String placa =  request.getParameter("txtPlaca");
		String marca =  request.getParameter("txtMarca");
		int anio =  Integer.parseInt(request.getParameter("txtAnio"));
		String modelo =  request.getParameter("txtModelo");
		String chasis =  request.getParameter("txtChasis");
		String propietario =  request.getParameter("txtPropietario");
		
		Vehiculo v = new Vehiculo(placa,marca,anio,modelo,chasis,propietario);
		VehiculoDAO personaDAO = new VehiculoDAO();
		personaDAO.insertar(v);
		response.sendRedirect("ListarVehiculosController");
	}

}
