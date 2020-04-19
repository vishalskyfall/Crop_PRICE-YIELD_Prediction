package com.cropPrediction.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "dataset_table")
public class DatasetVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	@Column(name = "dataset_name")
	private String datasetName;

	@Column(name = "dataset_link")
	private String datasetLink;

	@Column(name = "dataset_status")
	private boolean datasetStatus;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDatasetName() {
		return datasetName;
	}

	public void setDatasetName(String datasetName) {
		this.datasetName = datasetName;
	}

	public String getDatasetLink() {
		return datasetLink;
	}

	public void setDatasetLink(String datasetLink) {
		this.datasetLink = datasetLink;
	}

	public boolean isDatasetStatus() {
		return datasetStatus;
	}

	public void setDatasetStatus(boolean datasetStatus) {
		this.datasetStatus = datasetStatus;
	}

	
}