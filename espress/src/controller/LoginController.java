package controller;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import bean.Admit;
import bean.ExpressMan;
import service.AdmitService;
import service.ExpressManService;
@Controller
public class LoginController extends BaseController {
	@Autowired
	private AdmitService admitService;
	
	@Autowired
	private ExpressManService expressManService;
	
	@RequestMapping(value="/login")
	public String login(HttpSession session) {
		session.setAttribute("expressMan", null);
		session.setAttribute("admit", null);
		session.setAttribute("expressman",null);
		session.setAttribute("list",null);
		return "login";
	}
	
	
	//登陆功能
	@RequestMapping("/dologin")
	public String dologin(@RequestParam String account,@RequestParam String password,HttpServletRequest request,HttpSession session) throws Exception{
		Admit admit=admitService.selectAdmit(account);
		String no=account;
		ExpressMan expressMan=expressManService.selectExpressMan(no);
		if(admit==null && expressMan==null) {
			request.setAttribute("msg", "用户名不存在");
		}else if(admit!=null && !password.equals(admit.getPassword())) {
			request.setAttribute("msg", "密码错误");
		}else if(expressMan!=null && !password.equals(expressMan.getPassword())){
			request.setAttribute("msg", "密码错误");
		}else if(expressMan!=null && password.equals(expressMan.getPassword())) {
			session.setAttribute("expressMan", expressMan);
			session.setAttribute("account", no);
			request.setAttribute("msg", "登陆成功");
			return "forward:/main";
		}else if(admit!=null && password.equals(admit.getPassword())) {
			session.setAttribute("admit", admit);
			session.setAttribute("account", account);
			request.setAttribute("msg", "登陆成功");
			return "forward:/main";
		}
		
		return "forward:/login";
	}
	
	@RequestMapping("/main")
	public String main() {
		return "main";
	}
	
	@RequestMapping("/left")
	public String left() {
		return "left";
	}
	
	@RequestMapping("/top")
	public String top() {
		return "top";
	}
	
	@RequestMapping("/right")
	public String right() {
		return "right";
	}
	
	@RequestMapping("/welcome")
	public String welcome() {
		return "welcome";
	}
	
	@RequestMapping("/add_package")
	public String addPackage() {
		return "courier/add_package";
	}
	
	@RequestMapping("/package_info_track")
	public String packageInfoTrack() {
		return "courier/package_info_track";
	}
	
	@RequestMapping("/courier_query_package")
	public String quertPackage() {
		return "courier/query_package";
	}
	
	@RequestMapping("/my_info")
	public String myInfo() {
		return "courier/my_info";
	}
	
	@RequestMapping("/add_courier")
	public String addCourier() {
		return "admin/add_courier";
	}
	
	@RequestMapping("/query_courier")
	public String quertCourier() {
		return "admin/query_courier";
	}
	
	@RequestMapping("/admin_query_package")
	public String queryPackage() {
		return "admin/query_package";
	}
}
