/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.test.dao;

import app.test.db.Database;
import app.test.models.Producto;
import app.test.models.Salida;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Ing. Marcos Menéndez
 */
public class SalidaDAO implements CRUDInterface {
    
    Database db = new Database();

    @Override
    public boolean add(Object obj) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean edit(Object obj) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(Object obj) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Salida> getAll() {
        List<Salida> ls = new LinkedList<>();
        try {
            ResultSet rs = db.getPrepareStatement("SELECT * FROM salida").executeQuery();
            while (rs.next()) {
                ls.add(new Salida(
                        rs.getInt(1), 
                        rs.getString(2), 
                        rs.getInt(3),
                        rs.getString(4))
                );
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ls;
    }

    @Override
    public List<?> getFilter(Object column, Object value) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<?> getFilterLike(Object column, Object value) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
