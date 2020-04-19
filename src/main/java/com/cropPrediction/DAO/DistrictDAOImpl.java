package com.cropPrediction.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cropPrediction.model.DistrictVO;
import com.cropPrediction.model.StateVO;

@Repository
public class DistrictDAOImpl implements DistrictDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void districtInsert(DistrictVO districtVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(districtVO);
	}


	
	public List<DistrictVO> districtSearchAll() {
		Session session = this.sessionFactory.getCurrentSession();
		return session.createQuery("from DistrictVO where district_status=1").list();
		
	}



	public DistrictVO searchDistrictById(DistrictVO districtVO) {
		Session session = this.sessionFactory.getCurrentSession();
		return (DistrictVO)session.createQuery("from DistrictVO where id="+districtVO.getId()).list().get(0);
	}



	@Override
	public List<DistrictVO> districtSearchByState(StateVO stateVO) {
		Session session = this.sessionFactory.getCurrentSession();
		List<DistrictVO> districtList=session.createQuery("from DistrictVO where district_status=1 and stateVO.id="+stateVO.getId()).list();		
		return districtList;
	}
}
