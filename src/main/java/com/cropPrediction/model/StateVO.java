package com.cropPrediction.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "state_table")
public class StateVO {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	@Column(name = "state_name")
	private String stateName;

	@Column(name = "state_desciption")
	private String stateDescription;

	@Column(name = "state_status")
	private boolean stateStatus;

	@ManyToOne
	/*@JoinColumn(name="country_id")*/
	private CountryVO countryVO;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStateName() {
		return stateName;
	}

	public void setStateName(String stateName) {
		this.stateName = stateName;
	}

	public String getStateDescription() {
		return stateDescription;
	}

	public void setStateDescription(String stateDescription) {
		this.stateDescription = stateDescription;
	}

	public boolean isStateStatus() {
		return stateStatus;
	}

	public void setStateStatus(boolean stateStatus) {
		this.stateStatus = stateStatus;
	}

	public CountryVO getCountryVO() {
		return countryVO;
	}

	public void setCountryVO(CountryVO countryVO) {
		this.countryVO = countryVO;
	}

	
	
	
}
