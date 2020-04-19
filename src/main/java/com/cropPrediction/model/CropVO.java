package com.cropPrediction.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "crop_table")

public class CropVO {


		@Id
		@GeneratedValue(strategy = GenerationType.AUTO)
		private int id;
		
		@Column(name = "crop_season")
		private String cropSeason;

		@Column(name = "crop_name")
		private String cropName;

		@Column(name = "crop_status")
		private boolean cropStatus;

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getCropSeason() {
			return cropSeason;
		}

		public void setCropSeason(String cropSeason) {
			this.cropSeason = cropSeason;
		}

		public String getCropName() {
			return cropName;
		}

		public void setCropName(String cropName) {
			this.cropName = cropName;
		}

		public boolean getCropStatus() {
			return cropStatus;
		}

		public void setCropStatus(boolean cropStatus) {
			this.cropStatus = cropStatus;
		}

		
	}

	

