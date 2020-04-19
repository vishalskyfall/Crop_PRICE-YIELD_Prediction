package com.cropPrediction.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cropPrediction.model.RegisterVO;

@Repository
public class RegisterDAOImpl implements RegisterDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void registerInsert(RegisterVO registerVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(registerVO);
	}


	
	public List<RegisterVO> registerSearchAll() {
		Session session = this.sessionFactory.getCurrentSession();
		List<RegisterVO> registerList = session.createQuery("from RegisterVO ").list();
		return registerList;
	}



	public RegisterVO searchRegisterById(RegisterVO registerVO) {
		Session session = this.sessionFactory.getCurrentSession();
		return (RegisterVO)session.createQuery("from RegisterVO where id="+registerVO.getId()).list().get(0);
	}
}
