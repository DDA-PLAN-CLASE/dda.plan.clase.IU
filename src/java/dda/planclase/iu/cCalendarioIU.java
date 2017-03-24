/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dda.planclase.iu;

import dda.planclase.comun.cCalendario;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/**
 *
 * @author Cristian
 */
public class cCalendarioIU {

    private String strid;

    public String getStrid() {
        return strid;
    }

    public void setStrid(String strid) {
        this.strid = strid;
    }
    List<cCalendario> lCalendario = new ArrayList<>();

    public List<cCalendario> getlCalendario() {
        return lCalendario;
    }

    public void setlCalendario(List<cCalendario> lCalendario) {
        this.lCalendario = lCalendario;
    }

    public cCalendarioIU() {
        this.strid = "";
    }

    public String toHTML1() {
        String result = "";
        result += "<h3>" + getStrid() + "</h3><br>";
        return result;
    }

    public String toHTML() {
        Iterator it = lCalendario.iterator();
        String result = "";
        result += "<center><H2>CALENDARIO</H2></center>";
        result += "<table align='center' border='2px' width='90%'>"
                + "<tr>"
                + "<td><b>INICIO</b></td>"
                + "<td><b>FIN</b></td>"
                + "<td><b>MOTIVO</b></td>"
                + "<td><b>DOCUMENTO</b></td>"
                + "</tr>";
        while (it.hasNext()) {
            cCalendario oCalendario = (cCalendario) it.next();
            String color = "";
            if (Objects.equals(oCalendario.getStrestado(), "Feriado")) {
                color = "#ffff78";
            }
            if (Objects.equals(oCalendario.getStrestado(), "Entrega de Notas")) {
                color = "#fedd8e";
            }
            if (Objects.equals(oCalendario.getStrestado(), "Otros")) {
                color = "#CCFFFF";
            }
            result += "<tr>"
                    + "<td width='20%' bgcolor=" + color + ">" + oCalendario.getStrfechainicio() + "<br/>" + oCalendario.getStrhorainicio() + "</td>"
                    + "<td width='20%' bgcolor='" + color + "'>" + oCalendario.getStrfechafin() + "<br/>" + oCalendario.getStrhorafin() + "</td>"
                    + "<td width='30%' bgcolor='" + color + "'>" + oCalendario.getStrmotivo() + "</td>"
                    + "<td align='center' width='10%' bgcolor='" + color + "'><a  href ='Archivos/" + oCalendario.getStrdocumento()+ "'><img src='http://www.zamzar.com/images/filetypes/pdf.png' width='50'></a></td>"
                    + "</tr>";
        }
        result += "</table>";
        return result;
    }
}
