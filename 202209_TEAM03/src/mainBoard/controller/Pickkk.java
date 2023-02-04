package mainBoard.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import mainBoard.service.ImainBoardService;
import mainBoard.service.MainBoardServiceImpl;
import vo.MainJoinVO;

/**
 * 세션값을 보내서 해당 리스트를 뿌려주는 서블릿 
 */
@WebServlet("/mainboard/pickkkk.do")
public class Pickkk extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		response.setCharacterEncoding("utf-8");
		
		//응답데이터가 JSON일때의 ContentType 설정 
		response.setContentType("application/json; charset=utf-8");
		
		ImainBoardService service = MainBoardServiceImpl.getInstance();
		
		// JSON라이브러리 객체 생성 
		Gson gson = new Gson(); 
		
		// json으로 변환된 데이터가 저장될 변수 선언
		String jsonData = null;  
		
		HttpSession session = request.getSession();  
		String p_name = (String) session.getAttribute("PNAME");
		System.out.println("값 잘 넘어오니?" + p_name);
		
		// 서비스객체로 DB받아오기 
		List<MainJoinVO> list = service.mainBoardpickList(p_name);
		
		jsonData = gson.toJson(list);
		
		System.out.println("jsonData ==> " + jsonData);
		
		PrintWriter out = response.getWriter();
		out.write(jsonData); // JSON데이터를 응답으로 보내준다. 
		response.flushBuffer();
	}

}
