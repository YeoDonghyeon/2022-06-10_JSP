package mvc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import util.DatabaseManager;

// DAO => Data Access Object
//  DB랑 통신을 하기 위한 역할
//  INSERT, SELECT, ... 쿼리를 실행하고 실행 결과를 받아오는 역할

public class MemberDAO {
	// 회원 가입
	public boolean insertMember(MemberDTO memberDto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		// 회원 가입에 실패했다는 가정으로 시작
		boolean result = false;
		
		try {
			conn = DatabaseManager.getConnection();
			
			String sql = "INSERT INTO member VALUES(?, ?, ?, ?) ";
			
			pstmt = DatabaseManager.getPstmt(conn, sql);
			pstmt.setString(1, memberDto.getId());
			pstmt.setString(2, memberDto.getPw());
			pstmt.setString(3, memberDto.getName());
			pstmt.setString(4, memberDto.getEmail());
			
			pstmt.executeUpdate();
			
			return true;
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			DatabaseManager.closePstmt(pstmt);
			DatabaseManager.closeConn(conn);
		}
		return result;
	}
	
	public MemberDTO selectMember(String id) {
		return null;
	}
	
	public boolean updateMember(MemberDTO memberDto) {
		return false;
	}
	
	public boolean deleteMember(String id) {
		return false;
	}

}
