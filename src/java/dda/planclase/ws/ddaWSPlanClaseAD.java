/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dda.planclase.ws;

import com.google.gson.Gson;
import com.sun.org.apache.xerces.internal.jaxp.datatype.XMLGregorianCalendarImpl;
import dda.planclase.comun.cCalendario;
import dda.planclase.comun.cDocente;
import dda.planclase.comun.cListaCalendario;
import dda.planclase.ln.cCalendarioLN;
import dda.planclase.ln.cDocenteLN;
import ec.edu.espoch.academico.Periodo;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Hashtable;
import java.util.List;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.xml.datatype.XMLGregorianCalendar;
import javax.xml.ws.WebServiceRef;
import pa.serviciosweb.locales.WSBDatosAnalitico_Service;

/**
 *
 * @author Cristian
 */

@WebService(serviceName = "ddaWSPlanClaseAD")
public class ddaWSPlanClaseAD {

    @WebServiceRef(wsdlLocation = "WEB-INF/wsdl/localhost_8080/WSUnidos/WSBDatosAnalitico.wsdl")
    private WSBDatosAnalitico_Service service;

    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        return "Hello " + txt + " !";
    }
 
String FechaInicioPeriodo;
String FechaFinPeriodo;
    
public String getDocente(@WebParam(name = "data") String data) {
        String docenteJSON = "";
        try {
            Gson gson = new Gson();
            cDocente docente = gson.fromJson(data, cDocente.class);
            String strCI = docente.getStrCedula();

            cDocenteLN docenteLN = new cDocenteLN();
            docente = docenteLN.getDocente(strCI);
            if (docente != null) {
                docenteJSON = gson.toJson(docente);
            }
        } catch (Exception ex) {
            Logger.getLogger(ddaWSPlanClaseAD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return docenteJSON;
    }

    public String setCalendario(@WebParam(name = "data") String data) {
        
        String docenteJSON = "";
        try {
            Gson gson = new Gson();
            cCalendario calendario = gson.fromJson(data, cCalendario.class);
                cCalendarioLN calendarioLN = new cCalendarioLN();
                String cale = calendarioLN.setInsertCalendario(calendario);
                if (cale == "Exito") {
                    docenteJSON = gson.toJson("Datos almacenados exitosamente!!");
                }
                else
                {
                    docenteJSON = gson.toJson("No ingresado");
                }
        } catch (Exception ex) {
            Logger.getLogger(ddaWSPlanClaseAD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return docenteJSON;
    }
    
    //periodo actual

    private Periodo getPeriodoActualSWU() {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        pa.serviciosweb.locales.WSBDatosAnalitico port = service.getWSBDatosAnaliticoPort();
        return port.getPeriodoActualSWU();
    } 

    public String getCalendario() {
        String docenteJSON = "";
        try {
            Gson gson = new Gson();
            cCalendarioLN calendarioLN = new cCalendarioLN();
            List<cCalendario> lCalendario = new ArrayList<>();
            lCalendario = calendarioLN.getCalendario();
            cListaCalendario oListaCalendario = new cListaCalendario();
            oListaCalendario.setCalendario(lCalendario);
            if (lCalendario != null) {
                docenteJSON = gson.toJson(oListaCalendario);
            }
        } catch (Exception ex) {
            Logger.getLogger(ddaWSPlanClaseAD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return docenteJSON;
    }
    
    public String getCalendario1() {
        String docenteJSON = "";
        try {
            Gson gson = new Gson();
            cCalendarioLN calendarioLN = new cCalendarioLN();
            List<cCalendario> lCalendario = new ArrayList<>();
            lCalendario = calendarioLN.getCalendario();
            cListaCalendario oListaCalendario = new cListaCalendario();
            oListaCalendario.setCalendario(lCalendario);
            Hashtable<String, String> DiasCalendario = new Hashtable<>();
            DiasCalendario=calendarioLN.getTipoDiasCalendario(lCalendario);
            oListaCalendario.setDiasCalendario(DiasCalendario);
            if (lCalendario != null) {
                docenteJSON = gson.toJson(oListaCalendario.getDiasCalendario());
            }
        } catch (Exception ex) {
            Logger.getLogger(ddaWSPlanClaseAD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return docenteJSON;
    }
}

