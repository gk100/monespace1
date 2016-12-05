package com.monespace.testcase;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.monespace.DAO.DealsCategoryDAO;
import com.monespace.model.DealsCategory;

import org.junit.Assert;

public class CategoryTestCase {

	@Autowired
	AnnotationConfigApplicationContext context;
	
	@Autowired
	DealsCategory dealsCategory;
	
	@Autowired
	DealsCategoryDAO dealsCategoryDAO;
	
	@Autowired
	SessionFactory sessionFactory;
	
	@BeforeClass
	public void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.monespace");
		context.refresh();
		
		DealsCategory dealsCategory= (DealsCategory) context.getBean("dealsCategory");
		
		DealsCategoryDAO dealsCategoryDAO = (DealsCategoryDAO) context.getBean("dealsCategoryDAO");
	}
	
	@Test
	public void createCategoryTestCase () {
		dealsCategory.setdealsCategoryId(100);
		dealsCategory.setdealsCategoryName("Buy Property");
		dealsCategory.setDealsCategoryDescription("Buy Residential/Commercial Property");
		
		//Boolean status = dealsCategoryDAO.createDealsCategory(dealsCategory);
		//Assert.assertEquals("Create Category Test case",true, status);
	}
	
	public boolean createCategory(DealsCategory dealsCategory) {
		try {
			sessionFactory.getCurrentSession().save(dealsCategory);
			return true;
		}
		catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}
	}
}
