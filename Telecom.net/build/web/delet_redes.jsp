<%-- 
    Author     : Mateus Gimenes 11221103419
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.*" import="java.lang.*" import="java.sql.*" %>
<%@page import="Classe.Redes" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <title>TELECOM.nets</title>
        
          <style>
            
            .botao{
                 margin: 10px 0;
                font-size: 16px;
                font-weight: 700;
                line-height: 19px;
                background-color: #6a80ff;
                color:white;

            }
            
            .contai {           
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                overflow: hidden;
            }
              </style>
    </head>
    <body class="contai">
          
          
          
        <h1>Deletar Rede</h1>
        
      
        <%
           
            String id = request.getParameter("id"); 

                            
            try{
                Class.forName("com.mysql.cj.jdbc.Driver"); 
                String url = "jdbc:mysql://localhost:3306/telecom"; 
                Connection conexao = DriverManager.getConnection(url, "root", "");           

                Statement stmt = conexao.createStatement(); 
                
             
                String sql = "DELETE FROM redes WHERE id = " + id;            
                
            
                int i = stmt.executeUpdate(sql);
                
                if (i>0){
                    out.println("<br> Registro excluido com sucesso!");                    
                }else{
                    out.println("<br> Erro na instrução!");
                }
                stmt.close();
                
            } catch (Exception ex) {
                out.println("<br> Erro:" + ex);
            }
        %>   
        <br><br>
        <button class="botao" onclick="document.location='index.html'"> Início</button>
    </body>
</html>
