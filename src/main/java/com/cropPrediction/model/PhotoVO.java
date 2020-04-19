package com.cropPrediction.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name = "photo_table")

public class PhotoVO {


		@Id
		@GeneratedValue(strategy = GenerationType.AUTO)
		private int id;
		
		@Column(name = "photo_description")
		private String photoDescription;

		@Column(name = "photo_link")
		private String photoLink;

		@Column(name = "photo_status")
		private boolean photoStatus;

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getPhotoDescription() {
			return photoDescription;
		}

		public void setPhotoDescription(String photoDescription) {
			this.photoDescription = photoDescription;
		}

		public String getPhotoLink() {
			return photoLink;
		}

		public void setPhotoLink(String photoLink) {
			this.photoLink = photoLink;
		}

		public boolean isPhotoStatus() {
			return photoStatus;
		}

		public void setPhotoStatus(boolean photoStatus) {
			this.photoStatus = photoStatus;
		}
}
