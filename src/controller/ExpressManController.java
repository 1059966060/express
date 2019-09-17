package controller;



import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import bean.PackageState;
import bean.Packages;
import service.ExpressManService;


@Controller
public class ExpressManController extends BaseController {
	
	@Autowired
	private ExpressManService expressManService;
	
	//��Ӱ���
	@RequestMapping(value="/doinsert")
	public String doInsertPackages(String sendername,String sendermobile,String senderplace,String addrname,String addrmobile, String addrplace,String information,HttpServletRequest request) throws Exception {								
			//Ĭ��״̬
			int state=2;
			Packages packages=new Packages(state,sendername,sendermobile,senderplace,addrname,addrmobile,addrplace,information);
			int i=expressManService.insertPackages(packages);
			if(i!=0) {
				request.setAttribute("msg", "��ӳɹ�");
			}else {
				request.setAttribute("msg", "���ʧ��,��������Ϣ");
			}
		
		return "courier/add_package";
	} 
	
	//���Ա��ѯ����
	@RequestMapping(value="/selectpackage")
	public String doSelectPackage(Integer no,String state,Model model,HttpServletRequest request) throws Exception{		
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
			Packages packages=expressManService.selectPackages1(no);
			list.add(packages);
			model.addAttribute("list2",list);
		}else if(no==null && state1!=null) {
			list=expressManService.selectPackages(state1);
			model.addAttribute("list2", list);
		}else if(no!=null && state1!=null) {
			Packages packages=expressManService.selectPackages1(no);
			List<Packages> list1=expressManService.selectPackages(state1);
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
		return "courier/query_package";
	}
	
	//��������
	@RequestMapping(value="/courier_package_info")
	public String packageInfo(Integer no,HttpServletRequest request,Model model) throws Exception{
		if(no==null) {
			request.setAttribute("msg", "��������");
		}else {
			List<PackageState> list=expressManService.selectPackageState(no);			
			if(list==null) {
				request.setAttribute("msg", "�ð���������");
			}else {
				model.addAttribute("list1",list);
				model.addAttribute("no1",no);
			}
		}
		return "courier/package_info";
	}
	
	//��������
	@RequestMapping(value="/selectpackagestate")
	public String packageInfoTrack(Integer no,HttpSession session,HttpServletRequest request,Model model) throws Exception {

		if(no==null) {
			request.setAttribute("msg", "��������");
		}else {
			List<PackageState> list=expressManService.selectPackageState(no);			
			if(list==null) {
				request.setAttribute("msg", "�ð���������");
			}else {
				session.setAttribute("list",list);
				session.setAttribute("no", no);
			}
		}
		return "courier/package_info_track";
	}
	
	//���������Ϣ
	@RequestMapping(value="/addinformation")
	public String addInformation(String information,Integer no,HttpServletRequest request) throws Exception {
		if(no==null) {
			request.setAttribute("msg", "��������");
		}else {
			Date date=new Date();
			SimpleDateFormat formater=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String time=formater.format(date);
			PackageState packageState=new PackageState(information,time,no);
			Packages packages=new Packages();
			packages.setNo(no);
			packages.setInformation(information);
			int j=expressManService.updatePackages(packages);
			int i=expressManService.insertPackageState(packageState);
			if(i!=0 && j!=0) {
				request.setAttribute("msg", "��ӳɹ�");
			}else {
				request.setAttribute("msg", "���ʧ��");
			}
		}
		return "courier/package_info_track";
	}
	
	
	
	
}
