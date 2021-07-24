package com.teamproject.demo.vo;

import java.util.Date;

public class HealthyDietVO {
	
	private int idx;
	private String categoryid;
	private String title;
	private String contents;
	private String imageurl;
	private Date postdate;
	private Date modifydate;
	private String nutrients;
	
	public HealthyDietVO() {}

	public HealthyDietVO(int idx, String categoryid, String title, String contents, String imageurl, Date postdate,
			Date modifydate, String nutrients) {
		super();
		this.idx = idx;
		this.categoryid = categoryid;
		this.title = title;
		this.contents = contents;
		this.imageurl = imageurl;
		this.postdate = postdate;
		this.modifydate = modifydate;
		this.nutrients = nutrients;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getCategoryid() {
		return categoryid;
	}

	public void setCategoryid(String categoryid) {
		this.categoryid = categoryid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getImageurl() {
		return imageurl;
	}

	public void setImageurl(String imageurl) {
		this.imageurl = imageurl;
	}

	public Date getPostdate() {
		return postdate;
	}

	public void setPostdate(Date postdate) {
		this.postdate = postdate;
	}

	public Date getModifydate() {
		return modifydate;
	}

	public void setModifydate(Date modifydate) {
		this.modifydate = modifydate;
	}

	public String getNutrients() {
		return nutrients;
	}

	public void setNutrients(String nutrients) {
		this.nutrients = nutrients;
	};
	
	

}
