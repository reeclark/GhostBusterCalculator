package com.GhostBusterCalculator.GhostBusterCalculator.entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class GhostData {
	
	private String homicide;
	
	public GhostData() {
		
	}

	public GhostData(String homicide) {
		super();
		this.homicide = homicide;
	}

	public String getHomicide() {
		return homicide;
	}

	public void setHomicide(String homicide) {
		this.homicide = homicide;
	}

	@Override
	public String toString() {
		return "GhostData [homicide=" + homicide + "]";
	}
	
	

}
