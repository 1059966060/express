package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import bean.ExpressMan;
import bean.PackageState;
import bean.Packages;
import dao.ExpressManDao;
@Service
@Transactional
public class ExpressManServiceImpl implements ExpressManService {
	
	@Autowired
	private ExpressManDao expressManDao;

	@Override
	public List<Packages> selectPackages(int state) throws Exception{
		// TODO Auto-generated method stub
		return expressManDao.selectPackages(state);
	}
	

	@Override
	public int insertPackages(Packages packages)throws Exception {
		// TODO Auto-generated method stub	
		if(packages.getSenderName().equals("") || packages.getSenderMobile().equals("") || packages.getSenderPlace().equals("") || packages.getAddrName().equals("") ||packages.getAddrMobile().equals("") || packages.getAddrPlace().equals("") || packages.getInformation().equals("")) {			
			return 0;
		}else {			
			return expressManDao.insertPackages(packages);
		}
	}

	@Override
	public int updatePackages(Packages packages)throws Exception {
		// TODO Auto-generated method stub
			return expressManDao.updatePackages(packages);
	}

	@Override
	public ExpressMan selectExpressMan(String no)throws Exception {
		// TODO Auto-generated method stub
		return expressManDao.selectExpressMan(no);
	}

	@Override
	public List<PackageState> selectPackageState(int no)throws Exception {
		// TODO Auto-generated method stub
		return expressManDao.selectPackageState(no);
	}

	@Override
	public int insertPackageState(PackageState packageState)throws Exception {
		// TODO Auto-generated method stub
		if(packageState.getInformation().isEmpty()) {
			return 0;
		}else {
			return expressManDao.insertPackageState(packageState);
		}
	}


	@Override
	public Packages selectPackages1(int no)throws Exception {
		// TODO Auto-generated method stub
		return expressManDao.selectPackages1(no);
	}

}
