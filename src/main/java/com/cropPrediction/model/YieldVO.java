package com.cropPrediction.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="Price_table")
public class YieldVO 
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	@Column(name="year")
	private int year;
	@Column(name="distrcit")
	private int district;
	@Column(name="season")
	private int season;
	@Column(name="crop")
	private int crop;
	@Column(name="area")
	private int area;
	@Column(name="rainfall")
	private int rainfall;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public int getDistrict() {
		return district;
	}
	public void setDistrict(int dist) {
		this.district = dist;
	}
	public int getSeason() {
		return season;
	}
	public void setSeason(int season) {
		this.season = season;
	}
	public int getCrop() {
		return crop;
	}
	public void setCrop(int crop) {
		this.crop = crop;
	}
	public int getArea() {
		return area;
	}
	public void setArea(int area) {
		this.area = area;
	}
	public int getRainfall() {
		return rainfall;
	}
	public void setRainfall(int rainfall) {
		this.rainfall = rainfall;
	}
		
}
