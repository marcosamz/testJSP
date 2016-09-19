/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.test.dao;

import java.util.List;

/**
 *
 * @author Ing. Marcos Menéndez
 */
public interface CRUDInterface {
    
    public boolean add(Object obj);
    public boolean edit(Object obj);
    public boolean delete(Object obj);
    public List<?> getAll();
    public List<?> getFilter(Object column, Object value);
    public List<?> getFilterLike(Object column, Object value);
    
}
