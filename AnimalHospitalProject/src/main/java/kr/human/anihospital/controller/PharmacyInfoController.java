package kr.human.anihospital.controller;

import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.human.anihospital.service.PharmacyInfoService;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class PharmacyInfoController {

	@Autowired
	PharmacyInfoService pharmacyInfoService;

	@PostMapping("/pharmacyAddOk")
	public String insertPharmacy(@RequestParam Map<String, String> map, Model model) {
		log.info("받은 값 : {}", map);
		pharmacyInfoService.insertPharmacy(map);
		return "redirect:pharmacyMap";
	}

	@PostMapping("/pharmacyEditOk")
	public String updatePharmacy(@RequestParam Map<String, String> map, Model model) {
		log.info("받은 값 : {}", map);
		int seq = 1; // 추후 지도 기능 구현시 seq를 웹에서 받아와야함.
		pharmacyInfoService.updatePharmacy(map, seq);
		return "redirect:pharmacyMap";
	}
}