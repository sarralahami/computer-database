package com.excilys.dao;

import java.util.List;

import com.excilys.model.Company;

public interface CompanyDao {

	/**
	 * find all company
	 * 
	 * @return
	 */
	public List<Company> findAll();

	/**
	 * find company by id
	 * 
	 * @param id
	 * @return company
	 */
	public Company findById(Long id);

	/**
	 * create company
	 * 
	 * @param company
	 * @return company
	 */
	public Company create(Company company);

}
