

<%@page import="java.lang.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form>
        <%
            Integer count= (Integer)application.getAttribute("hitcounter");
            if(count ==null||count==0)
            {
                out.println("Welcome to my website");
                count=1;
            }
            else
            {
                out.println("Welcome back to my website");
                count=count+1;
            }
            application.setAttribute("hitcounter", count);
         %>
         <p>you are visitor number:<%=count%>
          </form>
    </body>
</html>
