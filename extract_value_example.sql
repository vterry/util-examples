select DATEEVENT, extractvalue(xmltype(TRACEMSG),
  'xml-fragment/header/env:Header/wsa:ReplyTo/wsa:ReferenceParameters/instra:tracking.ecid',
  'xmlns:instra="http://xmlns.oracle.com/sca/tracking/1.0",
   xmlns:wsa="http://www.w3.org/2005/08/addressing",
   xmlns:env="http://schemas.xmlsoap.org/soap/envelope/"') ecid
from TIBCO_OW.LOGEAI
where TRACKINGID = '06981180000116'
and SOATAG = 'OSB.ServicosNegocio.AnaliseCreditoDividaPJ.Proxy.AnaliseCreditoDividaPJ'
and SUBPROCESSNAME = 'realizarAnaliseCreditoInternaMovel'
order by DATEEVENT desc
;