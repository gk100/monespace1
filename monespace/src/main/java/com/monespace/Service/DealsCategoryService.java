package com.monespace.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.monespace.DAOImpl.DealsCategoryDAOImpl;
import com.monespace.model.DealsCategory;

@Service
public class DealsCategoryService {

	@Autowired
	private DealsCategoryDAOImpl dealsCategoryDAOImpl;

	@Transactional
	public void createDealsCategory(DealsCategory dealsCategory) {
		dealsCategoryDAOImpl.createDealsCategory(dealsCategory);
	}

	@Transactional
	public List<DealsCategory> listDealsCategories() {

		return dealsCategoryDAOImpl.listDealsCategories();
	}

	@Transactional
	public String getCategories() {
		return dealsCategoryDAOImpl.getCategories();
	}

	@Transactional
	public DealsCategory getIdFromName(String dealsCategoryName) {
		return dealsCategoryDAOImpl.getIdFromName(dealsCategoryName);
	}
	@Transactional
	public void deleteCategory(int dealsCategoryId) {
		dealsCategoryDAOImpl.deleteCategory(dealsCategoryId);
	}
	@Transactional
	public DealsCategory getById(int dealsCategoryId) {
		return dealsCategoryDAOImpl.getById(dealsCategoryId);
	}

}
