/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.test.utils;

import app.test.models.Producto;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 *
 * @author Ing. Marcos Menéndez
 */
public class AppLauncher {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws SecurityException, IllegalAccessException, IllegalArgumentException, InvocationTargetException, JSONException {
        // TODO code application logic here
        /*ArrayList<Producto> arr = new ArrayList<>();
        arr.add(new Producto(1, "Producto1", 55.20, "Descripcion1", 1));
        arr.add(new Producto(2, "Producto2", 50.00, "Descripcion2", 1));
        
        JSONArray ja = new JSONArray();
        for (Producto p : arr) {
            ja.put(JSONConverter.getJSONObject(p));
        }
        
        System.out.println(ja);
        for (int i = 0; i < ja.length(); i++) {
            JSONObject jo = ja.getJSONObject(i);
            System.out.println(jo.get("Id")+" - "+jo.get("Nombre")+" - "+jo.get("Descripcion")+" - "+jo.get("StrEstado"));
        }*/
        
        System.out.println(UsuariosAutocomplete.getJSONARRAY());
    }
    
}