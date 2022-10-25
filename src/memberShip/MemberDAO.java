package memberShip;
import java.sql.DriverManager;

import javax.servlet.ServletContext;

import common.JDBConnect;
public class MemberDAO extends JDBConnect {
	public MemberDAO(String driver, String url, String id, String pwd) {
		try {
			// JDBC 드라이버 로드
			Class.forName(driver);
			// DB에 연결
			con = DriverManager.getConnection(url, id, pwd);
			System.out.println("DB 연결 성공 (인수 생성자)");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}//JDBConnect()2 end
	
	//명시한 데이터베이스로 연결이 완료된 MemberDAO 객체를 생성합니다.
	public  MemberDAO(ServletContext application) {
		super(application);
	}
	
	//명시한 아이디/패스워드가 일치하는 회원 정보를 반환합니다.
	public MemberDTO getMemberDTO(String uid, String upass) {
		MemberDTO dto = new MemberDTO(); //회원정보 DTO 객체 생성
		String query = "SELECT * FROM member WHERE id=? AND pass=?"; //쿼리문 템플릿 //*
		
		try {
			//쿼리 실행
			psmt = con.prepareStatement(query);//동적 쿼리문 준비
			psmt.setString(1, uid); //쿼리문의 첫번째 인파라미터에 값 설정
			psmt.setString(2, upass);//쿼리문의 두번째 인파라미터에 값 설정
			rs = psmt.executeQuery(); //쿼리문 실행
			
			//결과 처리
			if(rs.next()) {
				//쿼리 결과로 얻은 회원 정보를 DTO 객체에 저장
				dto.setId(rs.getString("id"));
				dto.setPass(rs.getString("pass"));
				dto.setName(rs.getString("name"));
				dto.setRegidate(rs.getString("regidate"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return dto; //DTO 객체 반환	
	}
	
	//회원정보 데이터를 받아서 DB에 추가합니다.
		public int insertMember(MemberDTO dto) {
			int result = 0;
			
			try {
				//INSERT 쿼리문 작성
				 String query = "INSERT INTO member ( "
	                     + " id,pass,name) "
	                     + " VALUES ( "
	                     + " ?, ?, ? )";  
				
				 psmt = con.prepareStatement(query);  // 동적 쿼리 
		         psmt.setString(1, dto.getId());  
		         psmt.setString(2, dto.getPass());
		         psmt.setString(3, dto.getName());  
				
		         result = psmt.executeUpdate(); 
				
			} catch (Exception e) {
				System.out.println("회원정보 입력 중 예외 발생");
				e.printStackTrace();
			}
			return result;
		}
}
