package service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import bean.Admin;
import bean.ExpressMan;
import bean.PackageState;
import bean.Packages;
import dao.AdminDao;

@Service
@Transactional
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminDao adminDao; 

	@Override
	public ExpressMan  selectExpressMan(String no)throws Exception {
		// TODO Auto-generated method stub
		return adminDao.selectExpressMan(no);
	}

	@Override
	public int insertExpressMan(ExpressMan expressMan)throws Exception {
		// TODO Auto-generated method stub
		if(expressMan.getMobile().isEmpty() || expressMan.getEmail().isEmpty() || expressMan.getIDcard().isEmpty() || expressMan.getBirthday().isEmpty()
				|| expressMan.getHomePlace().isEmpty() || expressMan.getNativePlace().isEmpty() || expressMan.getState().isEmpty() || expressMan.getDate().isEmpty()) {
			return 0;
		}else {
			return adminDao.insertExpressMan(expressMan);
		}
	}

	@Override
	public int deleteExpressMan(String no) throws Exception{
		// TODO Auto-generated method stub
		return adminDao.deleteExpressMan(no);
	}

	@Override
	public Packages selectPackages1(int no) throws Exception{
		// TODO Auto-generated method stub
		return adminDao.selectPackages1(no);
	}

	@Override
	public int updatePassword(String no) throws Exception{
		// TODO Auto-generated method stub
		if(no.isEmpty()) {
			return 0;
		}else {
			return adminDao.updatePassword(no);
		}
	}

	@Override
	public Admin selectAdmin(String account)throws Exception {
		// TODO Auto-generated method stub
		return adminDao.selectAdmin(account);
	}

	@Override
	public int deletePackage(int no) throws Exception{
		// TODO Auto-generated method stub
			return adminDao.deletePackage(no);
	}

	@Override
	public List<PackageState> selectPackageState(int no) throws Exception{
		// TODO Auto-generated method stub
		return adminDao.selectPackageState(no);
	}

	@Override
	public List<Packages> selectPackages(int state)throws Exception {
		// TODO Auto-generated method stub
		return adminDao.selectPackages(state);
	}

}
