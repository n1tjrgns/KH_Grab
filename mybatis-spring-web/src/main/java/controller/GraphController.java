package controller;

import java.util.List;


import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Bucketlist;
import model.Linkdata;
import model.Member;
import repository.GraphSessionRepository;

@Controller
public class GraphController {

	@Autowired
	GraphSessionRepository graphSessionRepository;

	@RequestMapping(value="/Main_graph", method = RequestMethod.GET)
	public String handleStep1(Member member, Model model,HttpServletRequest request, ServletRequest session) {
		if(member.getmEmail()!=null) {
		String mEmail = member.getmEmail();		
		System.out.println("controller 로 전달한 세션:"+member.getmEmail());
		
			List<Linkdata> linkdata=graphSessionRepository.selectLinkdata(mEmail);
			model.addAttribute("linkdata",linkdata);
			request.setAttribute("linkdata", linkdata);				
		
		}
		return "graph";
	}
	
	@RequestMapping(value="/ajaxOrderBy", method = RequestMethod.GET)
	public String handleStep2(Model model, HttpServletRequest request, String orderby) {
		HttpSession session = request.getSession();
		Member member = (Member)session.getAttribute("loginInfo");
		String mEmail = member.getmEmail();
		if(member.getmEmail()!=null && orderby.equals("sns")) {
			List<Linkdata> linkdata=graphSessionRepository.orderBySns(mEmail,orderby);
			model.addAttribute("linkdata",linkdata);
			request.setAttribute("linkdata", linkdata);		
			System.out.println(linkdata.size());
		}else if(member.getmEmail()!=null && orderby.equals("date")) {			
			List<Linkdata> linkdata=graphSessionRepository.orderByDate(mEmail,orderby);
			model.addAttribute("linkdata",linkdata);
			request.setAttribute("linkdata", linkdata);	
			System.out.println(linkdata.size());
		}
		return "graphsort";
	}
	
	
}
