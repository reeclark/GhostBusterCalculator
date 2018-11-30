package com.GhostBusterCalculator.GhostBusterCalculator.entity;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class GhostWrapper {
	
	private List<GhostData> results;
	
	public GhostWrapper() {
		
	}

	public GhostWrapper(List<GhostData> results) {
		super();
		this.results = results;
	}

	public List<GhostData> getResults() {
		return results;
	}

	public void setResults(List<GhostData> results) {
		this.results = results;
	}

	@Override
	public String toString() {
		return "GhostWrapper [results=" + results + "]";
	}
	
	

}
