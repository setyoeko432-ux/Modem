package javax.servlet.http;

import javax.servlet.ServletRequest;

public interface HttpServletRequest extends ServletRequest {
    String getContentType();
    String getHeader(String name);
}
