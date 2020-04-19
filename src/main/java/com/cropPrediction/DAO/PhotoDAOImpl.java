package com.cropPrediction.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.cropPrediction.model.PhotoVO;
import com.cropPrediction.model.UploadImageVO;

public class PhotoDAOImpl implements PhotoDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public void photoInsert(PhotoVO photoVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(photoVO);

	}

	public List<PhotoVO> photoSearchAll() {
		Session session = this.sessionFactory.getCurrentSession();
		return session.createQuery("from PhotoVO where photo_status=1").list();

	}

	public PhotoVO searchPhotoById(PhotoVO photoVO) {
		Session session = this.sessionFactory.getCurrentSession();
		return (PhotoVO) session.createQuery("from PhotoVO where id=" + photoVO.getId()).list().get(0);

	}

}
