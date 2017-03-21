/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dda.planclase.ad;
import dda.planclase.comun.cCalendario;

/**
 *
 * @author Cristian
 */
public class cCalendarioAD extends cCalendario{
    
    public String setSQLInsert() {
   /*cCalendario oCalendarioAD = new cCalendario();
   oCalendarioAD.setStrid("1");
   oCalendarioAD.setStrmotivo("motivo");
   oCalendarioAD.setStrhorainicio("1");
   oCalendarioAD.setStrfechainicio("12");
   oCalendarioAD.setStrfechafin("14");
   oCalendarioAD.setStrdocumento("doc");
   oCalendarioAD.setStrhorafin("2");*/
        String result = "Error Sentencia AD";
            result = "INSERT INTO tbcalendario(tbcalfechainicio, tbcalfechafin, tbcalhorainicio, tbcalmotivo,tbcaldocumento, tbcalhorafin, tbcaltipo, tbcalperiodo) VALUES ('"+this.getStrfechainicio()+"','" + this.getStrfechafin()+ "','" + this.getStrhorainicio()+ "','" + this.getStrmotivo()+ "','" + this.getStrdocumento()+ "','" + this.getStrhorafin()+ "','" + this.getStrestado()+ "','" + this.getStrperiodo()+ "');";
            return result;
    }
    
    public String getSQLSelect() {
   /*cCalendario oCalendarioAD = new cCalendario();
   oCalendarioAD.setStrid("1");
   oCalendarioAD.setStrmotivo("motivo");
   oCalendarioAD.setStrhorainicio("1");
   oCalendarioAD.setStrfechainicio("12");
   oCalendarioAD.setStrfechafin("14");
   oCalendarioAD.setStrdocumento("doc");
   oCalendarioAD.setStrhorafin("2");*/
        String result = "Error Sentencia AD";
            result = "SELECT * FROM tbcalendario order by tbcalfechainicio;";
       
        return result;
    }
    
}
