package com.cropPrediction.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cropPrediction.model.CropVO;

@Repository
public class CropDAOImpl implements CropDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void cropInsert(CropVO cropVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(cropVO);
	}

	
	public CropVO searchCropById(CropVO cropVO) {
		Session session = this.sessionFactory.getCurrentSession();
		return (CropVO) session.createQuery("from CropVO where id=" + cropVO.getId()).list().get(0);
	}

	@Override
	public List<CropVO> cropVOSearchAll() {
		Session session = this.sessionFactory.getCurrentSession();
		return session.createQuery("from CropVO where crop_status=1").list();
		
		
	}

}
