package webapp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import webapp.dto.MemberDTO;

public class MemberDAO {
	private Connection con;
	private PreparedStatement pstmt;
	private DataSource ds;
	
	public MemberDAO() {
		try {
			Context ctx = new InitialContext();
			Context envContext = (Context)ctx.lookup("java:/comp/env");
			ds = (DataSource)envContext.lookup("jdbc/mysql");
			con = ds.getConnection();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

	public boolean insertMember(MemberDTO dto) {
		boolean result = false;
		String query = "insert into member_tbl values (?,?,?,?,?,?,?,?,?,now())";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, dto.getUserId());
			pstmt.setString(2, dto.getUserPw());
			pstmt.setString(3, dto.getUserName());
			pstmt.setString(4, dto.getNickName());
			pstmt.setString(5, dto.getBirthDate());
			pstmt.setString(6, dto.getAddr());
			pstmt.setString(7, dto.getTel());
			pstmt.setString(8, dto.getGender());
			pstmt.setString(9, dto.getEmail());
			
			if(pstmt.executeUpdate() == 1) result = true;

			return result;
		}
		catch(Exception e) {
			e.printStackTrace();
			return result;
		}
	}
	
	public MemberDTO getUserInfo(String user_id) {
		MemberDTO dto = new MemberDTO();
		String query = "select * from member_tbl where user_id = ?";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, user_id);
			ResultSet rs = pstmt.executeQuery();
			
			rs.next();
			dto.setUserId(rs.getString("user_id"));
			dto.setUserPw(rs.getString("user_pw"));
			dto.setUserName(rs.getString("user_name"));
			dto.setNickName(rs.getString("nick_name"));
			dto.setBirthDate(rs.getString("birth_date"));
			dto.setAddr(rs.getString("addr"));
			dto.setTel(rs.getString("tel"));
			dto.setGender(rs.getString("gender"));
			dto.setEmail(rs.getString("email"));
			dto.setRegDate(rs.getDate("reg_date"));
			
			return dto;
		}
		catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public boolean updateMember(MemberDTO dto) {
		boolean result = false;
		String query = "update member_tbl set user_pw=?, nick_name=?, addr=?, tel=?, email=? where user_id=?";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, dto.getUserPw());
			pstmt.setString(2, dto.getNickName());
			pstmt.setString(3, dto.getAddr());
			pstmt.setString(4, dto.getTel());
			pstmt.setString(5, dto.getEmail());
			pstmt.setString(6, dto.getUserId());
			
			if(pstmt.executeUpdate() == 1) result = true;
			
			return result;
		}
		catch(Exception e) {
			e.printStackTrace();
			return result;
		}
	}
	
	public boolean deleteMember(String user_id) {
		boolean result = false;
		String query = "delete from member_tbl where user_id = ?";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, user_id);
			
			if(pstmt.executeUpdate() == 1) result = true;
			
			return result;
		}
		catch(Exception e) {
			e.printStackTrace();
			return result;
		}
	}
	
	public boolean checkLogin(String id, String pw) {
		boolean result = false;
		String query = "select * from member_tbl where user_id = ? and user_pw = ?";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			
			ResultSet rs = pstmt.executeQuery();
			return rs.next();
		}
		catch(Exception e) {
			e.printStackTrace();
			return result;
		}
	}
	
	public boolean checkId(String id) {
		boolean result = true;
		String query = "select * from member_tbl where user_id = ?";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			
			ResultSet rs = pstmt.executeQuery();
			return !(rs.next());
		}
		catch(Exception e) {
			e.printStackTrace();
			return result;
		}
	}
}
