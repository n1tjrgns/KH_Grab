package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Bucketlist;
import model.Reservation;
import repository.BucketSessionRepository;
@Controller
public class BucketController {
		@Autowired
		BucketSessionRepository bucketRepository;
		//마이바티스와 DB 정보를 받아서  
		//정보들
		
		@RequestMapping(value="/Bucket_main", method = RequestMethod.GET)
		public String handleStep2(Model model) {
			
			List<Bucketlist> bucketlist= bucketRepository.selectBucketlist();
			model.addAttribute("bucketlist",bucketlist);
			return "Bucket_main";
		}
		
		@RequestMapping(value="/discover/library_detail_popup.do", method = RequestMethod.POST)
		public String handleStep3(Model model,Bucketlist bucketlist_take) {
			if(bucketlist_take!=null) {
			//System.out.println("컨트롤러: "+bucketlist_take.getBkName());
			if(bucketlist_take.getBkName()!=null) {
			List<Bucketlist> bucketlist= bucketRepository.selectBucketlist_one(bucketlist_take);
			
			for(int i=0; i< bucketlist.size() ; i++ ) {
				bucketlist.get(i).setBkDate(bucketlist.get(i).getBkDate().substring(0, 10));
				bucketlist.get(i).setBkDue(bucketlist.get(i).getBkDue().substring(0, 10));
			}
			
			
			model.addAttribute("bucketlist",bucketlist.get(0));
			}
			}
			return "Popup_result";
		}
		
		@RequestMapping(value="/discover/bucket_resist.do", method = RequestMethod.GET)
		public String handleStep4(Model model,Bucketlist bucketlist) {
			System.out.println("bucket_resist.do:"+bucketlist.getBkName());
			Integer result = bucketRepository.InsertBucket(bucketlist);
			System.out.println(result+"개");
			model.addAttribute("result",result);
			
				return "result";
		}
		
			
		@RequestMapping(value="discover/reser_popup.do", method = RequestMethod.GET)
		public String handleStep5(Model model,Reservation reservation) {
			System.out.println("reser_popup:"+reservation.getResCf());
			Integer result = bucketRepository.InsertReserv(reservation);
			System.out.println(result+"개 입력 완료(reser_popup)");
			model.addAttribute("reservation",reservation);
		return "reser_popup";
		}
		
		@RequestMapping(value="discover/reser_list.do", method = RequestMethod.GET)
		public String handleStep6(Model model,Reservation reservation1,Integer pagenum) {
			System.out.println(pagenum+"페이지 번호");
			reservation1.setResInt(pagenum);
			reservation1.setResCheck(String.valueOf((pagenum+1)));
			System.out.println(reservation1.getBkName()+"Reservation_getBkName");
			List<Reservation> reservation = bucketRepository.selectReservList(reservation1);
			System.out.println(reservation.size()+" 개 출력 완료");
			model.addAttribute("reservation",reservation);
			model.addAttribute("size",reservation.size());
			return "reserlist";
		}
		
		
			
}
