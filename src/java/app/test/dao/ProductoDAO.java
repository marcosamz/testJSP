/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.test.dao;

import app.test.db.Database;
import app.test.models.Producto;
import java.sql.PreparedStatement;
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
public class ProductoDAO implements CRUDInterface {
    
    Database db = new Database();
    
    @Override
    public boolean add(Object obj) {
        Producto p = (Producto) obj;
        try {
            PreparedStatement ps = db.getPrepareStatement("INSERT INTO productos(nombre, precio, descripcion, estado) VALUES(?,?,?,?)");
            ps.setString(1, p.getNombre());
            ps.setDouble(2, p.getPrecio());
            ps.setString(3, p.getDescripcion());
            ps.setInt(4, p.getEstado());
            ps.executeUpdate();
            db.closeConection();
            return true;
        } catch(SQLException ex) {
            System.out.println(ex.getMessage());
            return false;
        }
    }

    @Override
    public boolean edit(Object obj) {
        Producto p = (Producto) obj;
        try {
            PreparedStatement ps = db.getPrepareStatement("UPDATE productos SET nombre=?, precio=?, descripcion=?, estado=? WHERE id=?");
            ps.setString(1, p.getNombre());
            ps.setDouble(2, p.getPrecio());
            ps.setString(3, p.getDescripcion());
            ps.setInt(4, p.getEstado());
            ps.setInt(5, p.getId());
            ps.executeUpdate();
            db.closeConection();
            return true;
        } catch(SQLException ex) {
            System.out.println(ex.getMessage());
            return false;
        }
    }

    @Override
    public boolean delete(Object obj) {
        Producto p = (Producto) obj;
        try {
            PreparedStatement ps = db.getPrepareStatement("DELETE FROM productos WHERE id=?");
            ps.setInt(1, p.getId());
            ps.executeUpdate();
            db.closeConection();
            return true;
        } catch(SQLException ex) {
            System.out.println(ex.getMessage());
            return false;
        }
    }

    @Override
    public List<Producto> getAll() {
        List<Producto> ls = new LinkedList<>();
        try {
            ResultSet rs = db.getPrepareStatement("SELECT * FROM productos").executeQuery();
            while (rs.next()) {
                ls.add(new Producto(
                        rs.getInt(1), 
                        rs.getString(2), 
                        rs.getDouble(3), 
                        rs.getString(4), 
                        rs.getInt(5))
                );
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ls;
    }

    @Override
    public List<Producto> getFilter(Object column, Object value) {
        List<Producto> ls = new LinkedList<>();
        try {
            ResultSet rs = db.getPrepareStatement("SELECT * FROM productos WHERE "+column+"="+value+"").executeQuery();
            while (rs.next()) {
                ls.add(new Producto(
                        rs.getInt(1), 
                        rs.getString(2), 
                        rs.getDouble(3), 
                        rs.getString(4), 
                        rs.getInt(5))
                );
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ls;
    }

    @Override
    public List<?> getFilterLike(Object column, Object value) {
        List<Producto> ls = new LinkedList<>();
        try {
            ResultSet rs = db.getPrepareStatement("SELECT * FROM productos WHERE "+column+" LIKE %"+value+"%").executeQuery();
            while (rs.next()) {
                ls.add(new Producto(
                        rs.getInt(1), 
                        rs.getString(2), 
                        rs.getDouble(3), 
                        rs.getString(4), 
                        rs.getInt(5))
                );
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ls;
    }
    
}