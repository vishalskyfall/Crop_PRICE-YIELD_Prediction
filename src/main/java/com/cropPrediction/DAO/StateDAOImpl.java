package com.cropPrediction.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cropPrediction.model.CountryVO;
import com.cropPrediction.model.StateVO;

@Repository
public class StateDAOImpl implements StateDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void stateInsert(StateVO stateVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(stateVO);
	}


	
	public List<StateVO> stateSearchAll() {
		Session session = this.sessionFactory.getCurrentSession();
		return session.createQuery("from StateVO where state_status=1").list();
		
	}



	public StateVO searchStateById(StateVO stateVO) {
		Session session = this.sessionFactory.getCurrentSession();
		return (StateVO)session.createQuery("from StateVO where id="+stateVO.getId()).list().get(0);
	}

	@Override
	public List<StateVO> stateSearchByCountry(CountryVO countryVO) {
		Session session = this.sessionFactory.getCurrentSession();
		List<StateVO> stateList=session.createQuery("from StateVO where state_status=1 and countryVO.id="+countryVO.getId()).list();		
		return stateList;
	}


	
}
