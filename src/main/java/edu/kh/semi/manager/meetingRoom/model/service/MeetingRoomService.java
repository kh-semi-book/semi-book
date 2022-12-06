package edu.kh.semi.manager.meetingRoom.model.service;

import java.util.Map;

import edu.kh.semi.manager.meetingRoom.model.vo.MeetingRoom;
import edu.kh.semi.member.model.vo.Member;


public interface MeetingRoomService {

	/** 예약 리스트 조회(검색이 있는 경우)
	 * @param cp
	 * @return
	 */
	Map<String, Object> selectBookList(int cp);

	/** 예약 리스트 조회(검색이 없는 경우)
	 * @param pm
	 * @param cp
	 * @return
	 */
	Map<String, Object> selectBookList(Map<String, Object> pm, int cp);

	/** 미팅룸 예약 상세보기 
	 * @param meetingBookNo
	 * @return
	 */
	MeetingRoom meetingRoomDetail(int meetingBookNo);
	
	/** 미팅룸 예약 문의 추가 
	 * @param inputMeetingRoom
	 * @return
	 */
	int meetingBookAdd(MeetingRoom inputMeetingRoom);

	
	/** 미팅룸 예약 상세보기 수정 
	 * @param inputMeetingRoom
	 * @return
	 */ 
	int meetingRoomDetailUpdate(MeetingRoom inputMeetingRoom);

	/** 저장 클릭시 업데이트
	 * @param meetingBookNo
	 * @return
	 */
	int processUpdate(MeetingRoom meetingRoom);


	

}
