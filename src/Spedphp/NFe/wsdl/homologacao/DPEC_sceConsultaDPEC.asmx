<?xml version="1.0" encoding="UTF-8"?>
<wsdl:definitions xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:tns="http://www.portalfiscal.inf.br/nfe/wsdl/SCEConsultaRFB" xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" targetNamespace="http://www.portalfiscal.inf.br/nfe/wsdl/SCEConsultaRFB" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
  <wsdl:types>
    <s:schema elementFormDefault="qualified" targetNamespace="http://www.portalfiscal.inf.br/nfe/wsdl/SCEConsultaRFB">
      <s:element name="sceDadosMsg">
        <s:complexType mixed="true">
          <s:sequence>
            <s:any />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="sceConsultaDPECResult">
        <s:complexType mixed="true">
          <s:sequence>
            <s:any />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="sceCabecMsg" type="tns:sceCabecMsg" />
      <s:complexType name="sceCabecMsg">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="versaoDados" type="s:string" />
        </s:sequence>
        <s:anyAttribute />
      </s:complexType>
    </s:schema>
  </wsdl:types>
  <wsdl:message name="sceConsultaDPECSoapIn">
    <wsdl:part name="sceDadosMsg" element="tns:sceDadosMsg" />
  </wsdl:message>
  <wsdl:message name="sceConsultaDPECSoapOut">
    <wsdl:part name="sceConsultaDPECResult" element="tns:sceConsultaDPECResult" />
  </wsdl:message>
  <wsdl:message name="sceConsultaDPECsceCabecMsg">
    <wsdl:part name="sceCabecMsg" element="tns:sceCabecMsg" />
  </wsdl:message>
  <wsdl:portType name="SCEConsultaRFBSoap">
    <wsdl:operation name="sceConsultaDPEC">
      <wsdl:input message="tns:sceConsultaDPECSoapIn" />
      <wsdl:output message="tns:sceConsultaDPECSoapOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:binding name="SCEConsultaRFBSoap" type="tns:SCEConsultaRFBSoap">
    <soap:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="sceConsultaDPEC">
      <soap:operation soapAction="http://www.portalfiscal.inf.br/nfe/wsdl/SCEConsultaRFB/sceConsultaDPEC" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:sceConsultaDPECsceCabecMsg" part="sceCabecMsg" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
        <soap:header message="tns:sceConsultaDPECsceCabecMsg" part="sceCabecMsg" use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="SCEConsultaRFBSoap12" type="tns:SCEConsultaRFBSoap">
    <soap12:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="sceConsultaDPEC">
      <soap12:operation soapAction="http://www.portalfiscal.inf.br/nfe/wsdl/SCEConsultaRFB/sceConsultaDPEC" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:sceConsultaDPECsceCabecMsg" part="sceCabecMsg" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
        <soap12:header message="tns:sceConsultaDPECsceCabecMsg" part="sceCabecMsg" use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:service name="SCEConsultaRFB">
    <wsdl:port name="SCEConsultaRFBSoap" binding="tns:SCEConsultaRFBSoap">
      <soap:address location="https://hom.nfe.fazenda.gov.br/SCEConsultaRFB/SCEConsultaRFB.asmx" />
    </wsdl:port>
    <wsdl:port name="SCEConsultaRFBSoap12" binding="tns:SCEConsultaRFBSoap12">
      <soap12:address location="https://hom.nfe.fazenda.gov.br/SCEConsultaRFB/SCEConsultaRFB.asmx" />
    </wsdl:port>
  </wsdl:service>
</wsdl:definitions>