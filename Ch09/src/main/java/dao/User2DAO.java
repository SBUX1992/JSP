package dao;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import db.DBHelper;
import kr.co.jboard2.db.Sql;
import vo.User2VO;

public class User2DAO extends DBHelper{
	
	private static User2DAO instance = new User2DAO();
	public static User2DAO getInstance() {
		return instance;
	}
	
	private User2DAO() {}
	
	Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public void insertUser() {
		
	}
	
	public void selectUser() {
		
	}
	
	public User2VO selectUsers(String uid) {
		
		User2VO vo = null;
		try {
			logger.info("selectUsers ...");
			
			conn = getConnection();
			psmt = conn.prepareStatement(Sql.SELECT_USERS);
			psmt.setString(1, uid);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				vo = new User2VO();
				vo.setUid(rs.getString(1));
				vo.setName(rs.getString(2));
				vo.setHp(rs.getString(3));
				vo.setAge(rs.getInt(4));
			}
			close();
					
		}catch(Exception e) {
			logger.error(e.getMessage());
		}
		return vo;
	}
	
	public void updateUser() {
		
	}
	
	public void deleteUser() {
		
	}
	
	
}
