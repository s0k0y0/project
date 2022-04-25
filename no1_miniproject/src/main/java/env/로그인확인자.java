package env;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class 로그인확인자 extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request, 
			                 HttpServletResponse response, 
			                 Object handler)throws Exception {
		
		HttpSession session = request.getSession(false);
		boolean 로그인중 =false;
		
		//session=false, 로그인중=false
		
		//session이 null아니고 id가 null이 아닐경우 로그인중
		if(session!=null&& session.getAttribute("id")!=null) {
			로그인중=true;
		}
		
		//로그인중이 true 아니라면 로그아웃으 상태라고 판단하고 핸들러 false?...뭔소리야ㅠㅜ
		if(로그인중!=true) {
			
			response.sendRedirect("/main.jsp");//로그인중이 아니나면 메인창으로 무한 돌아가기
			return false;
		}
		//true 종료면  요청이  컨트롤러에 도달한다.
		return true;
	}
}
