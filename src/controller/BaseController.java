package controller;


import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

public abstract class BaseController {
	
	//ͳһ�쳣����
	public String exception(HttpServletRequest request,Exception ex) {
		request.setAttribute("ex", ex);
		//���ݲ�ͬ����ת��ͬҳ��
		if(ex instanceof SQLException) {
			return "exception/sql-error";
		}else {
			return "exception/error";
		}
	}

}
