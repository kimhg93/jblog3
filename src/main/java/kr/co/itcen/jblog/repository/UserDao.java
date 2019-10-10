package kr.co.itcen.jblog.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.itcen.jblog.vo.UserVo;

@Repository
public class UserDao {
	@Autowired
	private SqlSession sqlSession;
	
	public void insert(UserVo vo) {
		sqlSession.insert("user.insert", vo);
		sqlSession.insert("blog.insert", vo.getId());
		sqlSession.insert("category.insert" , vo.getId());
	}

	public UserVo getUser(UserVo vo) {
		return sqlSession.selectOne("user.get", vo);
	}

}
