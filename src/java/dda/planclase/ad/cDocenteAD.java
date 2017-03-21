/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dda.planclase.ad;

import dda.planclase.comun.cDocente;

/**
 *
 * @author User
 */
public class cDocenteAD extends cDocente {

    public String getSQLSelect() {
        String result = "";
        if (!this.getStrCedula().equals("")) {
            result = "SELECT tbdid, tbdiddocente FROM tbdocente WHERE tbdiddocente = '" + this.getStrCedula() + "'";
        }
        return result;

    }

}
