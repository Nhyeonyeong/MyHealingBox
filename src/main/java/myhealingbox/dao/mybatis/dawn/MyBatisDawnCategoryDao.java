package myhealingbox.dao.mybatis.dawn;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import myhealingbox.dao.dawn.DawnCategoryDao;
import myhealingbox.entity.dawn.DawnCategory;

@Repository
public class MyBatisDawnCategoryDao implements DawnCategoryDao{

	@Autowired
	private SqlSession sqlsession;
	
	@Override
	public List<DawnCategory> getList() {
		
		DawnCategoryDao dawnCategoryDao = sqlsession.getMapper(DawnCategoryDao.class);
		
		List<DawnCategory> categoryList = dawnCategoryDao.getList();
		
		return categoryList;
	}

	@Override
	public int insert(DawnCategory dawnCategory) {
		
		DawnCategoryDao dawnCategoryDao = sqlsession.getMapper(DawnCategoryDao.class);

		int result = dawnCategoryDao.insert(dawnCategory);

		return result;
	}

	@Override
	public int update(DawnCategory dawnCategory) {
		
		DawnCategoryDao dawnCategoryDao = sqlsession.getMapper(DawnCategoryDao.class);

		int result = dawnCategoryDao.update(dawnCategory);

		return result;
	}

	@Override
	public int delete(Integer id) {
		
		DawnCategoryDao dawnCategoryDao = sqlsession.getMapper(DawnCategoryDao.class);

		int result = dawnCategoryDao.delete(id);

		return result;
	}

}
