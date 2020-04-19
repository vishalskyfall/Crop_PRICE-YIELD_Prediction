/*package com.photoPrediction.controller;

import java.io.File;
import java.net.URL;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.cropPrediction.model.PhotoVO;
import com.cropPrediction.model.UploadImageVO;
import com.cropPrediction.service.PhotoService;
import com.cropPrediction.service.UploadImageService;
import com.cropPrediction.utils.BaseMethod;

@Controller
public class PhotoController {

	@Autowired
	private PhotoService photoService;
	@Autowired
	private UploadImageService uploadImageService;
	@GetMapping(value = "/loadPhoto")

	public ModelAndView addPhoto() {

		return new ModelAndView("/admin/addPhoto", "photoVO", new PhotoVO());
	}
	@PostMapping(value="addPhotos")
	public ModelAndView addPhoto(@ModelAttribute PhotoVO photoVO,@RequestParam("photoFiles") MultipartFile[] files,HttpServletRequest request) {
		photoVO.setPhotoStatus(true);
		this.photoService.photoInsert(photoVO);
		
		for(MultipartFile file:files)
		{
			int count = this.uploadImageService.imageCountOfPhoto(photoVO)+1;
			String bucket_name = "photoprediction007";
			String key_name = "photos/"+photoVO.getPhotoName()+photoVO.getId()+"-"+count;
			
			try {
				UploadImageVO uploadImageVO = new UploadImageVO();
				uploadImageVO.setPhotoVO(photoVO);
				
				String path=request.getServletContext().getRealPath("/")+"doc/photos/";
				File imageFile = BaseMethod.CreateFile(file,path,photoVO.getId()+"-"+count);
				URL  url= BaseMethod.uploadfile(bucket_name,key_name,imageFile);
				uploadImageVO.setImageLink(url.toString());
				uploadImageVO.setImageStatus(true);
				this.uploadImageService.uploadImageInsert(uploadImageVO);
				
			} catch (Exception e) {
				e.printStackTrace();		}
			}
			
		
		
		return new ModelAndView("/admin/viewPhoto", "photoVO", new PhotoVO());
	}
	@GetMapping(value = "/viewPhoto")

	public ModelAndView viewPhoto() {

		List<PhotoVO> photoList = this.photoService.photoVOSerchAll();
		return new ModelAndView("/admin/viewPhoto", "photoList", photoList);// view one welcome
	}
	
	
	
	
	@GetMapping(value = "/editPhoto")
	public ModelAndView editPhoto(@RequestParam int id) {
		PhotoVO photoVO = new PhotoVO();
		photoVO.setId(id);
		photoVO = this.photoService.searchPhotoById(photoVO);
		return new ModelAndView("/admin/addPhoto", "photoVO", photoVO);
	}

	@GetMapping(value = "/deletePhoto")

	public ModelAndView deletePhoto(@RequestParam int id) {
		PhotoVO photoVO = new PhotoVO();
		photoVO.setId(id);
		photoVO = this.photoService.searchPhotoById(photoVO);
		photoVO.setPhotoStatus(false);
		this.photoService.photoInsert(photoVO);
		return new ModelAndView("redirect:/viewPhoto");
	}

	@GetMapping(value="/viewImage")
	public ModelAndView viewImage(@RequestParam("id") int photoId, Model model)
	{
		PhotoVO photoVO = new PhotoVO();
		photoVO.setId(photoId);
		photoVO = this.photoService.searchPhotoById(photoVO);
		List<UploadImageVO> uploadImageList = this.uploadImageService.getImagesByPhoto(photoVO);
		model.addAttribute("photoVO", photoVO);
		
		return new ModelAndView("/admin/viewImages","uploadImageList",uploadImageList);
	}

	
}
*/