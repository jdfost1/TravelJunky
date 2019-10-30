package com.travelJunky.DAO;

import com.travelJunky.entities.Challenge;

public interface ChallengeListDAO {
	
	Challenge[] getChallengesById(int id);

}
