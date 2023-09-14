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

public class registerDao {
	
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
	
	//새로운 주소데이터 DB에 저장 메소드
	public void insertSub(registerDo rdo) {
		System.out.println("insertAddr() 처리 시작");
		connect_cp();
		
		//SQL 처리
		String sql = "insert into mp_register (name, tel, email, subject, payment) "
				+ "values (?,?,?,?,?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, rdo.getName());
			pstmt.setString(2, rdo.getTel());
			pstmt.setString(3, rdo.getEmail());
			pstmt.setString(4, rdo.getSubject());
			pstmt.setString(5, rdo.getPayment());
			
			pstmt.executeUpdate();
			
			System.out.println("insertAddr() 처리 완료");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		disConnect();
		
	}
	
	//전체 데이터 가져오기
	public ArrayList<registerDo> getAllInfo(){
		System.out.println("getRinfo() 처리시작");
		connect_cp();
		
		//return 데이터
		ArrayList<registerDo> aList = new ArrayList<>();
		
		//SQL 처리 시작
		String sql = "select * from mp_register";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				registerDo rdo = new registerDo();
				rdo.setNum(rs.getInt(1));
				rdo.setName(rs.getString(2));
				rdo.setTel(rs.getString(3));
				rdo.setEmail(rs.getString(4));
				rdo.setSubject(rs.getString(5));
				rdo.setPayment(rs.getString(6));
				
				aList.add(rdo);
			}
			System.out.println("getRinfo() 처리완료");
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		disConnect();
		return aList;
	}
	
	//하나의 주소록 데이터 가져오기
	public registerDo getOneInfo(int num) {
		System.out.println("getOneInfo() 처리시작");
		connect_cp();
		
		//SQL 처리시작
		registerDo rdo = new registerDo();
		String sql = "select * from mp_register where num=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,num);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				rdo.setNum(rs.getInt(1));
				rdo.setName(rs.getString(2));
				rdo.setTel(rs.getString(3));
				rdo.setEmail(rs.getString(4));
				rdo.setSubject(rs.getString(5));
				rdo.setPayment(rs.getString(6));
			}
			System.out.println("getOneInfo() 처리완료");
		} catch(SQLException e) {
			e.printStackTrace();
		}
		disConnect();
		return rdo;
	}
	
	//수정된 데이터 저장하기
	public void modifyInfo(registerDo rdo) {
		System.out.println("modifyInfo() 처리 시작");
		connect_cp();
		
		//SQL처리
		String sql = "update mp_register set name=?, tel=?, email=?, subject=?, payment=? where num=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, rdo.getName());
			pstmt.setString(2, rdo.getTel());
			pstmt.setString(3, rdo.getEmail());
			pstmt.setString(4, rdo.getSubject());
			pstmt.setString(5, rdo.getPayment());
			pstmt.setInt(6, rdo.getNum());
			
			pstmt.executeUpdate();
			
			System.out.println("modifyInfo() 처리 완료");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		disConnect();
	}
	
	//선택된 데이터 삭제하기
	public void deleteInfo(registerDo rdo) {
		System.out.println("deleteInfo() 처리 시작");
		connect_cp();
		
		//SQL처리
		String sql = "delete from mp_register where num=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, rdo.getNum());
			
			pstmt.executeUpdate();
			
			System.out.println("deleteInfo() 처리 완료");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		disConnect();
		
	}
}
