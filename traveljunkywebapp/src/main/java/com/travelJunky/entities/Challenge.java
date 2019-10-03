package com.travelJunky.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="challenges")
public class Challenge {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
	
	@Column(name = "challenge_number")
	private int challengeNumber;
	
	@Column(name = "challenge_name")
	private String challengeName;
	
	@Column(name = "business_name")
	private String businessName;
	
	@Column(name = "city")
	private String city;
	
	@Column(name = "state")
	private String state;
	
	public int getChallengeNumber() {
		return challengeNumber;
	}

	public void setChallengeNumber(int challengeNumber) {
		this.challengeNumber = challengeNumber;
	}

	public String getChallengeName() {
		return challengeName;
	}

	public void setChallengeName(String challengeName) {
		this.challengeName = challengeName;
	}

	public String getBusinessName() {
		return businessName;
	}

	public void setBusinessName(String businessName) {
		this.businessName = businessName;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getRewardPoints() {
		return rewardPoints;
	}

	public void setRewardPoints(int rewardPoints) {
		this.rewardPoints = rewardPoints;
	}

	@Column(name = "address")
	private String address;
	
	@Column(name = "reward_points")
	private int rewardPoints;

}