package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import domain.AccountBean;
import service.AccountService;
import service.AccountServiceImpl;

/**
 * Servlet implementation class AccountController
 */
@WebServlet("/account.do")
public class AccountController extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cmd = request.getParameter("cmd");
		System.out.println("accountCmd: "+cmd);
		String dir = request.getParameter("dir");
		dir = (dir==null) ? dir=request.getServletPath().substring(1, request.getServletPath().indexOf('.')) : dir ;
		System.out.println("accountDir : "+dir);
		String page = request.getParameter("page");
		page = (page==null)? "main" : page ;
		System.out.println("accountPage : "+page);
		
		AccountService accountService = new AccountServiceImpl();
		AccountBean account = null;
		switch((cmd==null) ? "move" : cmd ) {
   		case "move": 
   			Command.move(request, response, dir, page);
   			break;
   		case "open-form": 
   			request.setAttribute("money", request.getParameter("money"));
   			String accNum = accountService.createAccountNum();
   			request.setAttribute("accNum", accNum);
   			String today = accountService.today();
   			request.setAttribute("today", today);
   			Command.move(request, response, dir, page);
   			break;
   	/*	case "find-by-account":
   			account = accountService.findByAccount(request.getParameter("accountNum"));
   			request.setAttribute("accountNum", account);
   			Command.move(request, response, dir, page);
   			break;*/
   		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
