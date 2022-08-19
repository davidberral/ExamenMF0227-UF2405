<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="plantillas/cabecera.jsp"></jsp:include>

<div class="fondo">
    <h1>Alta de asesor de seguros</h1>
    <form action="detallesAsesor.jsp" method="post">
        <div>
            <label for="nombre" class="etiqueta">Nombre<sub>*:</sub>
             </label>
             <input type="text" name="nombre" id="nombre" required>
        </div>
        <div>
            <label for="apellidos" class="etiqueta">Apellidos<sub>*:</sub>
            </label>
            <input type="text" name="apellidos" id="apellidos" required>
        </div>
        <div>
            <label for="dni" class="etiqueta">DNI<sub>*:</sub>
            </label>
            <input type="text" name="dni" id="dni" 
                   pattern="[0-9]{1,8}[A-Za-z]{1}" required>
        </div>
        <div>
            <label for="contrato" class="etiqueta">Relación contractual</label>
            <select name="contrato" id="contrato">
                <option value="Autonomo">Autónomo</option>
                <option value="Asalariado fijo">Asalariado fijo</option>
                <option value="Asalariado A Comisión">Asalariado a comisión</option>
            </select>
        </div>
        <div>
            <label for="seguro" class="etiqueta">Tipo de seguros que vende:</label>
            <input type="radio" name="seguro" id="automovil" 
                   value="automovil" checked>
            <label for="automovil" class="etiqueta">Automóvil</label>
            
            <input type="radio" name="seguro" id="hogar" 
                   value="hogar">
            <label for="hogar" class="etiqueta">Hogar</label>
           
            <input type="radio" name="seguro" id="decesos" 
                   value="decesos">
            <label for="decesos" class="etiqueta">Decesos</label>
        </div>  
        <div>
            <label for="promedio" class="etiqueta">
                Num. Ventas Promedio</label>
            <input type="number" name="promedio" id="promedio" 
                value="15" min="1" step="1">
        </div>  
        <input type="submit" value="Confirmar">
    </form>
</div>

<jsp:include page="plantillas/pie.jsp"></jsp:include>