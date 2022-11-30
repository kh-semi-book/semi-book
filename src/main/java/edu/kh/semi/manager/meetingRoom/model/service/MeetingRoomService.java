package edu.kh.semi.manager.meetingRoom.model.service;

import java.util.Map;


public interface MeetingRoomService {

	Map<String, Object> selectBookList(int cp);

	Map<String, Object> selectBookList(Map<String, Object> pm, int cp);


}
