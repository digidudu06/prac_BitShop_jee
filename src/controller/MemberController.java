package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;

/**
 * Servlet implementation class MemberController
 */
@WebServlet("/member.do")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   		String cmd = request.getParameter("cmd");
   		cmd = (cmd==null) ? "move" : cmd;
   		System.out.println("mem cmd : "+cmd);
   		String dir = request.getParameter("dir");
   		dir = (dir==null) ? request.getServletPath().replace(".do", "").substring(1) : dir;
   		System.out.println("mem dir : "+dir);
   		String page = request.getParameter("page");
   		page = (page==null) ? "main" : page ;
   		System.out.println("mem page : "+page);
   		switch(cmd) {
   		case "login": 
   			System.out.println("로그인 케이스");
   			String id = request.getParameter("id");
   			String pass = request.getParameter("pass");
   			if(!(id.equals("test") && pass.equals("test"))) {
   				dir="";
   				page="index";
   			}
   			request.setAttribute("name", "testName");
   			request.setAttribute("compo", "login-success");
   			System.out.println("dir : "+dir +" page : "+page);
   			Command.move(request, response, dir, page);
   			break;
   		case "move": 
   			System.out.println("무브 케이스");
   			Command.move(request, response, dir, page);
   			break;
   		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
