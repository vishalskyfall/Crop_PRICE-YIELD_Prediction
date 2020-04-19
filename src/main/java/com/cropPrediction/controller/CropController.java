/*package com.cropPrediction.controller;

import java.io.File;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.cropPrediction.model.CropVO;
import com.cropPrediction.model.UploadImageVO;
import com.cropPrediction.service.CropService;
import com.cropPrediction.service.UploadImageService;
import com.cropPrediction.utils.BaseMethod;

@Controller
public class CropController {

	@Autowired
	private CropService cropService;
	@Autowired
	private UploadImageService uploadImageService;

	@GetMapping(value = "/admin/loadCrop")
	public ModelAndView loadCrop() {

		return new ModelAndView("/admin/addCrop", "cropVO", new CropVO());
	}

	@PostMapping(value = "/admin/addCrop")
	public ModelAndView addCrop(@ModelAttribute CropVO cropVO, @RequestParam("cropFiles") MultipartFile[] files,
			HttpServletRequest request) {

		cropVO.setCropStatus(true);
		this.cropService.cropInsert(cropVO);

		for (MultipartFile file : files) {
			int count = this.uploadImageService.imageCountOfCrop(cropVO) + 1;
			String bucket_name = "cropprediction007";
				String key_name = "crops/" + cropVO.getCropName() + cropVO.getId() + "/" + count+file.getOriginalFilename();

			try {
				UploadImageVO uploadImageVO = new UploadImageVO();
				uploadImageVO.setCropVO(cropVO);

				String path = request.getServletContext().getRealPath("/") + "doc/";

				File imageFile = BaseMethod.CreateFile(file, path, cropVO.getId() + "-" + count);

				URL url = BaseMethod.uploadfile(bucket_name, key_name, imageFile);

				uploadImageVO.setImageLink(url.toString());
				uploadImageVO.setImageStatus(true);
				this.uploadImageService.uploadImageInsert(uploadImageVO);

			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return new ModelAndView("/admin/viewCrop");
	}

	@GetMapping(value = "/admin/viewCrop")

	public ModelAndView viewCrop() {
		List<CropVO> cropList = this.cropService.cropVOSearchAll();
		return new ModelAndView("/admin/viewCrop", "cropList", cropList);// view one welcome
	}
	
	
	@GetMapping(value = "/admin/editCrop")
	public ModelAndView editCrop(@RequestParam int id) {
		CropVO cropVO = new CropVO();
		cropVO.setId(id);
		cropVO = this.cropService.searchCropById(cropVO);
		return new ModelAndView("/admin/addCrop", "cropVO", cropVO);
	}

	@GetMapping(value = "/admin/deleteCrop")

	public ModelAndView deleteCrop(@RequestParam int id) {
		CropVO cropVO = new CropVO();
		cropVO.setId(id);
		cropVO = this.cropService.searchCropById(cropVO);
		cropVO.setCropStatus(false);
		List<UploadImageVO> uploadImageList = this.uploadImageService.getImagesByCrop(cropVO);
		for(UploadImageVO uploadImageVO : uploadImageList)
		{
			uploadImageVO.setImageStatus(false);
			this.uploadImageService.uploadImageInsert(uploadImageVO);
		}
		this.cropService.cropInsert(cropVO);
		return new ModelAndView("redirect:/admin/viewCrop");
	}


	@GetMapping(value="/admin/viewImage")
	public ModelAndView viewImage(@RequestParam("id") int cropId)
	{
		CropVO cropVO = new CropVO();
		cropVO.setId(cropId);
		List<UploadImageVO> uploadImageList = this.uploadImageService.getImagesByCrop(cropVO);
	//	System.out.println(uploadImageList);
		return new ModelAndView("/admin/viewImages","uploadImageList",uploadImageList);
	}
	
}
*/