package interceptor;
import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
public class LoginInterceptor implements HandlerInterceptor{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//��ȡ�����URL
		String url = request.getRequestURI();
		//login.jsp���¼������У�������
		if(url.indexOf("/login") >= 0 || url.indexOf("/dologin")>=0) {
			return true;
		}
		//��ȡSession
		HttpSession session = request.getSession();
		Object obj = session.getAttribute("admin");
		Object obj2=session.getAttribute("expressMan");
		if(obj != null || obj2!=null)
			return true;
		//û�е�¼�Ҳ��ǵ�¼ҳ�棬ת������¼ҳ�棬��������ʾ������Ϣ
		request.setAttribute("msg", "��û��¼�����ȵ�¼��");
		request.getRequestDispatcher("login").forward(request, response);
		return false;
	}
}
