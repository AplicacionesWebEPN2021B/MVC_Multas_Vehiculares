package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.dao.VehiculoDAO;

/**
 * Servlet implementation class EliminarVehiculoController
 */
@WebServlet("/EliminarVehiculoController")
public class EliminarVehiculoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public EliminarVehiculoController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int idVehiculo = Integer.parseInt(request.getParameter("idVehiculo"));
		VehiculoDAO.eliminar(idVehiculo);
		response.sendRedirect("ListarVehiculosController");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
