/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.test.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Ing. Marcos Menéndez
 */
public class Database {
    
    protected static Connection con = null;
    
    public static void main (String [ ] args) {
        getConection();
    }
    
    public static Connection getConection() {
        try {
            if (con == null) {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost/pruebas", "root", "12345678");
                System.out.println("Conexión exitosa...");
            }
            return con;
        } catch(ClassNotFoundException | SQLException ex) {
            System.out.println("Error de conexión...");
            return null;
        }
    }
    
    public void closeConection() {
        try {
            if (con != null) {
                con.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public PreparedStatement getPrepareStatement(String sql) {
        PreparedStatement ps = null;
        con = getConection();
        try {
            ps = con.prepareStatement(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ps;
    }
    
}