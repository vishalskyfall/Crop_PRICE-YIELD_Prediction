/*package com.cropPrediction.controller;

import java.io.File;
import java.net.URL;
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

import com.cropPrediction.model.DatasetVO;
import com.cropPrediction.service.DatasetService;
import com.cropPrediction.utils.BaseMethod;

@Controller
public class DatasetController {
	@Autowired
	private DatasetService datasetService;
	
	@GetMapping(value="/admin/loadDataset")
	public ModelAndView loadDataset() {

		return new ModelAndView("/admin/addDataset","datasetVO",new DatasetVO());
	}
	
	@GetMapping(value="/admin/viewDataset")
	public ModelAndView viewDataset() {
		List<DatasetVO> datasetList = this.datasetService.datasetSearchAll();	
		return new ModelAndView("/admin/viewDataset","datasetList",datasetList);
	}
	
	@PostMapping(value="/admin/addDataset")
	public ModelAndView addDataset(@ModelAttribute DatasetVO datasetVO, 
			@RequestParam("datasetFile") MultipartFile datasetFile,
			HttpServletRequest request) {
	
		String bucket_name = "cropprediction007";
		String key_name = "dataset/" + datasetVO.getDatasetName()+ datasetVO.getId()+datasetFile.getOriginalFilename();

		String path = request.getServletContext().getRealPath("/") + "doc/dataset/";

		File mydatasetFile = BaseMethod.CreateFile(datasetFile, path);

		URL url = BaseMethod.uploadfile(bucket_name,key_name , mydatasetFile);

		datasetVO.setDatasetLink(url.toString());
		datasetVO.setDatasetStatus(true);
		
		this.datasetService.datasetInsert(datasetVO);
		return new ModelAndView("redirect:/admin/viewDataset");
		
	}
	
	@GetMapping(value="/admin/editDataset")
	public ModelAndView editDataset(@RequestParam int id) {
		DatasetVO datasetVO = new DatasetVO();
		datasetVO.setId(id);
		
		datasetVO = this.datasetService.searchDatasetById(datasetVO);
		
				

		return new ModelAndView("/admin/addDataset","datasetVO",datasetVO);
	}
	
	@GetMapping(value="/admin/deleteDataset")
	public ModelAndView deleteDataset(@RequestParam int id) {
		DatasetVO datasetVO = new DatasetVO();
		datasetVO.setId(id);
		
		datasetVO = this.datasetService.searchDatasetById(datasetVO);
		
		datasetVO.setDatasetStatus(false);			
		this.datasetService.datasetInsert(datasetVO);	
		return new ModelAndView("redirect:/admin/viewDataset");
	}
}
*/