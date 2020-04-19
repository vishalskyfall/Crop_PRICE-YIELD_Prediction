package com.cropPrediction.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "village_table")
public class VillageVO {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	@Column(name = "village_name")
	private String villageName;

	@Column(name = "village_desciption")
	private String villageDescription;

	@Column(name = "village_status")
	private boolean villageStatus;

	@ManyToOne
	private StateVO stateVO;

	@ManyToOne
	private CountryVO countryVO;

	@ManyToOne
	private DistrictVO districtVO;
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getVillageName() {
		return villageName;
	}

	public void setVillageName(String villageName) {
		this.villageName = villageName;
	}

	public String getVillageDescription() {
		return villageDescription;
	}

	public void setVillageDescription(String villageDescription) {
		this.villageDescription = villageDescription;
	}

	public boolean isVillageStatus() {
		return villageStatus;
	}

	public void setVillageStatus(boolean villageStatus) {
		this.villageStatus = villageStatus;
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

	public DistrictVO getDistrictVO() {
		return districtVO;
	}

	public void setDistrictVO(DistrictVO districtVO) {
		this.districtVO = districtVO;
	}

	
}