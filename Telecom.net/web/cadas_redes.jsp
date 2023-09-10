<%-- 
    Document   : cadas_redes
    Created on : 11 de jun. de 2023, 16:27:48
    Author     : Mateus Gimenes 11221103419
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.*" import="java.lang.*" import="java.sql.*" import="java.util.Date"%>
<%@page import="Classe.Redes" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TELECOM.nets</title>
    </head>
    
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
             
            }
              </style>
              <body class="contai">
       <%
         
         
           String nome_c = request.getParameter("nome_c");
           String plano = request.getParameter("plano");
           String ip = request.getParameter("ip");
           String end_c = request.getParameter("end_c");
           String contato = request.getParameter("contato_c");
           float quant_util = Float.parseFloat(request.getParameter("quant_util"));
           Date data_mensal = new SimpleDateFormat("yyy-MM-dd").parse( request.getParameter("data_mensal"));
            

           
        
          
           Redes red = new Redes(nome_c, plano, ip, end_c,contato, quant_util,data_mensal);
           
         

          
           
            String dat_mensal = new SimpleDateFormat("yyy/MM/dd").format(red.getData_mensal());


                try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                String url = "jdbc:mysql://localhost:3306/telecom"; 
                Connection conexao = DriverManager.getConnection(url, "root", "");           

                Statement stmt = conexao.createStatement();
             
                String sql = "INSERT INTO redes () VALUES ('0','" + 
         red.getNome_c()+ "','" +red.getPlano()+ "','" + red.getIp() + "','" + 
         red.getEnd_c()+"','" + red.getContato_c()+"','" + red.getQuant_util()+"','" + dat_mensal  +"')";            
          
                stmt.executeUpdate(sql);
                stmt.close();
                
                out.println("<br> O registro foi feito com sucesso!");
            } catch (Exception ex) {
                out.println("<br> Error:" + ex);
            }
        %>    
        
        <button class="botao" onclick="document.location='index.html'"> Home Page</button>
    </body>
</html>
