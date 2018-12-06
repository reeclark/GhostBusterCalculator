package com.GhostBusterCalculator.GhostBusterCalculator.entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class GhostData {

	private Integer homicide;

	public GhostData() {

	}

	public GhostData(Integer homicide) {
		super();
		this.homicide = homicide;
	}

	public Integer getHomicide() {
		return homicide;
	}

	public void setHomicide(Integer homicide) {
		this.homicide = homicide;
	}

	@Override
	public String toString() {
		return "GhostData [homicide=" + homicide + "]";
	}

}
