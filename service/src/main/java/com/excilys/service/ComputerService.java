package com.excilys.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;

import com.excilys.model.Computer;

/**
 * interface represent a computer service.
 * 
 * @author sarra
 *
 */

public interface ComputerService {

    /**
     * find all computer.
     * 
     * @return a list of computer.
     */
    List<Computer> findAll();

    /**
     * find all computer per page.
     * 
     * @param offset.
     * @param numberOfRecords.
     * @return a list of computer.
     */
   // List<Computer> findAllPerPage(int offset, int numberOfRecords);

    /**
     * find computer by id.
     * 
     * @param id.
     * @return a computer.
     */
    Computer findById(long id);

    /**
     * create computer.
     * 
     * @param obj.
     * @return a boolean .
     */
    Computer create(Computer obj);


    /**
     * delete a computer.
     * 
     * @param obj.
     */
    public void delete(Computer obj);

    /**
     * find computer by name.
     * 
     * @param name.
     * @return a list of computer.
     */
    Page<Computer> findByName(String name, Pageable pageable);
    
    /**
     * count a number of computer.
     * 
     * @return a long the number of computer.
     */
    long countComputer();

    /**
     * delete computer.
     * 
     * @param id.
     */
    void delete(long id);

    /**
     * 
     * @param pageRequest
     * @return
     */
    Page<Computer> findAllPerPages(PageRequest pageRequest);

    long countComputerByName(String name);
}
