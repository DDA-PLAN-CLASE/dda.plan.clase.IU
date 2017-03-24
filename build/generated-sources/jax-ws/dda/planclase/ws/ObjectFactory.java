
package dda.planclase.ws;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the dda.planclase.ws package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _GetCalendario_QNAME = new QName("http://ws.planclase.dda/", "getCalendario");
    private final static QName _GetCalendario1_QNAME = new QName("http://ws.planclase.dda/", "getCalendario1");
    private final static QName _GetCalendario1Response_QNAME = new QName("http://ws.planclase.dda/", "getCalendario1Response");
    private final static QName _GetCalendarioResponse_QNAME = new QName("http://ws.planclase.dda/", "getCalendarioResponse");
    private final static QName _GetDocente_QNAME = new QName("http://ws.planclase.dda/", "getDocente");
    private final static QName _GetDocenteResponse_QNAME = new QName("http://ws.planclase.dda/", "getDocenteResponse");
    private final static QName _Hello_QNAME = new QName("http://ws.planclase.dda/", "hello");
    private final static QName _HelloResponse_QNAME = new QName("http://ws.planclase.dda/", "helloResponse");
    private final static QName _SetCalendario_QNAME = new QName("http://ws.planclase.dda/", "setCalendario");
    private final static QName _SetCalendarioResponse_QNAME = new QName("http://ws.planclase.dda/", "setCalendarioResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: dda.planclase.ws
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link GetCalendario }
     * 
     */
    public GetCalendario createGetCalendario() {
        return new GetCalendario();
    }

    /**
     * Create an instance of {@link GetCalendario1 }
     * 
     */
    public GetCalendario1 createGetCalendario1() {
        return new GetCalendario1();
    }

    /**
     * Create an instance of {@link GetCalendario1Response }
     * 
     */
    public GetCalendario1Response createGetCalendario1Response() {
        return new GetCalendario1Response();
    }

    /**
     * Create an instance of {@link GetCalendarioResponse }
     * 
     */
    public GetCalendarioResponse createGetCalendarioResponse() {
        return new GetCalendarioResponse();
    }

    /**
     * Create an instance of {@link GetDocente }
     * 
     */
    public GetDocente createGetDocente() {
        return new GetDocente();
    }

    /**
     * Create an instance of {@link GetDocenteResponse }
     * 
     */
    public GetDocenteResponse createGetDocenteResponse() {
        return new GetDocenteResponse();
    }

    /**
     * Create an instance of {@link Hello }
     * 
     */
    public Hello createHello() {
        return new Hello();
    }

    /**
     * Create an instance of {@link HelloResponse }
     * 
     */
    public HelloResponse createHelloResponse() {
        return new HelloResponse();
    }

    /**
     * Create an instance of {@link SetCalendario }
     * 
     */
    public SetCalendario createSetCalendario() {
        return new SetCalendario();
    }

    /**
     * Create an instance of {@link SetCalendarioResponse }
     * 
     */
    public SetCalendarioResponse createSetCalendarioResponse() {
        return new SetCalendarioResponse();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetCalendario }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws.planclase.dda/", name = "getCalendario")
    public JAXBElement<GetCalendario> createGetCalendario(GetCalendario value) {
        return new JAXBElement<GetCalendario>(_GetCalendario_QNAME, GetCalendario.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetCalendario1 }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws.planclase.dda/", name = "getCalendario1")
    public JAXBElement<GetCalendario1> createGetCalendario1(GetCalendario1 value) {
        return new JAXBElement<GetCalendario1>(_GetCalendario1_QNAME, GetCalendario1 .class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetCalendario1Response }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws.planclase.dda/", name = "getCalendario1Response")
    public JAXBElement<GetCalendario1Response> createGetCalendario1Response(GetCalendario1Response value) {
        return new JAXBElement<GetCalendario1Response>(_GetCalendario1Response_QNAME, GetCalendario1Response.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetCalendarioResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws.planclase.dda/", name = "getCalendarioResponse")
    public JAXBElement<GetCalendarioResponse> createGetCalendarioResponse(GetCalendarioResponse value) {
        return new JAXBElement<GetCalendarioResponse>(_GetCalendarioResponse_QNAME, GetCalendarioResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetDocente }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws.planclase.dda/", name = "getDocente")
    public JAXBElement<GetDocente> createGetDocente(GetDocente value) {
        return new JAXBElement<GetDocente>(_GetDocente_QNAME, GetDocente.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetDocenteResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws.planclase.dda/", name = "getDocenteResponse")
    public JAXBElement<GetDocenteResponse> createGetDocenteResponse(GetDocenteResponse value) {
        return new JAXBElement<GetDocenteResponse>(_GetDocenteResponse_QNAME, GetDocenteResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Hello }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws.planclase.dda/", name = "hello")
    public JAXBElement<Hello> createHello(Hello value) {
        return new JAXBElement<Hello>(_Hello_QNAME, Hello.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link HelloResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws.planclase.dda/", name = "helloResponse")
    public JAXBElement<HelloResponse> createHelloResponse(HelloResponse value) {
        return new JAXBElement<HelloResponse>(_HelloResponse_QNAME, HelloResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link SetCalendario }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws.planclase.dda/", name = "setCalendario")
    public JAXBElement<SetCalendario> createSetCalendario(SetCalendario value) {
        return new JAXBElement<SetCalendario>(_SetCalendario_QNAME, SetCalendario.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link SetCalendarioResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://ws.planclase.dda/", name = "setCalendarioResponse")
    public JAXBElement<SetCalendarioResponse> createSetCalendarioResponse(SetCalendarioResponse value) {
        return new JAXBElement<SetCalendarioResponse>(_SetCalendarioResponse_QNAME, SetCalendarioResponse.class, null, value);
    }

}
