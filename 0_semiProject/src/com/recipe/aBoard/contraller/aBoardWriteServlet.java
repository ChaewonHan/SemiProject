package com.recipe.aBoard.contraller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.recipe.aBoard.dao.aBoardDAO;
import com.recipe.aBoard.service.aBoardService;
import com.recipe.aBoard.vo.aBoardVO;

/**
 * Servlet implementation class aBoardWriteProc
 */
@WebServlet("/aBoardWriteServlet.do")
public class aBoardWriteServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		execute(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		execute(request, response);
	}
	protected void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		aBoardVO vo = new aBoardVO();
		vo.setBoardTitle(request.getParameter("title"));
		vo.setPassword(request.getParameter("password"));
		vo.setBoardContent(request.getParameter("content"));
		
		System.out.println(vo.getBoardTitle());
		System.out.println(vo.getPassword());
		System.out.println(vo.getBoardContent());
		int result = new aBoardService().insertBoard(vo);
		
		if(result>0) {
			RequestDispatcher dis = request.getRequestDispatcher("/aBoardListServlet.do");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis = request.getRequestDispatcher("/aBoard/aBoardWriteFormFail.jsp");
			dis.forward(request, response);
		}

	}

}
