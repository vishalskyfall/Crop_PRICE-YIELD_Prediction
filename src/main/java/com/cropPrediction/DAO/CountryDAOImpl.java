package com.cropPrediction.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cropPrediction.model.CountryVO;

@Repository
public class CountryDAOImpl implements CountryDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void countryInsert(CountryVO countryVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(countryVO);
	}

	public List<CountryVO> countrySearchAll() {
		Session session = this.sessionFactory.getCurrentSession();
		return session.createQuery("from CountryVO where country_status=1").list();
		/*return countryList;*/
	}

	public CountryVO searchCountryById(CountryVO countryVO) {
		Session session = this.sessionFactory.getCurrentSession();
		return (CountryVO)session.createQuery("from CountryVO where id="+countryVO.getId()).list().get(0);
	}
}
