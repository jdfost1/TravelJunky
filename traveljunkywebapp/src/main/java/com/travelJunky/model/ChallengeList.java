package com.travelJunky.model;

import javax.persistence.Entity;

import com.travelJunky.entities.Challenge;

public class ChallengeList {

	// array of challenge objects
	public Challenge[] challenges;

	// Constructor to populate challenge list from the database
	public ChallengeList() {

		challenges = new Challenge[5];

		// get challenges from database and add to array of challenges

		// create dummy challenge list for testing

		for (int i = 0; i < challenges.length; i++) {
			this.challenges[i] = new Challenge();

		}//end of loop
		
		//hard code first challenge in array for testing
		this.challenges[0].setAddress("100 N University St");
		this.challenges[0].setBusinessName("Illinois State University");
		this.challenges[0].setChallengeName("Redbird Challenge");
		this.challenges[0].setChallengeNumber(1);
		this.challenges[0].setCity("Normal");
		this.challenges[0].setState("Illinois");
		this.challenges[0].setRewardPoints(50);
		
		this.challenges[1].setChallengeName("Get that Bread");
		this.challenges[2].setChallengeName("Grab a Brew");
		this.challenges[3].setChallengeName("BBQ Challenge");
		this.challenges[4].setChallengeName("Eat a weiner");
		
		
		//get challenges from database and fill up array of challenges
		
		//code

	}// end of constructor

	public static void main(String[] args) {

		ChallengeList dummyList = new ChallengeList();

		dummyList.challenges[0].setAddress("hello");
	}

	public Challenge[] getChallenges() {
		return challenges;
	}

	public void setChallenges(Challenge[] challenges) {
		this.challenges = challenges;
	}

}
