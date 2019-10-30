package com.travelJunky.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.travelJunky.entities.Challenge;
import com.travelJunky.entities.ChallengeList;

@Transactional
public class ChallengeListDAOImpl {

	@Autowired
	private static SessionFactory sessionFactory;

	public static  Challenge[] getChallengesById(int id) {
		
		// Get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// Read from the database using the given id
		Query<ChallengeList> query = currentSession.createQuery("from challenges where id=:id", ChallengeList.class);
		query.setParameter("id", id);
		
		//create list of challenge objects to return
		Challenge[] challenges = new Challenge[10];
		
		//create list for the results from the query
		List results = null;
		try {
			results = query.getResultList();
		} catch (Exception e) {
			challenges = null;
		}
		//fill the array of challenges with the results from the query
		for(int i=0;i<6;i++) {
		challenges[i] = (Challenge) results.get(i);
		}
		return challenges;

	}// end of method
}// end of class
