package service;

import java.util.List;

import bean.ExpressMan;
import bean.PackageState;
import bean.Packages;

public interface ExpressManService {
	public List<Packages> selectPackages(int state)throws Exception;
	public Packages selectPackages1(int no)throws Exception;
	public int insertPackages(Packages packages)throws Exception;
	public int updatePackages(Packages packages)throws Exception;
	public ExpressMan selectExpressMan(String no)throws Exception;
	public List<PackageState> selectPackageState(int no)throws Exception;
	public int insertPackageState(PackageState packageState)throws Exception;
}
