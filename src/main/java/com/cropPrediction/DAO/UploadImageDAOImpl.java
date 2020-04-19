package com.cropPrediction.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cropPrediction.model.CropVO;
import com.cropPrediction.model.UploadImageVO;

@Repository
public class UploadImageDAOImpl implements UploadImageDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void uploadImageInsert(UploadImageVO uploadImageVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(uploadImageVO);
	}

	

	public UploadImageVO searchUploadImageById(UploadImageVO uploadImageVO) {
		Session session = this.sessionFactory.getCurrentSession();
		return (UploadImageVO)session.createQuery("from UploadImageVO where id="+uploadImageVO.getId()).list().get(0);
	}

	
	public List<UploadImageVO> uploadImageSearchAll() {
		Session session = this.sessionFactory.getCurrentSession();
		return session.createQuery("from UploadImageVO where uploadImage_status=1").list();
		
	}



	
	public int imageCountOfCrop(CropVO cropVO) {
		Session session = this.sessionFactory.getCurrentSession();
		return session.createQuery("from UploadImageVO where cropVO_id="+cropVO.getId()).list().size();
		
		
	}



	
	public List<UploadImageVO> getImagesByCrop(CropVO cropVO) {
		Session session = this.sessionFactory.getCurrentSession();
		return session.createQuery("from UploadImageVO where cropVO_id="+cropVO.getId()).list();
	}

	
}
