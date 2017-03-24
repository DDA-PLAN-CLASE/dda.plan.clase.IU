/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dda.planclase.iu;

import dda.planclase.comun.cDocente;

/**
 *
 * @author User
 */
public class cDocenteIU extends cDocente {
    
    public String toHTML() {
        String result = "";
        result += "<h1>DOCENTE</h1>";
        result += "<h3>ID:" + getStrId() + "</h3><br>";
        result += "<h3>CI:" + getStrCedula() + "</h3><br>";
        result += "<h3>Nombre: Aracely</h3><br>";
        return result;
    }
    
}
