package edu.kh.semi.manager.meetingRoom.model.service;

import java.util.Map;


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

	/** 진행상태 변경 
	 * @param input
	 * @return
	 */
	int changeProcess(int input);


}
