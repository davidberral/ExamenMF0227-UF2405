
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.AsesorDAOMySQL"%>
<%@page import="dao.AsesorDAO"%>
<%@page import="modelo.Asesor"%>
<%@page import="java.util.List" %>
<jsp:include page="/plantillas/cabecera.jsp"></jsp:include>

<h1>Listado de Asesores</h1>
<% 

AsesorDAO asesorDAO = new AsesorDAOMySQL();
List<Asesor> lista = asesorDAO.getListaAsesores();

   if (lista==null) {
%>
<h2>No hay datos de asesores registrados</h2>
<% } else {%>
<table class="estilo-tabla">
	<tr>
		<th>DNI</th>
		<th>Nombre</th>
		<th>Apellidos</th>
		<th>Tipo Contrato</th>
		<th>Coche</th>
		<th>Hogar</th>
		<th>Decesos</th>
		<th>Num. Ventas promedio</th>
	</tr>
	<% 
		for (Asesor a:lista) {
			%>
			<tr>
				<td><%=a.getDni() %></td>
				<td><%=a.getNombre() %></td>
				<td><%=a.getApellidos() %></td>
				<td><%=a.getContrato() %></td>
				<td><input type="checkbox" <% if (a.isCoche()) { %> checked <% }%>></td>
				<td><input type="checkbox" <% if (a.isHogar()) { %> checked <% }%>></td>
				<td><input type="checkbox" <% if (a.isDecesos()) { %> checked <% }%>></td>
				<td><%=a.getNumVentas() %></td>
			</tr>
			<%
		}
}
	%>
	
</table>


<jsp:include page="/plantillas/pie.jsp"></jsp:include>