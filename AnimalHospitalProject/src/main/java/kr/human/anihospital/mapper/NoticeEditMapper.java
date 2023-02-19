package kr.human.anihospital.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.human.anihospital.vo.NoticeOneDetailVO;
import kr.human.anihospital.vo.NoticeVO;

@Mapper
public interface NoticeEditMapper {
	//----------------------------------------------------------------------------------------------------
	// 수정화면으로 이동했을 때 수정할 내용을 화면에 표시해줄 메서드
	//----------------------------------------------------------------------------------------------------
	List<NoticeOneDetailVO> selectOneDetailNotice(int seqNotice) throws Exception;
	
	//----------------------------------------------------------------------------------------------------
	// 공지 수정 및 수정 내용을 화면에 돌려줄 메서드
	//----------------------------------------------------------------------------------------------------
	void updateNotice(NoticeVO noticeVO) throws Exception;
}
