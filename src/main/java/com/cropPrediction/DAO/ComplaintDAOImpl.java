package com.cropPrediction.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cropPrediction.model.ComplaintVO;
import com.cropPrediction.model.LoginVO;

@Repository
public class ComplaintDAOImpl implements ComplaintDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	public void insert(ComplaintVO complaintVO) {
		
		Session session = this.sessionFactory.getCurrentSession();
		complaintVO.setStatus(true);
		session.saveOrUpdate(complaintVO);
	}

	public List search() {
		
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("from ComplaintVO where status=1");
		List complaintList = query.list();
		return complaintList;
	}
	
	public void delete(ComplaintVO complaintVO){
		Session session = this.sessionFactory.getCurrentSession();
		Query query=session.createQuery("from ComplaintVO where id='"+complaintVO.getId()+"'");
		complaintVO = (ComplaintVO) query.list().get(0);
		complaintVO.setStatus(false);
		session.saveOrUpdate(complaintVO);
	}
	
	public List edit(ComplaintVO complaintVO){
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("from ComplaintVO where id='"+complaintVO.getId()+"'");
		return (query.list());
	}
	
	public List complaintByusername(LoginVO loginVO){
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("from ComplaintVO where loginVO.username='"+loginVO.getUsername()+"'");
		return (query.list());
	}
	
	public List searchByUsername(LoginVO loginVO){
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("from LoginVO where username ='"+loginVO.getUsername()+"'");
		return (query.list());
	}

}
