/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.test.dao;

import app.test.db.Database;
import app.test.models.Usuario;
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
public class UsuarioDAO implements CRUDInterface {
    
    Database db = new Database();

    @Override
    public boolean add(Object obj) {
        Usuario u = (Usuario) obj;
        try {
            PreparedStatement ps = db.getPrepareStatement("INSERT INTO usuarios(email, password, nombre, apellido) VALUES(?,?,?,?)");
            ps.setString(1, u.getEmail());
            ps.setString(2, u.getPassword());
            ps.setString(3, u.getNombre());
            ps.setString(4, u.getApellido());
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
        Usuario u = (Usuario) obj;
        try {
            PreparedStatement ps = db.getPrepareStatement("UPDATE usuarios SET email=?, password=?, nombre=?, apellido=? WHERE id=?");
            ps.setString(1, u.getEmail());
            ps.setString(2, u.getPassword());
            ps.setString(3, u.getNombre());
            ps.setString(4, u.getApellido());
            ps.setInt(5, u.getId());
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
        Usuario u = (Usuario) obj;
        try {
            PreparedStatement ps = db.getPrepareStatement("DELETE FROM usuarios WHERE id=?");
            ps.setInt(1, u.getId());
            ps.executeUpdate();
            db.closeConection();
            return true;
        } catch(SQLException ex) {
            System.out.println(ex.getMessage());
            return false;
        }
    }

    @Override
    public List<Usuario> getAll() {
        List<Usuario> ls = new LinkedList<>();
        try {
            ResultSet rs = db.getPrepareStatement("SELECT * FROM usuarios").executeQuery();
            while (rs.next()) {
                ls.add(new Usuario(
                        rs.getInt(1), 
                        rs.getString(2), 
                        rs.getString(3), 
                        rs.getString(4), 
                        rs.getString(5))
                );
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ls;
    }

    @Override
    public List<Usuario> getFilter(Object column, Object value) {
        List<Usuario> ls = new LinkedList<>();
        try {
            ResultSet rs = db.getPrepareStatement("SELECT * FROM usuarios WHERE "+column+"="+value+"").executeQuery();
            while (rs.next()) {
                ls.add(new Usuario(
                        rs.getInt(1), 
                        rs.getString(2), 
                        rs.getString(3), 
                        rs.getString(4), 
                        rs.getString(5))
                );
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ls;
    }

    @Override
    public List<Usuario> getFilterLike(Object column, Object value) {
        List<Usuario> ls = new LinkedList<>();
        try {
            ResultSet rs = db.getPrepareStatement("SELECT * FROM usuarios WHERE "+column+" LIKE %"+value+"%").executeQuery();
            while (rs.next()) {
                ls.add(new Usuario(
                        rs.getInt(1), 
                        rs.getString(2), 
                        rs.getString(3), 
                        rs.getString(4), 
                        rs.getString(5))
                );
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ls;
    }
    
    public boolean login(String email, String pass) {
        try {
            ResultSet rs = db.getPrepareStatement("SELECT * FROM usuarios WHERE email="+email+"AND password="+pass+"").executeQuery();
            System.out.println(rs.getRow());
            return rs.getRow() > 0;
        } catch (SQLException ex) {
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
    
}
