package intercept;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class AnnounIntercept extends MethodFilterInterceptor {
	protected String doIntercept(ActionInvocation arg0) throws Exception {
		
		//�ж�session�����¼�û��ĵȼ��Ƿ���1
		//�õ�session
		HttpServletRequest request = ServletActionContext.getRequest();
		String usertype = (String) request.getSession().getAttribute("userType");
		System.out.println(usertype);
		//�ж�
		if(usertype != null && usertype.equals("1")) {
			//��½״̬�ҵ�½�ȼ�Ϊ1
			//ִ�����Ʒ��еĲ���
			return arg0.invoke();
		}
		else {
			request.getSession().setAttribute("error","����Ȩ�޲�����");
			return "getAll";
		} 
	}
}
