package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import bean.Admit;
import bean.ExpressMan;
import bean.PackageState;
import bean.Packages;

import service.AdmitService;

@Controller
public class AdmitController extends BaseController {
	
	@Autowired
	 private AdmitService admitService;
	
	//管理员查询包裹
	@RequestMapping(value="/adminselectpackage")
	public String doSelectPackage(String account,Integer no,String state,Model model,HttpServletRequest request) throws Exception{
		Admit admit=admitService.selectAdmit(account);	
		if(admit==null) {
			request.setAttribute("msg", "你不是管理员，无法使用该功能");
		}else {
			Integer state1=null;
			if(state.equals("未发送")) {
				state1=1;
			}else if(state.equals("运输中")) {
				state1=2;
			}else if(state.equals("已签收")) {
				state1=3;
			}else if(state.equals("已到达")) {
				state1=4;
			}		
			List<Packages> list=new ArrayList<>();
			if(no!=null && state1==null ) {
				Packages packages=admitService.selectPackages1(no);
				list.add(packages);
				model.addAttribute("list2",list);
			}else if(no==null && state1!=null) {
				list=admitService.selectPackages(state1);
				model.addAttribute("list2", list);
			}else if(no!=null && state1!=null) {
				Packages packages=admitService.selectPackages1(no);
				List<Packages> list1=admitService.selectPackages(state1);
				for(Packages obj : list1) {
					if(obj.equals(packages)) {
						list.add(obj);
						model.addAttribute("list2", list);
						break;
					}
				}
			}else {
				request.setAttribute("msg", "请输入查询条件");
			}					
		}
		return "admin/query_package";
	}
	
	//添加快递员
	@RequestMapping(value="/addcourier")
	public String addCourier(String account,String name,String no,int sex,String date,
			String mobile, String email,String IDcard,String birthday, String state,int salary, String nativePlace,String homePlace,HttpServletRequest request) throws Exception{
		//设置默认密码
		Admit admit=admitService.selectAdmit(account);
		if(admit==null) {
			request.setAttribute("msg", "你不是管理员，无法使用该功能");
		}else {
			String password="123456";
			int type=1;
			if(no.equals("")) {
				request.setAttribute("msg", "请输入编号");
			}else if(name.equals("")) {
				request.setAttribute("msg", "请输入姓名");
			}else {
				ExpressMan expressMan=new ExpressMan(no,name,sex,mobile,email,IDcard,birthday,state,password,date,salary,nativePlace,homePlace,type);
				int i=admitService.insertExpressMan(expressMan);
				if(i!=0) {
					request.setAttribute("msg", "添加成功");
				}else {
					request.setAttribute("msg", "请完善信息");
				}
			}
		}
		return "admin/add_courier";
	}
	
		//查找快递员
	    @RequestMapping(value="/selectcourier")
		public String selectCourier(String account,String no,HttpSession session,HttpServletRequest request) throws Exception{
	    	Admit admit=admitService.selectAdmit(account);
	    	if(admit==null) {
	    		request.setAttribute("msg", "你不是管理员，无法使用该功能");
	    	}else {
		    	if(no==null) {
		    		request.setAttribute("msg", "请输入编号");
		    	}else {
		    		ExpressMan expressMan=admitService.selectExpressMan(no);
		    		session.setAttribute("expressman",expressMan);	    		
		    	}
	    	}
			return "admin/query_courier";
		}
	    
	    //快递员详情
	    @RequestMapping(value="/courier_info")
		public String courierInfo() {			
			return "admin/courier_info";
		}
	    
	    //重置快递员密码
	    @RequestMapping(value="/updatepassword")
	    public String updatePassword(HttpServletRequest request,String no,Model model) throws Exception{	    	
	    		int i=admitService.updatePassword(no);
	    		if(i!=0) {
	    			request.setAttribute("msg", "重置成功");
	    		}else {
	    			request.setAttribute("msg", "重置失败");
	    		}
	    	return "admin/query_courier";
	    }
	    
	    //删除快递员
	    @RequestMapping(value="/dodelete")
	    public String deleteCourier(String no,HttpServletRequest request) throws Exception{
	    	int i=admitService.deleteExpressMan(no);
	    	if(i!=0) {
	    		request.setAttribute("msg", "删除成功");
	    	}else {
	    		request.setAttribute("msg", "删除失败");
	    	}
	    		    	
	    	return "admin/query_courier";
	    }
	    
	    //包裹详情
	    @RequestMapping(value="/admin_package_info")
	    public String packageInfo(Integer no,HttpServletRequest request,Model model) throws Exception{
	    	if(no==null) {
				request.setAttribute("msg", "请输入编号");
			}else {
				List<PackageState> list=admitService.selectPackageState(no);			
				if(list==null) {
					request.setAttribute("msg", "该包裹不存在");
				}else {
					model.addAttribute("list2",list);
					model.addAttribute("no2",no);
				}
			}
	    	return "admin/package_info";
	    }
	    
	    @RequestMapping(value="/deletepackage")
	    public String deletePackage(int no,HttpServletRequest request) throws Exception{
	    	int i=admitService.deletePackage(no);
	    	if(i!=0) {
	    		request.setAttribute("msg", "删除成功");
	    	}else {
	    		request.setAttribute("msg", "删除失败");
	    	}	    		    	
	    	return "admin/query_package";
	    }

}
