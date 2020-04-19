package com.cropPrediction.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="register_table")
public class RegisterVO {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	@Column(name = "name")
	private String name;
	
	

	@Column(name = "birth_date")
	private Date birthDate;

	@Column(name="gender")
	private String gender;
	
	@Column(name="aadhar_number")
	private String aadharNumber;
	
	@Column(name="mobile_number")
	private String mobileNumber;
	
	@Column(name="address")
	private String address;
	
	
	@ManyToOne
	private CountryVO countryVO;
	
	@ManyToOne
	private StateVO  stateVO;
	
	@ManyToOne
	private DistrictVO districtVO;
	
	@ManyToOne
	private VillageVO villageVO;
	
	@ManyToOne
	private LoginVO loginVO;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAadharNumber() {
		return aadharNumber;
	}

	public void setAadharNumber(String aadharNumber) {
		this.aadharNumber = aadharNumber;
	}

	public CountryVO getCountryVO() {
		return countryVO;
	}

	public void setCountryVO(CountryVO countryVO) {
		this.countryVO = countryVO;
	}

	public StateVO getStateVO() {
		return stateVO;
	}

	public void setStateVO(StateVO stateVO) {
		this.stateVO = stateVO;
	}

	public DistrictVO getDistrictVO() {
		return districtVO;
	}

	public void setDistrictVO(DistrictVO districtVO) {
		this.districtVO = districtVO;
	}

	public VillageVO getVillageVO() {
		return villageVO;
	}

	public void setVillageVO(VillageVO villageVO) {
		this.villageVO = villageVO;
	}

	public LoginVO getLoginVO() {
		return loginVO;
	}

	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	
	
	
	
}
