/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.test.models;

import app.test.utils.JSONConverter;
import java.lang.reflect.InvocationTargetException;

/**
 *
 * @author Ing. Marcos Menéndez
 */
public class Producto {
    
    public Integer id;
    public String nombre;
    public Double precio;
    public String descripcion;
    public Integer estado;
    
    public Producto() {}

    public Producto(Integer id, String nombre, Double precio, String descripcion, Integer estado) {
        this.id = id;
        this.nombre = nombre;
        this.precio = precio;
        this.descripcion = descripcion;
        this.estado = estado;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Integer getEstado() {
        return estado;
    }

    public void setEstado(Integer estado) {
        this.estado = estado;
    }
    
    /** Custom Method
     * @return s**/
    public String getStrEstado() {
        if (getEstado() == 1) {
            return "Activo";
        } else {
            return "Inactivo";
        }
    }
    
}
