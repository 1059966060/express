package dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import bean.ExpressMan;
import bean.PackageState;
import bean.Packages;

@Repository
@Mapper
public interface ExpressManDao {
	public List<Packages> selectPackages(int state)throws Exception;
	public Packages selectPackages1(int no)throws Exception;
	public int insertPackages(Packages packages)throws Exception;
	public int updatePackages(Packages packages)throws Exception;
	public ExpressMan selectExpressMan(String no)throws Exception ;
	public List<PackageState> selectPackageState(int no)throws Exception;
	public int insertPackageState(PackageState packageState)throws Exception;
}
