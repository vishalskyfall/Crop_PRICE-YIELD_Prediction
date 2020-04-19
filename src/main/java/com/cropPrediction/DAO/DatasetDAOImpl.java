package com.cropPrediction.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cropPrediction.model.DatasetVO;

@Repository
public class DatasetDAOImpl implements DatasetDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void datasetInsert(DatasetVO datasetVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(datasetVO);
	}

	public List<DatasetVO> datasetSearchAll() {
		Session session = this.sessionFactory.getCurrentSession();
		List<DatasetVO> datasetList = session.createQuery("from DatasetVO where dataset_status=1").list();
		return datasetList;
	}

	public DatasetVO searchDatasetById(DatasetVO datasetVO) {
		Session session = this.sessionFactory.getCurrentSession();
		return (DatasetVO) session.createQuery("from DatasetVO where id=" + datasetVO.getId()).list().get(0);
	}

}
