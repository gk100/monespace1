package com.monespace.handler;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.hql.internal.ast.QuerySyntaxException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.transaction.CannotCreateTransactionException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class MonEspaceExceptionHandler {

	private static final Logger logger = LoggerFactory.getLogger(MonEspaceExceptionHandler.class);
	
	@ExceptionHandler(SQLException.class)
	public ModelAndView handleSQLException (HttpServletRequest request, Exception e) {
		logger.error("SQLException Occured:: URL="+request.getRequestURL());
		logger.error("SQLException Occured:: URL="+e.getMessage());
		ModelAndView mv = new ModelAndView("error");
		mv.addObject("message", "It seems some of the table or few fields does not exist in DB");
		mv.addObject("errorMessage", e.getMessage());
		
		return mv;
	}
	
	@ExceptionHandler(CannotCreateTransactionException.class)
	public ModelAndView dbServerNotStarted(HttpServletRequest request, Exception e) {
		logger.error("SQLException Occured::URL="+request.getRequestURL());
		logger.error("SQLException Occured::URL="+e.getMessage());
		ModelAndView mv = new ModelAndView("error");
		mv.addObject("message", "It seems Database server not started");
		mv.addObject("errorMessage", e.getMessage());
		
		return mv;
	}
	
//	@ExceptionHandler(QuerySyntaxException.class)
//	public String handleQuerySyntaxException.class(HttpServletRequest request, Exception e) {
//		logger.error("Query Syntax Exception Occured::URL="+request.getRequestURL());
//		logger.error("Query Syntax Exception Occured::URL="+e.getMessage());
//		ModelAndView mv= new ModelAndView("error");
//		mv.addObject("message", "It seems one of the query is not proper See the logger for more");
//		mv.addObject("errorMessage", e.getMessage());
//		
//		return "database_error";
//	}
	
	
}
