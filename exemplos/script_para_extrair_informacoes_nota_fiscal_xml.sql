----------------------------------------------------------------------------------------

-- Script para extrair informa��es de uma Nota Fiscal Eletr�nica no formato XML

----------------------------------------------------------------------------------------

WITH XMLNAMESPACES 
(
    DEFAULT 'http://www.portalfiscal.inf.br/nfe'
)
SELECT 

   /* [CABECALHO DA NOTA] */
   
   /* Dados da Nota */
   XmlCol.campo.value('(ide/nNF)[1]','varchar(MAX)') AS nNF, 
   XmlCol.campo.value('(ide/serie)[1]','varchar(MAX)') AS serie, 
   XmlCol.campo.value('(ide/dhEmi)[1]','varchar(MAX)') AS dhEmi, 
   XmlCol.campo.value('(ide/dhSaiEnt)[1]','varchar(MAX)') AS dhSaiEnt, 

   /* Dados do Emitente */
   XmlCol.campo.value('(emit/CNPJ)[1]', 'varchar(MAX)') AS emit_CNPJ,
   XmlCol.campo.value('(emit/xNome)[1]', 'varchar(MAX)') AS emit_xNome,
   XmlCol.campo.value('(emit/enderEmit/UF)[1]', 'varchar(MAX)') AS emit_UF,
   XmlCol.campo.value('(emit/IE)[1]', 'varchar(MAX)') AS emit_IE,
   XmlCol.campo.value('(emit/CRT)[1]', 'varchar(MAX)') AS emit_CRT,

   /* Dados do Destinatario */
   XmlCol.campo.value('(dest/CNPJ)[1]', 'varchar(MAX)') AS dest_CNPJ,
   XmlCol.campo.value('(dest/CPF)[1]', 'varchar(MAX)') AS dest_CPF,
   XmlCol.campo.value('(dest/xNome)[1]', 'varchar(MAX)') AS dest_xNome,
   XmlCol.campo.value('(dest/enderDest/UF)[1]', 'varchar(MAX)') AS dest_UF,
   XmlCol.campo.value('(dest/indIEDest)[1]', 'varchar(MAX)') AS dest_indIEDest,
   XmlCol.campo.value('(dest/IE)[1]', 'varchar(MAX)') AS dest_IE,


   /* [ITENS DA NOTA] */

   /* Dados do Produto */
   XmlItems.campo.value('(prod/cProd)[1]','varchar(max)') AS cProd,
   XmlItems.campo.value('(prod/cEAN)[1]','varchar(max)') AS cEAN,
   XmlItems.campo.value('(prod/cBarra)[1]','varchar(max)') AS cBarra,
   XmlItems.campo.value('(prod/xProd)[1]','varchar(max)') AS xProd,
   XmlItems.campo.value('(prod/NCM)[1]','varchar(max)') AS NCM,
   XmlItems.campo.value('(prod/CEST)[1]','varchar(max)') AS CEST,
   XmlItems.campo.value('(prod/CFOP)[1]','varchar(max)') AS CFOP,
   XmlItems.campo.value('(prod/uCom)[1]','varchar(max)') AS uCom,
   XmlItems.campo.value('(prod/qCom)[1]','varchar(max)') AS qCom,
   XmlItems.campo.value('(prod/vUnCom)[1]','varchar(max)') AS vUnCom,
   XmlItems.campo.value('(prod/vProd)[1]','varchar(max)') AS vProd,
   XmlItems.campo.value('(prod/cEANTrib)[1]','varchar(max)') AS cEANTrib,
   XmlItems.campo.value('(prod/cBarraTrib)[1]','varchar(max)') AS cBarraTrib,
   XmlItems.campo.value('(prod/uTrib)[1]','varchar(max)') AS uTrib,
   XmlItems.campo.value('(prod/qTrib)[1]','varchar(max)') AS qTrib,
   XmlItems.campo.value('(prod/vUnTrib)[1]','varchar(max)') AS vUnTrib,
   XmlItems.campo.value('(prod/indTot)[1]','varchar(max)') AS indTot,
   XmlItems.campo.value('(prod/xPed)[1]','varchar(max)') AS xPed,
   XmlItems.campo.value('(prod/nItemPed)[1]','varchar(max)') AS nItemPed,

   /* Tributo do item */  
   XmlItems.campo.value('(imposto/vTotTrib)[1]', 'varchar(max)') AS vTotTrib,


   /* [TOTAL DA NOTA] */

   /* Dados fiscais */
   XmlCol.campo.value('(total/ICMSTot/vBC)[1]', 'varchar(MAX)') AS vBC,
   XmlCol.campo.value('(total/ICMSTot/vICMS)[1]', 'varchar(MAX)') AS vICMS,
   XmlCol.campo.value('(total/ICMSTot/vICMSDeson)[1]', 'varchar(MAX)') AS vICMSDeson,
   XmlCol.campo.value('(total/ICMSTot/vFCP)[1]', 'varchar(MAX)') AS vFCP,
   XmlCol.campo.value('(total/ICMSTot/vBCST)[1]', 'varchar(MAX)') AS vBCST,
   XmlCol.campo.value('(total/ICMSTot/vST)[1]', 'varchar(MAX)') AS vST,
   XmlCol.campo.value('(total/ICMSTot/vFCPST)[1]', 'varchar(MAX)') AS vFCPST,
   XmlCol.campo.value('(total/ICMSTot/vFCPSTRet)[1]', 'varchar(MAX)') AS vFCPSTRet,
   XmlCol.campo.value('(total/ICMSTot/vProd)[1]', 'varchar(MAX)') AS vProd,
   XmlCol.campo.value('(total/ICMSTot/vFrete)[1]', 'varchar(MAX)') AS vFrete,
   XmlCol.campo.value('(total/ICMSTot/vSeg)[1]', 'varchar(MAX)') AS vSeg,
   XmlCol.campo.value('(total/ICMSTot/vDesc)[1]', 'varchar(MAX)') AS vDesc,
   XmlCol.campo.value('(total/ICMSTot/vII)[1]', 'varchar(MAX)') AS vII,
   XmlCol.campo.value('(total/ICMSTot/vIPI)[1]', 'varchar(MAX)') AS vIPI,
   XmlCol.campo.value('(total/ICMSTot/vIPIDevol)[1]', 'varchar(MAX)') AS vIPIDevol,
   XmlCol.campo.value('(total/ICMSTot/vPIS)[1]', 'varchar(MAX)') AS vPIS,
   XmlCol.campo.value('(total/ICMSTot/vCOFINS)[1]', 'varchar(MAX)') AS vCOFINS,
   XmlCol.campo.value('(total/ICMSTot/vOutro)[1]', 'varchar(MAX)') AS vOutro,
   XmlCol.campo.value('(total/ICMSTot/vNF)[1]', 'varchar(MAX)') AS vNf,
   XmlCol.campo.value('(total/ICMSTot/vTotTrib)[1]', 'varchar(MAX)') AS vTotTrib


FROM  
(
    --Modelo de captura 1 --> capture os dados do xml de uma tabela
    /**
   SELECT CONVERT(XML, xml_nota) AS [xml]
     FROM tabela_nota_fiscal
    WHERE nota = 33565
    **/

    --Modelo de captura 2 --> capture os dados do xml de uma string
    SELECT CONVERT(XML,'<?xml version="1.0" encoding="UTF-8"?>
<nfeProc versao="3.10" xmlns="http://www.portalfiscal.inf.br/nfe">
    <NFe xmlns="http://www.portalfiscal.inf.br/nfe">
        <infNFe Id="NFe35150300822602000124550010009923461099234656" versao="3.10">
            <ide>
                <cUF>35</cUF>
                <cNF>09923465</cNF>
                <natOp>Venda prod. do estab.</natOp>
                <indPag>1</indPag>
                <mod>55</mod>
                <serie>1</serie>
                <nNF>992346</nNF>
                <dhEmi>2015-03-27T09:40:00-03:00</dhEmi>
                <dhSaiEnt>2015-03-27T09:40:00-03:00</dhSaiEnt>
                <tpNF>1</tpNF>
                <idDest>1</idDest>
                <cMunFG>3550308</cMunFG>
                <tpImp>1</tpImp>
                <tpEmis>1</tpEmis>
                <cDV>6</cDV>
                <tpAmb>2</tpAmb>
                <finNFe>1</finNFe>
                <indFinal>1</indFinal>
                <indPres>3</indPres>
                <procEmi>3</procEmi>
                <verProc>3.10.43</verProc>
            </ide>
            <emit>
                <CNPJ>00822602000124</CNPJ>
                <xNome>Plotag Sistemas e Suprimentos Ltda</xNome>
                <xFant>Plotag - Localhost</xFant>
                <enderEmit>
                    <xLgr>Rua Solon</xLgr>
                    <nro>558</nro>
                    <xBairro>Bom Retiro</xBairro>
                    <cMun>3550308</cMun>
                    <xMun>Sao Paulo</xMun>
                    <UF>SP</UF>
                    <CEP>01127010</CEP>
                    <cPais>1058</cPais>
                    <xPais>BRASIL</xPais>
                    <fone>1123587604</fone>
                </enderEmit>
                <IE>114489114119</IE>
                <CRT>1</CRT>
            </emit>
            <dest>
                <CNPJ>99999999000191</CNPJ>
                <xNome>NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL</xNome>
                <enderDest>
                    <xLgr>Rua Jaragua</xLgr>
                    <nro>774</nro>
                    <xBairro>Bom Retiro</xBairro>
                    <cMun>3550308</cMun>
                    <xMun>Sao Paulo</xMun>
                    <UF>SP</UF>
                    <CEP>01129000</CEP>
                    <cPais>1058</cPais>
                    <xPais>BRASIL</xPais>
                    <fone>33933501</fone>
                </enderDest>
                <indIEDest>9</indIEDest>
                <email>gui_calabria@yahoo.com.br</email>
            </dest>
            <det nItem="1">
                <prod>
                    <cProd>B17025056</cProd>
                    <cEAN/>
                    <xProd>PAPEL MAXPLOT- 170MX250MX56GRS 3"</xProd>
                    <NCM>48025599</NCM>
                    <CFOP>5101</CFOP>
                    <uCom>Rl</uCom>
                    <qCom>1.0000</qCom>
                    <vUnCom>138.3000</vUnCom>
                    <vProd>138.30</vProd>
                    <cEANTrib/>
                    <uTrib>RL</uTrib>
                    <qTrib>1.0000</qTrib>
                    <vUnTrib>138.3000</vUnTrib>
                    <indTot>1</indTot>
                </prod>
                <imposto>
                    <vTotTrib>41.49</vTotTrib>
                    <ICMS>
                        <ICMSSN101>
                            <orig>0</orig>
                            <CSOSN>101</CSOSN>
                            <pCredSN>2.5600</pCredSN>
                            <vCredICMSSN>3.54</vCredICMSSN>
                        </ICMSSN101>
                    </ICMS>
                    <IPI>
                        <clEnq>48025</clEnq>
                        <CNPJProd>00822602000124</CNPJProd>
                        <cEnq>599</cEnq>
                        <IPINT>
                            <CST>53</CST>
                        </IPINT>
                    </IPI>
                    <PIS>
                        <PISNT>
                            <CST>07</CST>
                        </PISNT>
                    </PIS>
                    <COFINS>
                        <COFINSNT>
                            <CST>07</CST>
                        </COFINSNT>
                    </COFINS>
                </imposto>
            </det>
            <det nItem="2">
                <prod>
                    <cProd>1070100752</cProd>
                    <cEAN/>
                    <xProd>PAPEL MAXPLOT- 1070X100MX75GRS 2"</xProd>
                    <NCM>48025599</NCM>
                    <CFOP>5101</CFOP>
                    <uCom>RL</uCom>
                    <qCom>1.0000</qCom>
                    <vUnCom>48.9100</vUnCom>
                    <vProd>48.91</vProd>
                    <cEANTrib/>
                    <uTrib>RL</uTrib>
                    <qTrib>1.0000</qTrib>
                    <vUnTrib>48.9100</vUnTrib>
                    <indTot>1</indTot>
                </prod>
                <imposto>
                    <vTotTrib>14.67</vTotTrib>
                    <ICMS>
                        <ICMSSN101>
                            <orig>0</orig>
                            <CSOSN>101</CSOSN>
                            <pCredSN>2.5600</pCredSN>
                            <vCredICMSSN>1.25</vCredICMSSN>
                        </ICMSSN101>
                    </ICMS>
                    <IPI>
                        <clEnq>48025</clEnq>
                        <CNPJProd>00822602000124</CNPJProd>
                        <cEnq>599</cEnq>
                        <IPINT>
                            <CST>53</CST>
                        </IPINT>
                    </IPI>
                    <PIS>
                        <PISNT>
                            <CST>07</CST>
                        </PISNT>
                    </PIS>
                    <COFINS>
                        <COFINSNT>
                            <CST>07</CST>
                        </COFINSNT>
                    </COFINS>
                </imposto>
            </det>
            <det nItem="3">
                <prod>
                    <cProd>B17025056</cProd>
                    <cEAN/>
                    <xProd>PAPEL MAXPLOT- 170MX250MX56GRS 3"</xProd>
                    <NCM>48025599</NCM>
                    <CFOP>5101</CFOP>
                    <uCom>Rl</uCom>
                    <qCom>1.0000</qCom>
                    <vUnCom>138.3000</vUnCom>
                    <vProd>138.30</vProd>
                    <cEANTrib/>
                    <uTrib>RL</uTrib>
                    <qTrib>1.0000</qTrib>
                    <vUnTrib>138.3000</vUnTrib>
                    <indTot>1</indTot>
                </prod>
                <imposto>
                    <vTotTrib>41.49</vTotTrib>
                    <ICMS>
                        <ICMSSN101>
                            <orig>0</orig>
                            <CSOSN>101</CSOSN>
                            <pCredSN>2.5600</pCredSN>
                            <vCredICMSSN>3.54</vCredICMSSN>
                        </ICMSSN101>
                    </ICMS>
                    <IPI>
                        <clEnq>48025</clEnq>
                        <CNPJProd>00822602000124</CNPJProd>
                        <cEnq>599</cEnq>
                        <IPINT>
                            <CST>53</CST>
                        </IPINT>
                    </IPI>
                    <PIS>
                        <PISNT>
                            <CST>07</CST>
                        </PISNT>
                    </PIS>
                    <COFINS>
                        <COFINSNT>
                            <CST>07</CST>
                        </COFINSNT>
                    </COFINS>
                </imposto>
            </det>
            <det nItem="4">
                <prod>
                    <cProd>B17040056</cProd>
                    <cEAN/>
                    <xProd>PAPEL MAXPLOT - 1.700X400MX 56 GRS 3"</xProd>
                    <NCM>48025599</NCM>
                    <CFOP>5101</CFOP>
                    <uCom>Rl</uCom>
                    <qCom>1.0000</qCom>
                    <vUnCom>214.5700</vUnCom>
                    <vProd>214.57</vProd>
                    <cEANTrib/>
                    <uTrib>Rl</uTrib>
                    <qTrib>1.0000</qTrib>
                    <vUnTrib>214.5700</vUnTrib>
                    <indTot>1</indTot>
                </prod>
                <imposto>
                    <vTotTrib>64.37</vTotTrib>
                    <ICMS>
                        <ICMSSN101>
                            <orig>0</orig>
                            <CSOSN>101</CSOSN>
                            <pCredSN>2.5600</pCredSN>
                            <vCredICMSSN>5.49</vCredICMSSN>
                        </ICMSSN101>
                    </ICMS>
                    <IPI>
                        <clEnq>48025</clEnq>
                        <CNPJProd>00822602000124</CNPJProd>
                        <cEnq>599</cEnq>
                        <IPINT>
                            <CST>53</CST>
                        </IPINT>
                    </IPI>
                    <PIS>
                        <PISNT>
                            <CST>07</CST>
                        </PISNT>
                    </PIS>
                    <COFINS>
                        <COFINSNT>
                            <CST>07</CST>
                        </COFINSNT>
                    </COFINS>
                </imposto>
            </det>
            <det nItem="5">
                <prod>
                    <cProd>B18525056</cProd>
                    <cEAN/>
                    <xProd>PAPEL MAXPLOT-1.85MX250MX56GRS 3"</xProd>
                    <NCM>48025599</NCM>
                    <CFOP>5101</CFOP>
                    <uCom>Rl</uCom>
                    <qCom>1.0000</qCom>
                    <vUnCom>149.8300</vUnCom>
                    <vProd>149.83</vProd>
                    <cEANTrib/>
                    <uTrib>RL</uTrib>
                    <qTrib>1.0000</qTrib>
                    <vUnTrib>149.8300</vUnTrib>
                    <indTot>1</indTot>
                </prod>
                <imposto>
                    <vTotTrib>44.95</vTotTrib>
                    <ICMS>
                        <ICMSSN101>
                            <orig>0</orig>
                            <CSOSN>101</CSOSN>
                            <pCredSN>2.5600</pCredSN>
                            <vCredICMSSN>3.84</vCredICMSSN>
                        </ICMSSN101>
                    </ICMS>
                    <IPI>
                        <clEnq>48025</clEnq>
                        <CNPJProd>00822602000124</CNPJProd>
                        <cEnq>599</cEnq>
                        <IPINT>
                            <CST>53</CST>
                        </IPINT>
                    </IPI>
                    <PIS>
                        <PISNT>
                            <CST>07</CST>
                        </PISNT>
                    </PIS>
                    <COFINS>
                        <COFINSNT>
                            <CST>07</CST>
                        </COFINSNT>
                    </COFINS>
                </imposto>
            </det>
            <total>
                <ICMSTot>
                    <vBC>0.00</vBC>
                    <vICMS>0.00</vICMS>
                    <vICMSDeson>0.00</vICMSDeson>
                    <vBCST>0.00</vBCST>
                    <vST>0.00</vST>
                    <vProd>689.91</vProd>
                    <vFrete>0.00</vFrete>
                    <vSeg>0.00</vSeg>
                    <vDesc>0.00</vDesc>
                    <vII>0.00</vII>
                    <vIPI>0.00</vIPI>
                    <vPIS>0.00</vPIS>
                    <vCOFINS>0.00</vCOFINS>
                    <vOutro>0.00</vOutro>
                    <vNF>689.91</vNF>
                    <vTotTrib>206.97</vTotTrib>
                </ICMSTot>
            </total>
            <transp>
                <modFrete>1</modFrete>
                <transporta>
                    <xNome>Cliente Retira</xNome>
                    <xEnder>Rua ,</xEnder>
                    <xMun>Sao Paulo</xMun>
                    <UF>SP</UF>
                </transporta>
                <vol>
                    <qVol>1</qVol>
                    <marca>S/m</marca>
                    <nVol>S/n</nVol>
                    <pesoL>0.000</pesoL>
                    <pesoB>0.000</pesoB>
                </vol>
            </transp>
            <cobr>
                <fat>
                    <nFat>992346</nFat>
                    <vOrig>689.91</vOrig>
                    <vLiq>689.91</vLiq>
                </fat>
                <dup>
                    <nDup>992346</nDup>
                    <dVenc>2015-04-24</dVenc>
                    <vDup>689.91</vDup>
                </dup>
            </cobr>
            <infAdic>
                <infCpl>"DOCUMENTO EMITIDO POR EMPRESA OPTANTE PELO SIMPLES NACIONAL;NAO GERA DIREITO A CREDITO FISCAL DE IPI";"PERMITE O APROVEITAMENTO DE CREDITO DE ICMS NO VALOR DE: R$17,66 CORRESPONDENTE A ALIQUOTA DE 2.56%";Vendedor:1 - Guilherme Kavedikado;Valor Aproximado dos Tributos : R$ 206,97. Fonte IBPT (Instituto Brasileiro de Planejamento Tributario)</infCpl>
            </infAdic>
        </infNFe>
        <Signature xmlns="http://www.w3.org/2000/09/xmldsig#">
            <SignedInfo>
                <CanonicalizationMethod Algorithm="http://www.w3.org/TR/2001/REC-xml-c14n-20010315"/>
                <SignatureMethod Algorithm="http://www.w3.org/2000/09/xmldsig#rsa-sha1"/>
                <Reference URI="#NFe35150300822602000124550010009923461099234656">
                    <Transforms>
                        <Transform Algorithm="http://www.w3.org/2000/09/xmldsig#enveloped-signature"/>
                        <Transform Algorithm="http://www.w3.org/TR/2001/REC-xml-c14n-20010315"/>
                    </Transforms>
                    <DigestMethod Algorithm="http://www.w3.org/2000/09/xmldsig#sha1"/>
                    <DigestValue>oWFauN7opm3Q6yKVaHiEBqW3DwU=</DigestValue>
                </Reference>
            </SignedInfo>
            <SignatureValue>KNhzxr9mt2fNcqf4+UIU9XrkzNqw6qg/Mk/uXCXev6YwWf9iF0hLZiRIqKrlUKicCCBzRTxUOiI/
orc/NtXcAHvX/8LVzlvc/OdiuH+XeqDOgl7KCziu6xN71OW016GQZN6VDOqFwyz3Xp2pPZf56nNs
5CBiLxPtNvX8CM0oMarUKOl8FFZCTnEwWbGXhbShoQ+2MYS9NnC06TCUjXwVQp6T4UAyLjSFuGbD
o2XLpzsVU9UQD2qESpSISGwLEVnRaLeeqJI4MRxtwiEBhSvq0R40sI/ejDHkyAx2XT583msAZV32
i1T+SDM2tIL3zoDQGa4lEm8WxCIKJFluXX7rxg==</SignatureValue><KeyInfo><X509Data><X509Certificate>MIIIajCCBlKgAwIBAgIQTLtMm7tkr6qjM8wZTpUo5jANBgkqhkiG9w0BAQsFADB4MQswCQYDVQQG
EwJCUjETMBEGA1UEChMKSUNQLUJyYXNpbDE2MDQGA1UECxMtU2VjcmV0YXJpYSBkYSBSZWNlaXRh
IEZlZGVyYWwgZG8gQnJhc2lsIC0gUkZCMRwwGgYDVQQDExNBQyBDZXJ0aXNpZ24gUkZCIEc0MB4X
DTE0MTAxMzAwMDAwMFoXDTE1MTAxMjIzNTk1OVowggEMMQswCQYDVQQGEwJCUjETMBEGA1UEChQK
SUNQLUJyYXNpbDELMAkGA1UECBMCU1AxEjAQBgNVBAcUCVNBTyBQQVVMTzE2MDQGA1UECxQtU2Vj
cmV0YXJpYSBkYSBSZWNlaXRhIEZlZGVyYWwgZG8gQnJhc2lsIC0gUkZCMRYwFAYDVQQLFA1SRkIg
ZS1DTlBKIEExMTgwNgYDVQQLFC9BdXRlbnRpY2FkbyBwb3IgQ2VydGlzaWduIENlcnRpZmljYWRv
cmEgRGlnaXRhbDE9MDsGA1UEAxM0UExPVEFHIFNJU1RFTUFTIEUgU1VQUklNRU5UT1MgTFREQSBN
RTowMDgyMjYwMjAwMDEyNDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAI0Y640hajWB
yU0S/7MH47RnCE9dq9Kti72iKBkNwOwZQbysO3InQQZkkZCUn5rGEKKw9R7ddTleZFy3aOR3nGpZ
qulRP3AkjSWnHmTs1KxdPZra1Py5X0VekDOCk43O1vhsCrml7eiCFzivg5vFwUyAT3u5t8k6Muh9
6/QymvkQzxhGyIvtB9Qe1256q1oB9HOPSlPijciXrf6d4SdBQouT77W6A1SyOjZ+T/XZhjNXx5HD
MFyDCEJSM/Zp4k2h+mV7MfVKDKZ2J290YWn9XCI6giLeeNNRS6TK5yrQCZYv0/GiKE3I2nMreEFJ
qrUpuLpiURJIoqbri59N/AXcxJ0CAwEAAaOCA1gwggNUMIG9BgNVHREEgbUwgbKgPQYFYEwBAwSg
NAQyMTYxMjE5NjAzNTQ5OTU4MzQwNDAwMDAwMDAwMDAwMDAwMDAwMDU2MjkzNDIzU1NQU1CgJgYF
YEwBAwKgHQQbTU9OSUNBIE1BUklBIE1VTklaIENBTEFCUklBoBkGBWBMAQMDoBAEDjAwODIyNjAy
MDAwMTI0oBcGBWBMAQMHoA4EDDAwMDAwMDAwMDAwMIEVc3Vwb3J0ZUBwbG90YWcuY29tLmJyMAkG
A1UdEwQCMAAwHwYDVR0jBBgwFoAULpHq1m3lslmC3DiFKXY0FlY80D4wDgYDVR0PAQH/BAQDAgXg
MH8GA1UdIAR4MHYwdAYGYEwBAgEMMGowaAYIKwYBBQUHAgEWXGh0dHA6Ly9pY3AtYnJhc2lsLmNl
cnRpc2lnbi5jb20uYnIvcmVwb3NpdG9yaW8vZHBjL0FDX0NlcnRpc2lnbl9SRkIvRFBDX0FDX0Nl
cnRpc2lnbl9SRkIucGRmMIIBFgYDVR0fBIIBDTCCAQkwV6BVoFOGUWh0dHA6Ly9pY3AtYnJhc2ls
LmNlcnRpc2lnbi5jb20uYnIvcmVwb3NpdG9yaW8vbGNyL0FDQ2VydGlzaWduUkZCRzQvTGF0ZXN0
Q1JMLmNybDBWoFSgUoZQaHR0cDovL2ljcC1icmFzaWwub3V0cmFsY3IuY29tLmJyL3JlcG9zaXRv
cmlvL2xjci9BQ0NlcnRpc2lnblJGQkc0L0xhdGVzdENSTC5jcmwwVqBUoFKGUGh0dHA6Ly9yZXBv
c2l0b3Jpby5pY3BicmFzaWwuZ292LmJyL2xjci9DZXJ0aXNpZ24vQUNDZXJ0aXNpZ25SRkJHNC9M
YXRlc3RDUkwuY3JsMB0GA1UdJQQWMBQGCCsGAQUFBwMCBggrBgEFBQcDBDCBmwYIKwYBBQUHAQEE
gY4wgYswXwYIKwYBBQUHMAKGU2h0dHA6Ly9pY3AtYnJhc2lsLmNlcnRpc2lnbi5jb20uYnIvcmVw
b3NpdG9yaW8vY2VydGlmaWNhZG9zL0FDX0NlcnRpc2lnbl9SRkJfRzQucDdjMCgGCCsGAQUFBzAB
hhxodHRwOi8vb2NzcC5jZXJ0aXNpZ24uY29tLmJyMA0GCSqGSIb3DQEBCwUAA4ICAQBKs2v9oWD9
7L3/P3v6Xvfng4Ul1H53BuUPdrQac1lkS9B0Id7NeSrgXFw+Wm6+fanyUsXYeYGsAQ3dw6hIEKS1
vHm5/8UtL5qaQiuGISY2MxfpUy0gA4qkPB05+eTBr6VUpejpqBORAQTjO6j6NI+HpRsCyTUpG9tJ
JStGw63QZpMLJCHsh+lKPrl8ESt9FElbsLo8XYqYvClA53gZj3exLKzRgw0ayAW5DYrIOprB0r58
qLRwLpRdtG4LIQU0JSiFEF2snJ2wGAX1bFuvjmv7QmvTfbeRKH4ttkkU7Fk1im9cN8AxLOg61tZ7
jR+aTeFXjQ2Bbw9bEzRHGVq3VZOI6007Z7pwOZ4eqBO0I/LT+BHZ2SnFJ8UKOI1xgL5EMapIZLbJ
+lr3bJcjl0WoPlxZs8TvutjG9Fbv08ZpgPo35IRx9K1aDJ514sDTqHwQgXYI279o7i+JJylH3rDv
7ahVNgJgkfS/j5b0P1ggwQnPtbSDLPt3LX0A+wa9zrTxz5v0/ALddjEFoBkyp+SN6H605yenmy0x
Cj7bxTnL+am8nrxufOQXdpHFRGuBhhe0qlRM+EVyGZbl29kN2zm4OHZCA5KAnMcChDZrY3QoYlLK
k3vVkmzq0AGmoO4CxOr33CBFzLbtDHFAoCotvE+x58E7G3CX3J+t1U5dz8PBBsYNkg==</X509Certificate></X509Data></KeyInfo></Signature></NFe><protNFe versao="3.10"><infProt><tpAmb>2</tpAmb><verAplic>SP_NFE_PL_008f</verAplic><chNFe>35150300822602000124550010009923461099234656</chNFe><dhRecbto>2015-03-27T16:50:50-03:00</dhRecbto><nProt>135150001686732</nProt><digVal>oWFauN7opm3Q6yKVaHiEBqW3DwU=</digVal><cStat>100</cStat><xMotivo>Autorizado o uso da NF-e</xMotivo></infProt></protNFe></nfeProc>')

) AS T(XmlCol)
CROSS APPLY
	[XmlCol].nodes('/nfeProc/NFe/infNFe') AS XmlCol(campo) -- Cabecalho e total da nota
CROSS APPLY
	[XmlCol].nodes('/nfeProc/NFe/infNFe/det') AS XmlItems(campo) -- itens sem datalhes de imposto