package com.cropPrediction.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "district_table")
public class DistrictVO {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	@Column(name = "district_name")
	private String districtName;

	@Column(name = "district_desciption")
	private String districtDescription;

	@Column(name = "district_status")
	private boolean districtStatus;

	@ManyToOne
	private StateVO stateVO;
	@ManyToOne
	private CountryVO countryVO;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDistrictName() {
		return districtName;
	}
	public void setDistrictName(String districtName) {
		this.districtName = districtName;
	}
	public String getDistrictDescription() {
		return districtDescription;
	}
	public void setDistrictDescription(String districtDescription) {
		this.districtDescription = districtDescription;
	}
	public boolean isDistrictStatus() {
		return districtStatus;
	}
	public void setDistrictStatus(boolean districtStatus) {
		this.districtStatus = districtStatus;
	}
	public StateVO getStateVO() {
		return stateVO;
	}
	public void setStateVO(StateVO stateVO) {
		this.stateVO = stateVO;
	}
	public CountryVO getCountryVO() {
		return countryVO;
	}
	public void setCountryVO(CountryVO countryVO) {
		this.countryVO = countryVO;
	}
	

	
	
	
}
