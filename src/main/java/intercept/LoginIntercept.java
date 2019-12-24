package intercept;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class LoginIntercept extends MethodFilterInterceptor {
	protected String doIntercept(ActionInvocation arg0) throws Exception {
		
		//�ж�session�����Ƿ���username��ֵ
		//�õ�session
		HttpServletRequest request = ServletActionContext.getRequest();
		String username = (String) request.getSession().getAttribute("userName");
		System.out.println(username);
		
		//�ж�
		if(username != null && !username.equals("")) {
			//��½״̬
			//ִ�����Ʒ��еĲ���
			return arg0.invoke();
		} else {
			//���ǵ�½״̬
			//���ص�¼���棬����ֵΪlogin
			return "login";
		}
		
	}
	
}
