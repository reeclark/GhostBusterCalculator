package com.GhostBusterCalculator.GhostBusterCalculator.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="states")
public class States {
	
	@Id
	private Integer stateid;
	private String statename;
	private String stateabv;
	
	public States() {
		
	}
	
	

	public States(String stateabv) {
		super();
		this.stateabv = stateabv;
	}

	public States(String statename, String stateabv) {
		super();
		this.statename = statename;
		this.stateabv = stateabv;
	}

	public States(Integer stateid, String statename, String stateabv) {
		super();
		this.stateid = stateid;
		this.statename = statename;
		this.stateabv = stateabv;
	}



	public Integer getStateid() {
		return stateid;
	}



	public void setStateid(Integer stateid) {
		this.stateid = stateid;
	}



	public String getStatename() {
		return statename;
	}



	public void setStatename(String statename) {
		this.statename = statename;
	}



	public String getStateabv() {
		return stateabv;
	}



	public void setStateabv(String stateabv) {
		this.stateabv = stateabv;
	}



	@Override
	public String toString() {
		return "States [stateid=" + stateid + ", statename=" + statename + ", stateabv=" + stateabv + "]";
	}

	
	
}
