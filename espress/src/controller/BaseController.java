package controller;


import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

public abstract class BaseController {
	
	//统一异常处理
	public String exception(HttpServletRequest request,Exception ex) {
		request.setAttribute("ex", ex);
		//根据不同错误转向不同页面
		if(ex instanceof SQLException) {
			return "exception/sql-error";
		}else {
			return "exception/error";
		}
	}

}
