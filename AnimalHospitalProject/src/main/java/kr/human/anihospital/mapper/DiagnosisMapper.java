package kr.human.anihospital.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.human.anihospital.vo.DiagnosisAnimalVO;
import kr.human.anihospital.vo.DiagnosisDetailInMedicineVO;
import kr.human.anihospital.vo.postscriptOneDiagnosisVO;

@Mapper
public interface DiagnosisMapper {
	DiagnosisAnimalVO selectDiagnosisAnimalInfo(int seqDignosis) throws Exception;
	List<DiagnosisDetailInMedicineVO> selectDiagnosisDetailInMedicine() throws Exception;
	postscriptOneDiagnosisVO selectPostscriptOneDiagnosis() throws Exception;
}
