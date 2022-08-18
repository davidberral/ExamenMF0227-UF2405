<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<jsp:include page="plantillas/cabecera.jsp"></jsp:include>

 <h1>Alta de asesor de seguros</h1>
    <form action="altaAsesor.jsp"method="post">
        <div>
            <label for="nombre">Nombre<sub>*</sub>:</label>
            <input type="text"name="nombre"id="nombre">
        </div>
        <div>
            <label for="apellidos">Apellidos<sub>*</sub>:</label>
            <input type="text"id="apellidos" name="apellidos">
        </div>
        <div>
            <label for="dni">DNI<sub>*</sub>:</label>
            <input type="text"id="dni" name="dni" pattern="[a-z]{1,8}">
        </div>
        <div>
            <label for="contrato">Relación Contractual</label>
            <select name="contrato" id="contrato">
                <option value="autonomo">Autónomo</option>
                <option value="fijo">Asalariado fijo</option>
                <option value="comisión">Asalariado a Comisión</option>
            </select>
        </div>
        <div>Tipo de Seguros que vende:</div>
        <div>
            <label for="automovil">Automóvil</label>
            <input type="radio"id="automovil" name="seguro" checked>

            <label for="hogar">Hogar</label>
            <input type="radio"id="hogar" name="seguro">

            <label for="decesos">Decesos</label>
            <input type="radio"id="decesos" name="seguro">
        </div>
        <div>
            <label for="promedio">Num Ventas Promedio:</label>
            <input type="number"id="promedio" name="promedio" value="15" step="1" min="1">
        </div>
        <div>
            <input type="submit" value="Confirmar">
        </div>

        

    </form>
    


<jsp:include page="plantillas/pie.jsp"></jsp:include>