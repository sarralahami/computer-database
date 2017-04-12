package com.excilys.computerdatabase.daos;

import java.util.List;

import com.excilys.computerdatabase.models.Company;

public interface CompanyDao {

	/**
	 * find all company
	 * @return
	 */
	public abstract List<Company> findAll();
	
	/**
	 * find company by id 
	 * @param id 
	 * @return company
	 */
	public abstract Company findById(Long id);
	
	/**
	 * create company
	 * @param company
	 * @return company
	 */
	public abstract Company create(Company company);
	
	
	

}
