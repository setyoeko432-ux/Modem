package javax.servlet.http;

import java.io.IOException;
import java.io.PrintWriter;

public interface HttpServletResponse {
    void addHeader(String name, String value);
    void setContentType(String type);
    void setStatus(int status);
    PrintWriter getWriter() throws IOException;
}
