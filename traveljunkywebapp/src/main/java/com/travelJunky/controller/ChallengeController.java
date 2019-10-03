package com.travelJunky.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import com.travelJunky.model.ChallengeList;


@Controller
@SessionAttributes("challenge_list")
@RequestMapping("/challenge-list")
public class ChallengeController {

	
	@GetMapping
	public String showChallengeList(Model model) {


		//add challenge list to the model so that we can display all the challenges on the jsp page
		 model.addAttribute("challengeList", new ChallengeList());

		return "challenge-list";
	}//end of showChallengeList

}
