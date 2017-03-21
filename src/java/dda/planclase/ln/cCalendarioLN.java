/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dda.planclase.ln;

import dda.planclase.ad.AccesoDatos;
import dda.planclase.ad.cCalendarioAD;
import dda.planclase.comun.cCalendario;
import ec.edu.espoch.academico.Periodo;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Hashtable;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Cristian
 */
public class cCalendarioLN{
    public String setInsertCalendario(cCalendario calendario) {
   String result="Error";    
   //     Docente oasisDocente = this.datosDocente("EIS", "180368940-3");
   cCalendarioAD oCalendarioAD = new cCalendarioAD();
   oCalendarioAD.setStrid(calendario.getStrid());
   oCalendarioAD.setStrmotivo(calendario.getStrmotivo());
   oCalendarioAD.setStrfechainicio(calendario.getStrfechainicio());
   oCalendarioAD.setStrfechafin(calendario.getStrfechafin());
   oCalendarioAD.setStrhorainicio(calendario.getStrhorainicio());
   oCalendarioAD.setStrhorafin(calendario.getStrhorafin());
   oCalendarioAD.setStrdocumento(calendario.getStrdocumento());
   oCalendarioAD.setStrestado(calendario.getStrestado());
   oCalendarioAD.setStrperiodo(getPeriodoActualSem());
        
        String strSQL = oCalendarioAD.setSQLInsert();
        if (!strSQL.equals("")) {
            AccesoDatos conexion = new AccesoDatos();
            if (conexion.Connectar() == 2) {
              if (conexion.EjecutarSQL(strSQL) == 0) {
                        result="Exito";
              }
            }
        }
        return result;
    }
    
    //EXTRAE EL SERVICIO DE PERIODO ACTUAL
    public String getPeriodoActualSem(){
       
           String var="";
           Periodo obj1= new Periodo();
           obj1=getPeriodoActualSWU();
           
            var=obj1.getCodigo();
    
          return var;
    }

    private static Periodo getPeriodoActualSWU() {
        pa.serviciosweb.locales.WSBDatosAnalitico_Service service = new pa.serviciosweb.locales.WSBDatosAnalitico_Service();
        pa.serviciosweb.locales.WSBDatosAnalitico port = service.getWSBDatosAnaliticoPort();
        return port.getPeriodoActualSWU();
    }
    
    public List<cCalendario> getCalendario() {
        List<cCalendario> lCalendario = new ArrayList<>();
        cCalendarioAD ocalendarioAD = new cCalendarioAD();
        String strSQL = ocalendarioAD.getSQLSelect();
        if (!strSQL.equals("")) {
            AccesoDatos conexion = new AccesoDatos();
            if (conexion.Connectar() == 2) {
                if (conexion.EjecutarSQL(strSQL) == 1) {
                    try {
                        ResultSet rsCalendario = conexion.getRs();
                        while (rsCalendario.next()) {
                            cCalendario calendario = new cCalendario();
                            calendario.setStrid(rsCalendario.getString("tbcalid"));
                            calendario.setStrfechainicio(rsCalendario.getString("tbcalfechainicio"));
                            calendario.setStrfechafin(rsCalendario.getString("tbcalfechafin"));
                            calendario.setStrhorainicio(rsCalendario.getString("tbcalhorainicio"));
                            calendario.setStrhorafin(rsCalendario.getString("tbcalhorafin"));
                            calendario.setStrmotivo(rsCalendario.getString("tbcalmotivo"));
                            calendario.setStrdocumento(rsCalendario.getString("tbcaldocumento"));
                            calendario.setStrestado(rsCalendario.getString("tbcaltipo"));
                            calendario.setStrperiodo(rsCalendario.getString("tbcalperiodo"));
                            lCalendario.add(calendario);
                        }
                    } catch (SQLException ex) {
                        Logger.getLogger(cDocenteLN.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
            }
        }
        return lCalendario;
    }
    
    public Hashtable<String, String> getTipoDiasCalendario(List<cCalendario> lCalendario) throws ParseException {
        Hashtable<String, String> DiasCalendario = new Hashtable<>();
        for (cCalendario lDiasCalendario: lCalendario) {
            String fi = lDiasCalendario.getStrfechainicio();
            String ff = lDiasCalendario.getStrfechafin();
            String estadodia = lDiasCalendario.getStrestado();
            SimpleDateFormat dateFormat = new SimpleDateFormat( "yyyy-MM-dd" );
            Calendar cal = Calendar.getInstance();
            cal.setTime(dateFormat.parse(fi));
            Calendar cal1 = Calendar.getInstance();
            cal1.setTime(dateFormat.parse(ff));
            while(cal.before(cal1))
            {
                String fp = dateFormat.format(cal.getTime());
                DiasCalendario.put(fp, estadodia);
                cal.add(Calendar.DATE, 1);
            }
                DiasCalendario.put(ff, estadodia);
        }
        return DiasCalendario;
    }
}
