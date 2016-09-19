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
public class Salida {
    
    public Integer id;
    public String salidahtml;
    public Integer estado;
    public String nombre;

    public Salida() {}

    public Salida(Integer id, String salidahtml, Integer estado, String nombre) {
        this.id = id;
        this.salidahtml = salidahtml;
        this.estado = estado;
        this.nombre = nombre;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSalidahtml() {
        return salidahtml;
    }

    public void setSalidahtml(String salidahtml) {
        this.salidahtml = salidahtml;
    }

    public Integer getEstado() {
        return estado;
    }

    public void setEstado(Integer estado) {
        this.estado = estado;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
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
