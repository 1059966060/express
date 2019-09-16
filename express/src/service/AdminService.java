package service;

import java.util.List;

import bean.Admin;
import bean.ExpressMan;
import bean.PackageState;
import bean.Packages;

public interface AdminService {
	public Admin selectAdmin(String account)throws Exception;
	public ExpressMan  selectExpressMan(String no)throws Exception;
	public int insertExpressMan(ExpressMan expressMan)throws Exception;
	public int deleteExpressMan(String no)throws Exception;
	public Packages selectPackages1(int no)throws Exception;
	public List<Packages> selectPackages(int state)throws Exception;
	public int updatePassword(String no)throws Exception;
	public int deletePackage(int no)throws Exception;
	public List<PackageState> selectPackageState(int no)throws Exception;
}
