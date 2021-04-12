<%-- 
    Document   : disciplinas
    Created on : 12 de abr. de 2021, 12:12:39
    Author     : Rodrigo
--%>

        
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% if(request.getParameter("set") != null) {
        session.setAttribute("session.name", request.getParameter("name"));
        response.sendRedirect(request.getRequestURI()); 
    } 
%>
<% 
    String errorMessage = null;
    String disciplina = null;
 
    double[][] notasProva = new double[8][2];
    
     
    try {   
        if(request.getParameter("session.p1POO") == ""){
            notasProva[0][0] = 0;
        }else{
            notasProva[0][0] = Double.parseDouble(request.getParameter("session.p1POO"));
        }
        if (request.getParameter("session.p2POO") == "") {
             notasProva[0][1] = 0;
        }else{
            notasProva[0][1] = Double.parseDouble(request.getParameter("session.n2POO"));
        }
        session.setAttribute("session.p1POO", request.getParameter("session.p1POO"));
        session.setAttribute("session.p2POO", request.getParameter("session.p2POO"));
        
    } catch (Exception ex){
        
    } try {
        if (request.getParameter("session.p1BDD") == ""){
            notasProva[1][0] = 0;
        }else{
            notasProva[1][0] = Double.parseDouble(request.getParameter("session.p1BDD"));
        }
        if (request.getParameter("session.p2BDD") == ""){
            notasProva[1][1] = 0;
        }else{
            notasProva[1][1]= Double.parseDouble(request.getParameter("session.p2BDD"));
        }
        session.setAttribute("session.p1BDD", request.getParameter("session.p1BDD"));
        session.setAttribute("session.p2BDD", request.getParameter("session.p2BDD"));
        
    } catch (Exception ex){
        
        } try {
    
        if (request.getParameter("session.p1INGIV") == ""){
           notasProva[2][0] = 0;
        }else{
           notasProva[2][0] = Double.parseDouble(request.getParameter("session.p1INGIV"));
        }
        if (request.getParameter("session.p2INGIV") == ""){
            notasProva[2][1] = 0;
        }else{
            notasProva[2][1] = Double.parseDouble(request.getParameter("session.p2INGIV"));
        }
        session.setAttribute("session.p1INGIV", request.getParameter("session.p1INGIV"));
        session.setAttribute("session.p2INGIV", request.getParameter("session.p2INGIV"));
        
    } catch (Exception ex){
        
        } try {
    
        if (request.getParameter("session.p1EDD") == ""){
            notasProva[3][0] = 0;
        }else{
            notasProva[3][0] = Double.parseDouble(request.getParameter("session.p1EDD"));
        }
        if (request.getParameter("session.p2EDD") == ""){
            notasProva[3][1] = 0;
        }else{
            notasProva[3][1] = Double.parseDouble(request.getParameter("session.n2EDD"));
        }
        session.setAttribute("session.p1EDD", request.getParameter("session.p1EDD"));
        session.setAttribute("session.p2EDD", request.getParameter("session.p2EDD"));
        
    } catch (Exception ex){
        
        } try {
    
        if (request.getParameter("session.p1SOII") == ""){
            notasProva[4][0] = 0;
        }else{
            notasProva[4][0] = Double.parseDouble(request.getParameter("session.p1SOII"));
        }
        if (request.getParameter("session.p2SOII") == ""){
            notasProva[4][1] = 0;
        }else{
            notasProva[4][1] = Double.parseDouble(request.getParameter("session.p2SOII"));
        }
        session.setAttribute("session.p1SOII", request.getParameter("session.p1SOII"));
        session.setAttribute("session.p2SOII", request.getParameter("session.p2SOII"));
        
    } catch (Exception ex){
        
        } try {
    
        if (request.getParameter("session.p1MET") == ""){
            notasProva[5][0] = 0;
        }else{
            notasProva[5][0] = Double.parseDouble(request.getParameter("session.p1MET"));
        }
        if (request.getParameter("session.p2MET") == ""){
            notasProva[5][1] = 0;
        }else{
            notasProva[5][1] = Double.parseDouble(request.getParameter("session.p2MET"));
        }
        session.setAttribute("session.p1MET", request.getParameter("session.p1MET"));
        session.setAttribute("session.p2MET", request.getParameter("session.p2MET"));
        
    } catch (Exception ex){
        
        } try {
    
        if (request.getParameter("session.p1ESIII") == ""){
            notasProva[6][0] = 0;
        }else{
            notasProva[6][0] = Double.parseDouble(request.getParameter("session.p1ESIII"));
        }
        if (request.getParameter("session.p2ESIII") == ""){
            notasProva[6][1] = 0;
        }else{
            notasProva[6][1] = Double.parseDouble(request.getParameter("session.p2ESIII"));
        }
        session.setAttribute("session.p1ESIII", request.getParameter("session.p1ESIII"));
        session.setAttribute("session.p2ESIII", request.getParameter("session.p2ESIII"));
        
    } catch (Exception ex){
        
        } try {
        if(request.getParameter("session.p1LPIV") == ""){
            notasProva[7][0] = 0;
        }else{
            notasProva[7][0] = Double.parseDouble(request.getParameter("session.p1LPIV"));
        }
        if (request.getParameter("session.p2LPIV") == "") {
            notasProva[7][1] = 0;
        }else{
            notasProva[7][1] = Double.parseDouble(request.getParameter("session.p2LPIV"));
        }
        session.setAttribute("session.p1LPIV", request.getParameter("session.p1LPIV"));
        session.setAttribute("session.p2LPIV", request.getParameter("session.p2LPIV"));
            
        } catch (Exception ex){
        
        
            
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DISCIPLINAS</title>
          
           
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <br>
        <% if(session.getAttribute("session.user") != null){ %>
        <form method="post">
            <table border="6">
                <tr>
                    <th>DISCIPLINAS</th>
                    <th>P1</th>
                    <th>P2</th>
                </tr>
                <tr>
                    <td>POO</td>
                    <td><input type="number" value="<%= session.getAttribute("session.p1POO") %>" name="session.p1POO"></td>
                    <td><input type="number" value="<%= session.getAttribute("session.p2POO") %>" name="session.p2POO"></td>
                </tr>
                <tr>
                    <td>BDD</td>
                    <td><input type="number" value="<%= session.getAttribute("session.p1BDD") %>" name="session.p1BDD"></td>
                    <td><input type="number" value="<%= session.getAttribute("session.p2BDD") %>" name="session.p2BDD"></td>
                </tr>
                <tr>
                    <td>ING IV</td>
                    <td><input type="number" value="<%= session.getAttribute("session.p1INGIV") %>" name="session.p1INGIV"></td>
                    <td><input type="number" value="<%= session.getAttribute("session.p2INGIV") %>" name="session.p2INGIV"></td>
                </tr>
                <tr>
                    <td>EDD</td>
                    <td><input type="number" value="<%= session.getAttribute("session.p1EDD") %>" name="session.p1EDD"></td>
                    <td><input type="number" value="<%= session.getAttribute("session.p2EDD") %>" name="session.p2EDD"></td>
                </tr>
                <tr>
                    <td>SOII</td>
                    <td><input type="number" value="<%= session.getAttribute("session.p1SOII") %>" name="session.p1SOII"></td>
                    <td><input type="number" value="<%= session.getAttribute("session.p2SOII") %>" name="session.p2SOII"></td>
                </tr>
                <tr>
                    <td>MET</td>
                    <td><input type="number" value="<%= session.getAttribute("session.p1MET") %>" name="session.p1MET"></td>
                    <td><input type="number" value="<%= session.getAttribute("session.p2MET") %>" name="session.p2MET"></td>
                </tr>
                <tr>
                    <td>ES III</td>
                    <td><input type="number" value="<%= session.getAttribute("session.p1ESIII") %>" name="session.p1ESIII"></td>
                    <td><input type="number" value="<%= session.getAttribute("session.p2ESIII") %>" name="session.p2ESIII"></td>
                </tr>
                <tr>
                    <td>LPIV</td>
                    <td><input type="number" value="<%= session.getAttribute("session.p1PIV") %>" name="session.p1PIV"></td>
                    <td><input type="number" value="<%= session.getAttribute("session.p2PIV") %>" name="session.p2PIV"></td>
                </tr>
              
                <tr>
            </table>
                <br><br>
                <input type="submit" name="set" value="Set">
        </form>
        <%}else{%>
        <p>Sem permissão, efetue login</p>
        <% session.invalidate(); %>
        <%}%>
    </body>
</html>