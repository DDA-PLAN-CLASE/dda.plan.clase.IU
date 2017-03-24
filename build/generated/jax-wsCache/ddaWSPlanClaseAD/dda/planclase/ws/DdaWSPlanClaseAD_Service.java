
package dda.planclase.ws;

import java.net.MalformedURLException;
import java.net.URL;
import javax.xml.namespace.QName;
import javax.xml.ws.Service;
import javax.xml.ws.WebEndpoint;
import javax.xml.ws.WebServiceClient;
import javax.xml.ws.WebServiceException;
import javax.xml.ws.WebServiceFeature;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.11-b150120.1832
 * Generated source version: 2.2
 * 
 */
@WebServiceClient(name = "ddaWSPlanClaseAD", targetNamespace = "http://ws.planclase.dda/", wsdlLocation = "http://localhost:8080/dda.plan.clase.AD/ddaWSPlanClaseAD?wsdl")
public class DdaWSPlanClaseAD_Service
    extends Service
{

    private final static URL DDAWSPLANCLASEAD_WSDL_LOCATION;
    private final static WebServiceException DDAWSPLANCLASEAD_EXCEPTION;
    private final static QName DDAWSPLANCLASEAD_QNAME = new QName("http://ws.planclase.dda/", "ddaWSPlanClaseAD");

    static {
        URL url = null;
        WebServiceException e = null;
        try {
            url = new URL("http://localhost:8080/dda.plan.clase.AD/ddaWSPlanClaseAD?wsdl");
        } catch (MalformedURLException ex) {
            e = new WebServiceException(ex);
        }
        DDAWSPLANCLASEAD_WSDL_LOCATION = url;
        DDAWSPLANCLASEAD_EXCEPTION = e;
    }

    public DdaWSPlanClaseAD_Service() {
        super(__getWsdlLocation(), DDAWSPLANCLASEAD_QNAME);
    }

    public DdaWSPlanClaseAD_Service(WebServiceFeature... features) {
        super(__getWsdlLocation(), DDAWSPLANCLASEAD_QNAME, features);
    }

    public DdaWSPlanClaseAD_Service(URL wsdlLocation) {
        super(wsdlLocation, DDAWSPLANCLASEAD_QNAME);
    }

    public DdaWSPlanClaseAD_Service(URL wsdlLocation, WebServiceFeature... features) {
        super(wsdlLocation, DDAWSPLANCLASEAD_QNAME, features);
    }

    public DdaWSPlanClaseAD_Service(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    public DdaWSPlanClaseAD_Service(URL wsdlLocation, QName serviceName, WebServiceFeature... features) {
        super(wsdlLocation, serviceName, features);
    }

    /**
     * 
     * @return
     *     returns DdaWSPlanClaseAD
     */
    @WebEndpoint(name = "ddaWSPlanClaseADPort")
    public DdaWSPlanClaseAD getDdaWSPlanClaseADPort() {
        return super.getPort(new QName("http://ws.planclase.dda/", "ddaWSPlanClaseADPort"), DdaWSPlanClaseAD.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns DdaWSPlanClaseAD
     */
    @WebEndpoint(name = "ddaWSPlanClaseADPort")
    public DdaWSPlanClaseAD getDdaWSPlanClaseADPort(WebServiceFeature... features) {
        return super.getPort(new QName("http://ws.planclase.dda/", "ddaWSPlanClaseADPort"), DdaWSPlanClaseAD.class, features);
    }

    private static URL __getWsdlLocation() {
        if (DDAWSPLANCLASEAD_EXCEPTION!= null) {
            throw DDAWSPLANCLASEAD_EXCEPTION;
        }
        return DDAWSPLANCLASEAD_WSDL_LOCATION;
    }

}
