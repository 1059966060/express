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
	
	//����Ա��ѯ����
	@RequestMapping(value="/adminselectpackage")
	public String doSelectPackage(String account,Integer no,String state,Model model,HttpServletRequest request) throws Exception{
		Admit admit=admitService.selectAdmit(account);	
		if(admit==null) {
			request.setAttribute("msg", "�㲻�ǹ���Ա���޷�ʹ�øù���");
		}else {
			Integer state1=null;
			if(state.equals("δ����")) {
				state1=1;
			}else if(state.equals("������")) {
				state1=2;
			}else if(state.equals("��ǩ��")) {
				state1=3;
			}else if(state.equals("�ѵ���")) {
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
				request.setAttribute("msg", "�������ѯ����");
			}					
		}
		return "admin/query_package";
	}
	
	//��ӿ��Ա
	@RequestMapping(value="/addcourier")
	public String addCourier(String account,String name,String no,int sex,String date,
			String mobile, String email,String IDcard,String birthday, String state,int salary, String nativePlace,String homePlace,HttpServletRequest request) throws Exception{
		//����Ĭ������
		Admit admit=admitService.selectAdmit(account);
		if(admit==null) {
			request.setAttribute("msg", "�㲻�ǹ���Ա���޷�ʹ�øù���");
		}else {
			String password="123456";
			int type=1;
			if(no.equals("")) {
				request.setAttribute("msg", "��������");
			}else if(name.equals("")) {
				request.setAttribute("msg", "����������");
			}else {
				ExpressMan expressMan=new ExpressMan(no,name,sex,mobile,email,IDcard,birthday,state,password,date,salary,nativePlace,homePlace,type);
				int i=admitService.insertExpressMan(expressMan);
				if(i!=0) {
					request.setAttribute("msg", "��ӳɹ�");
				}else {
					request.setAttribute("msg", "��������Ϣ");
				}
			}
		}
		return "admin/add_courier";
	}
	
		//���ҿ��Ա
	    @RequestMapping(value="/selectcourier")
		public String selectCourier(String account,String no,HttpSession session,HttpServletRequest request) throws Exception{
	    	Admit admit=admitService.selectAdmit(account);
	    	if(admit==null) {
	    		request.setAttribute("msg", "�㲻�ǹ���Ա���޷�ʹ�øù���");
	    	}else {
		    	if(no==null) {
		    		request.setAttribute("msg", "��������");
		    	}else {
		    		ExpressMan expressMan=admitService.selectExpressMan(no);
		    		session.setAttribute("expressman",expressMan);	    		
		    	}
	    	}
			return "admin/query_courier";
		}
	    
	    //���Ա����
	    @RequestMapping(value="/courier_info")
		public String courierInfo() {			
			return "admin/courier_info";
		}
	    
	    //���ÿ��Ա����
	    @RequestMapping(value="/updatepassword")
	    public String updatePassword(HttpServletRequest request,String no,Model model) throws Exception{	    	
	    		int i=admitService.updatePassword(no);
	    		if(i!=0) {
	    			request.setAttribute("msg", "���óɹ�");
	    		}else {
	    			request.setAttribute("msg", "����ʧ��");
	    		}
	    	return "admin/query_courier";
	    }
	    
	    //ɾ�����Ա
	    @RequestMapping(value="/dodelete")
	    public String deleteCourier(String no,HttpServletRequest request) throws Exception{
	    	int i=admitService.deleteExpressMan(no);
	    	if(i!=0) {
	    		request.setAttribute("msg", "ɾ���ɹ�");
	    	}else {
	    		request.setAttribute("msg", "ɾ��ʧ��");
	    	}
	    		    	
	    	return "admin/query_courier";
	    }
	    
	    //��������
	    @RequestMapping(value="/admin_package_info")
	    public String packageInfo(Integer no,HttpServletRequest request,Model model) throws Exception{
	    	if(no==null) {
				request.setAttribute("msg", "��������");
			}else {
				List<PackageState> list=admitService.selectPackageState(no);			
				if(list==null) {
					request.setAttribute("msg", "�ð���������");
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
	    		request.setAttribute("msg", "ɾ���ɹ�");
	    	}else {
	    		request.setAttribute("msg", "ɾ��ʧ��");
	    	}	    		    	
	    	return "admin/query_package";
	    }

}
