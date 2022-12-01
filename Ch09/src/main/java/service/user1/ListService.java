package service.user1;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.User1DAO;
import vo.User1VO;

public class ListService {
	private static ListService instance = new ListService();
	public static ListService getInstance() {
		return instance;
	}
	
	private ListService() {}
	
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) {
		
		List<User1VO> users = User1DAO.getInstance().selectUsers();
		
		// View에서 데이터 출력을 위한 request Scope 데이터 설정 
		req.setAttribute("users", users);
		
		return "/user1/list.jsp";
	}
}