/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.test.models;

/**
 *
 * @author Ing. Marcos Menéndez
 */
public class Usuario {
    
    public Integer id;
    public String email;
    public String password;
    public String nombre;
    public String apellido;

    public Usuario() {}

    public Usuario(Integer id, String email, String password, String nombre, String apellido) {
        this.id = id;
        this.email = email;
        this.password = password;
        this.nombre = nombre;
        this.apellido = apellido;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }
    
    public String toJSONSTRING() {
        return "{'id':"+getId()+",'email':"+getEmail()+",'usuario':"+getApellido()+" "+getNombre()+"}";
    }
    
}
