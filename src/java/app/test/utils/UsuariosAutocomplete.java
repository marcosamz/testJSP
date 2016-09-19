/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.test.utils;

import app.test.dao.UsuarioDAO;
import app.test.models.Usuario;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 *
 * @author Ing. Marcos Menéndez
 */
public class UsuariosAutocomplete {
    
    public static JSONArray getJSONARRAY() throws JSONException {
        JSONArray ja = new JSONArray();
        UsuarioDAO s = new UsuarioDAO(); 
        for (Usuario u : s.getAll()) {
            JSONObject jo = new JSONObject(u.toJSONSTRING());
            ja.put(jo);
        }
        return ja;
    }
    
}
