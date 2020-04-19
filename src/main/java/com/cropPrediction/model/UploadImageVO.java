package com.cropPrediction.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "uploadimage_table")
public class UploadImageVO {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	@ManyToOne
	private CropVO cropVO;

	@Column(name = "image_link")
	private String imageLink;

	@Column(name = "image_status")
	private boolean imageStatus;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public CropVO getCropVO() {
		return cropVO;
	}

	public void setCropVO(CropVO cropVO) {
		this.cropVO = cropVO;
	}

	public String getImageLink() {
		return imageLink;
	}

	public void setImageLink(String imageLink) {
		this.imageLink = imageLink;
	}

	public boolean isImageStatus() {
		return imageStatus;
	}

	public void setImageStatus(boolean imageStatus) {
		this.imageStatus = imageStatus;
	}

}
