/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dda.planclase.ln;


import dda.planclase.ad.AccesoDatos;
import dda.planclase.ad.cDocenteAD;
import dda.planclase.comun.cDocente;
import ec.edu.espoch.academico.Docente;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author User
 */
public class cDocenteLN {

    public cDocente getDocente(String CI) {
        cDocenteAD docente = new cDocenteAD();
        docente.setStrCedula(CI);
        
   //     Docente oasisDocente = this.datosDocente("EIS", "180368940-3");
        
        String strSQL = docente.getSQLSelect();
        if (!strSQL.equals("")) {
            AccesoDatos conexion = new AccesoDatos();
            if (conexion.Connectar() == 2) {
                if (conexion.EjecutarSQL(strSQL) == 1) {
                    try {
                        ResultSet rsDocente = conexion.getRs();
                        while (rsDocente.next()) {
                            docente.setStrId(rsDocente.getString("tbdid"));
                        }
                    } catch (SQLException ex) {
                        Logger.getLogger(cDocenteLN.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
            }
        }
        if (docente.getStrId().equals("")) {
            docente = null;
        }
        return docente;
    }

    private static Docente datosDocente(java.lang.String codCarrera, java.lang.String cedula) {
        pa.serviciosweb.locales.WSBDatosAnalitico_Service service = new pa.serviciosweb.locales.WSBDatosAnalitico_Service();
        pa.serviciosweb.locales.WSBDatosAnalitico port = service.getWSBDatosAnaliticoPort();
        return port.datosDocente(codCarrera, cedula);
    }

}
