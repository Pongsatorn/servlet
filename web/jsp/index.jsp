<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
  <head>
    <title></title>
  </head>
  <body>

    <%
      out.print("Welcome to Login page");
    %>

    <br><br>

    <form action="ControllerServlet" method="post">
      Name:<input type="text" name="name"><br>
      Password:<input type="password" name="password"><br>
      <input type="submit" value="login">
    </form>




  </body>
</html>