/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.test.utils;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.sql.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 *
 * @author Ing. Marcos Menéndez
 */
public class JSONConverter {

    private static SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
    
    public static JSONObject getJSONObject(Object classObjets)
            throws SecurityException, IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        StringBuilder insert = new StringBuilder();
        StringBuilder values = new StringBuilder();
        JSONObject jsonItem = new JSONObject();
        Object respuestaMetodo = new Object();
        Class clase = classObjets.getClass();
        Method[] metodos = clase.getDeclaredMethods();
        Method metodo = null;
        for (int i = 0; i < metodos.length; i++) {
            metodo = metodos[i];

            String nombreMetodo = metodo.getName();
            if (nombreMetodo.startsWith("get")) {
                metodo.setAccessible(true);
                respuestaMetodo = (Object) metodo.invoke(classObjets, new Object[0]);
                try {
                    if (respuestaMetodo instanceof Timestamp) {
                        Date dtTmp = new Date(((Timestamp) respuestaMetodo).getTime());
                        jsonItem.put(removeGetString(nombreMetodo), sdf.format(dtTmp));
                    } else if (respuestaMetodo instanceof Date) {
                        Date dtTmp = (Date) respuestaMetodo;
                        jsonItem.put(removeGetString(nombreMetodo), sdf.format(dtTmp));
                    } else {
                        jsonItem.put(removeGetString(nombreMetodo), respuestaMetodo);
                    }

                    insert.append(removeGetString(nombreMetodo) + ",");
                    if (respuestaMetodo instanceof String || respuestaMetodo instanceof Timestamp) {
                        values.append(" '");
                        values.append(respuestaMetodo);
                        values.append("' ");
                        values.append(",");
                    } else {
                        values.append(respuestaMetodo + ",");
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }
        return jsonItem;
    }

    public static String removeGetString(Object word) {
        String wordChain = new String();
        Integer sizeChain = new Integer(0);
        sizeChain = ((String) word).length();
        wordChain = ((String) word).substring(3, sizeChain);
        return wordChain;
    }

}
