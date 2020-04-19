package com.cropPrediction.controller;

import java.net.URL;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.joda.time.format.DateTimeFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.cropPrediction.model.ComplaintVO;
import com.cropPrediction.model.LoginVO;
import com.cropPrediction.service.ComplaintService;
import com.cropPrediction.utils.BaseMethod;

@Controller
public class ComplaintController {

	@Autowired
	ComplaintService complaintService;

	@GetMapping(value = "/loadComplaint")
	public ModelAndView loadCity(Model model) {

		return new ModelAndView("/farmer/addComplaint", "complaintVO", new ComplaintVO());
	}

	@PostMapping(value = "/farmer/addComplaint")
	public String insert(@ModelAttribute ComplaintVO complaintVO, @RequestParam("file") MultipartFile file,
			HttpServletRequest request) {
		/* System.out.println("file ::"+file); */
		DateTimeFormatter dtf= DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
		LocalDateTime now=LocalDateTime.now();
		complaintVO.setComplaintDate(dtf.format(now));
		complaintVO.setComplaintStatus("Pending");
		complaintVO.setComplaintFileName(file.getOriginalFilename());

		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		LoginVO loginVO = new LoginVO();
		loginVO.setUsername(user.getUsername());
		List loginList = this.complaintService.searchByUsername(loginVO);
		loginVO = (LoginVO) loginList.get(0);
		complaintVO.setLoginVO(loginVO);
		String bucket_name = "cropprediction007";
		String key_name = "User/complaints/" + loginVO.getUsername() + "/complaint/"
				+ BaseMethod.randomAlphaNumeric(10);

		try {
			String path = request.getServletContext().getRealPath("/") + "doc//";
			URL url = BaseMethod.uploadfile(bucket_name, key_name, BaseMethod.CreateFile(file, path));
			complaintVO.setComplaintFileLink(url.toString());

		} catch (Exception e) {
			e.printStackTrace();
		}

		this.complaintService.insert(complaintVO);
		return ("redirect:/farmer/viewComplaint");
	}

	@GetMapping(value = "/farmer/viewComplaint")
	public ModelAndView search(ComplaintVO complaintVO) {
		LoginVO loginVO = new LoginVO();
		loginVO.setUsername(BaseMethod.getUser());
		List complaintList = this.complaintService.complaintByusername(loginVO);
		return new ModelAndView("/farmer/viewComplaint", "complaintList", complaintList);
	}

	@GetMapping(value = "/admin/viewComplaint")
	public ModelAndView searchadmin() {
		List<ComplaintVO> complaintList = this.complaintService.search();
		return new ModelAndView("/admin/viewComplaint", "complaintList", complaintList);
	}

	@GetMapping(value = "/admin/deleteComplaint")
	public String delete(@RequestParam int id) {
		ComplaintVO complaintVO = new ComplaintVO();
		complaintVO.setId(id);
		this.complaintService.delete(complaintVO);
		return ("redirect:/admin/viewComplaint");

	}

	@GetMapping(value = "/admin/editComplaint")
	public ModelAndView edit(@RequestParam int id, Model model) {
		ComplaintVO complaintVO = new ComplaintVO();
		complaintVO.setId(id);

		List complaintList = this.complaintService.edit(complaintVO);
		complaintVO = (ComplaintVO) complaintList.get(0);
		return new ModelAndView("/admin/addComplaint", "complaintVO", complaintVO);

	}

	@GetMapping(value="/admin/reply")
	public ModelAndView reply(@RequestParam int id,Model model){
		ComplaintVO complaintVO = new ComplaintVO();
		complaintVO.setId(id);
		List complaintList = this.complaintService.edit(complaintVO);
		complaintVO = (ComplaintVO) complaintList.get(0);
		return new ModelAndView("/admin/addReply","complaintVO",complaintVO);
		
	}
	
	
	@PostMapping(value="/admin/addReply")
	public String addreply(@ModelAttribute ComplaintVO complaintVO){
		System.out.println(complaintVO);
		DateTimeFormatter dtf= DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
		LocalDateTime now=LocalDateTime.now();
		complaintVO.setReplyDate(dtf.format(now));
		complaintVO.setComplaintStatus("Resolved");
		this.complaintService.insert(complaintVO);
		return("redirect:/admin/viewComplaint");
		
	}
}
