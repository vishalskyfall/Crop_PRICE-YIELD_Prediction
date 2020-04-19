package com.cropPrediction.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cropPrediction.model.DistrictVO;
import com.cropPrediction.model.VillageVO;

@Repository
public class VillageDAOImpl implements VillageDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void villageInsert(VillageVO villageVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(villageVO);
	}


	
	public List<VillageVO> villageSearchAl() {
		Session session = this.sessionFactory.getCurrentSession();
		return session.createQuery("from VillageVO where village_status=1").list();
		
	}



	public VillageVO searchVillageById(VillageVO villageVO) {
		Session session = this.sessionFactory.getCurrentSession();
		return (VillageVO)session.createQuery("from VillageVO where id="+villageVO.getId()).list().get(0);
	}



	@Override
	public List<VillageVO> villageSearchByDistrict(DistrictVO districtVO) {
		Session session = this.sessionFactory.getCurrentSession();
		List<VillageVO> villageList=session.createQuery("from VillageVO where village_status=1 and districtVO.id="+districtVO.getId()).list();		
		return villageList;
	}
}
