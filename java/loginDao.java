package myProject;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class loginDao {
	
	//JDBC를 이용한 DB 연동
	String dbid = "root";
	String dbpassword = "111111";
	String url = "jdbc:mysql://localhost:3306/jsp.db?characterEncoding=utf-8";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	//커넥션 풀을 이용하여 DB 연결 메소드
	public void connect_cp() {
		try {
			Context initctx = new InitialContext();
			
			//Context.xml 접근
			Context envctx = (Context)initctx.lookup("java:/comp/env");
			
			//커넥션 풀에 접근 (커넥션을 1개 얻기 위해서)
			DataSource ds = (DataSource) envctx.lookup("jdbc/pool");
			
			//커넥션을 하나 빌려오기
			conn = ds.getConnection();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void connect() {
		try {
			//1. 드라이버 로딩
			Class.forName("com.mysql.jdbc.Driver");
			//2. DB 연결
			conn = DriverManager.getConnection(url, dbid, dbpassword);
		}
		catch(Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void disConnect() {
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	//새로운 데이터 DB에 저장 메소드
	public void insertLogin(loginDo ldo) {
		System.out.println("insertLogin() 처리 시작");
		connect_cp();
		
		//SQL 처리
		String sql = "insert into mp_login (name, id, password, tel, email) "
				+ "values (?,?,?,?,?)";

 
		 try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ldo.getName());
			pstmt.setString(2, ldo.getId());
			pstmt.setString(3, ldo.getPassword());
			pstmt.setString(4, ldo.getTel());
			pstmt.setString(5, ldo.getEmail());
			
			pstmt.executeUpdate();
			
			System.out.println("insertLogin() 처리 완료");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		disConnect();
	}
	
	//전체 데이터 가져오기
	public ArrayList<loginDo> getAllLogin(){
		System.out.println("getAllLogin() 처리 시작");
		connect_cp();
		
		//return 데이터
		ArrayList<loginDo> aList = new ArrayList<>();
		
		//SQL 처리 시작
		String sql = "select * from mp_login";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				loginDo ldo = new loginDo();
				ldo.setNum(rs.getInt(1));
				ldo.setName(rs.getString(2));
				ldo.setId(rs.getString(3));
				ldo.setPassword(rs.getString(4));
				ldo.setTel(rs.getString(5));
				ldo.setEmail(rs.getString(6));
				
				aList.add(ldo);
			}
			System.out.println("getAllLogin() 처리 완료");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		disConnect();
		return aList;
	}
	
	//하나의 주소록 데이터 가져오기
	public loginDo getOneLogin(int num) {
		connect_cp();
		
		//SQL 처리시작
		loginDo ldo = new loginDo();
		String sql = "select * from mp_login where num=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,num);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ldo.setNum(rs.getInt(1));
				ldo.setName(rs.getString(2));
				ldo.setId(rs.getString(3));
				ldo.setPassword(rs.getString(4));
				ldo.setTel(rs.getString(5));
				ldo.setEmail(rs.getString(6));
			}
		} catch(SQLException e) {
			e.printStackTrace();
		}
		disConnect();
		return ldo;
	}
	
	public int loginInfo(String id, String password) {
		connect_cp();
		System.out.println("login sql 처리시작");
		
		loginDo ldo = new loginDo();
		String SQL = "select password from mp_login where id=?";
		
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, id); //sql Injection 공격 방어 수단 : 1번째 물음표에 userID 입력
			rs = pstmt.executeQuery(); // 쿼리 실행 
			if (rs.next()) {
				if (rs.getString(1).equals(password)) { // rs.getString(1) : select된 첫번째 컬럼
					return 1; //로그인 성공
					
				}else
					return 0; // 비밀번호 틀림
			}
			return -1; // 아이디 없음 
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		disConnect();
		return -2; //DB 오류 
	}
	
}
