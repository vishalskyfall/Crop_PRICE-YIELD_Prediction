package com.cropPrediction.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cropPrediction.model.FeedbackVO;
import com.cropPrediction.model.LoginVO;

@Repository
public class FeedbackDAOImpl implements FeedbackDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void feedbackInsert(FeedbackVO feedbackVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(feedbackVO);
	}

	public List<FeedbackVO> feedbackSearchAll() {
		Session session = this.sessionFactory.getCurrentSession();
		return session.createQuery("from FeedbackVO where feedback_status=1").list();
		/*return feedbackList;*/
	}
	public List feedbackByusername(LoginVO loginVO){
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("from FeedbackVO where loginVO.username='"+loginVO.getUsername()+"'");
		return (query.list());
	}

	public FeedbackVO searchFeedbackById(FeedbackVO feedbackVO) {
		Session session = this.sessionFactory.getCurrentSession();
		return (FeedbackVO)session.createQuery("from FeedbackVO where id="+feedbackVO.getId()).list().get(0);
	}
	
	public List searchByUsername(LoginVO loginVO){
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("from LoginVO where username ='"+loginVO.getUsername()+"'");
		return (query.list());
	}
}
