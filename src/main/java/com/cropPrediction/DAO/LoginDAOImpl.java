package com.cropPrediction.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cropPrediction.model.LoginVO;

@Repository
public class LoginDAOImpl implements LoginDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void loginInsert(LoginVO loginVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(loginVO);
	}


	
	public List<LoginVO> loginSearchAll() {
		Session session = this.sessionFactory.getCurrentSession();
		List<LoginVO> loginList = session.createQuery("from LoginVO where status=1").list();
		return loginList;
	}



	public LoginVO searchLoginById(LoginVO loginVO) {
		Session session = this.sessionFactory.getCurrentSession();
		return (LoginVO)session.createQuery("from LoginVO where id="+loginVO.getId()).list().get(0);
	}
}
