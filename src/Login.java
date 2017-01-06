import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/Demo")
public class Login extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html ; charset=windows-874");
        String str = request.getParameter("user");
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE HTML PUBLIC \"- //W3C//DTD HTML 4.0 Transitional//EN\">");
        out.print("<HTML>\n");
        out.print("<HEAD><TITLE>HTML Document</TITLE></HEAD>\n");
        out.print("<BODY>");
        out.print("<P>ยินดีต้อนรับสู่การใช้งานเซิร์ฟเล็ต</P>");
        out.print(str);
        out.print("<P>Welcome! to Java Servlet</P>");
        out.print("</BODY>");
        out.print("</HTML>\n");

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        out.print("Hello Servlet doPost");
    }
}
