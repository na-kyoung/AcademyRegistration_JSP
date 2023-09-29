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

public class subjectDao {
	
	//JDBC를 이용한 DB 연동
	String id = "root";
	String password = "111111";
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
			
			System.out.println(" ** 커넥션 풀 ** 을 이용하여 DB 연결 성공!!");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public void connect() {
		try {
			//1. 드라이버 로딩
			Class.forName("com.mysql.jdbc.Driver");
			//2. DB 연결
			conn = DriverManager.getConnection(url, id, password);
			
			System.out.println("MySQL 연결 성공");
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

	//언어 검색시 관련 수업만 출력
	public ArrayList<subjectDo> getSubject(String lang) {
		System.out.println("getSubject() 처리 시작");
		System.out.println(lang);
		connect_cp();
		
		//return 데이터
		ArrayList<subjectDo> sList = new ArrayList<>();
		
		//SQL 처리시작
		String sql = "select * from mp_sub where lang=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,lang);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				subjectDo sdo = new subjectDo();
				sdo.setName(rs.getString(1));
				sdo.setLang(rs.getString(2));
				sdo.setTeacher(rs.getString(3));
				sdo.setPrice(rs.getString(4));
				
				sList.add(sdo);
			}
			System.out.println("getSubject() 처리 완료");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		disConnect();
		return sList;
	}
	
	
	
}
