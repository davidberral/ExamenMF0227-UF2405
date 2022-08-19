<%@page import="java.util.List"%>
<%@page import="dao.AsesorDAOMySQL"%>
<%@page import="dao.AsesorDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="modelo.Asesor"%>
<jsp:include page="plantillas/cabecera.jsp"></jsp:include>

<%
	String nombre = request.getParameter("nombre");
	String apellidos = request.getParameter("apellidos");
	String dni = request.getParameter("dni");
	String contrato = request.getParameter("contrato");
	String seguro = request.getParameter("seguro");
	
	boolean coche=false, hogar=false, decesos = false;
	if (seguro.equals("automovil")) {
		coche=true;
	}
	if (seguro.equals("hogar")) {
		hogar=true;
	}
	if (seguro.equals("decesos")) {
		decesos=true;
	}
	int promedio = Integer.parseInt(request.getParameter("promedio"));
	Asesor a = new Asesor(dni,nombre,apellidos, contrato,
			   coche, hogar, decesos, promedio);
	
	AsesorDAO asesorDAO = new AsesorDAOMySQL();
	asesorDAO.insertarAsesor(a);

%>

	<ul>
		<li>Nombre:  <%=nombre %> </li>
		<li>Apellidos: <%=apellidos %></li>
		<li>Dni: <%=dni %></li>
		<li>Relación contractual: <%=contrato %></li>
		<li>Tipo de seguro que vende: <%=seguro %></li>
		<li>Num. ventas promedio: <%=promedio %></li>
	</ul>

<a href="index.jsp">Volver</a>

<jsp:include page="plantillas/pie.jsp"></jsp:include>