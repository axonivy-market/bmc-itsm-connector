[Ivy]
17D483756D9D9905 9.3.0 #module
>Proto >Proto Collection #zClass
Ct0 ReadIncident Big #zClass
Ct0 B #cInfo
Ct0 #process
Ct0 @AnnotationInP-0n ai ai #zField
Ct0 @TextInP .type .type #zField
Ct0 @TextInP .processKind .processKind #zField
Ct0 @TextInP .xml .xml #zField
Ct0 @TextInP .responsibility .responsibility #zField
Ct0 @StartSub f0 '' #zField
Ct0 @EndSub f1 '' #zField
Ct0 @RestClientCall f3 '' #zField
Ct0 @PushWFArc f2 '' #zField
Ct0 @PushWFArc f4 '' #zField
>Proto Ct0 Ct0 ReadIncident #zField
Ct0 f0 inParamDecl '<String incidentNumber> param;' #txt
Ct0 f0 inParamTable 'out.incidentNumber=param.incidentNumber;
' #txt
Ct0 f0 outParamDecl '<com.axonivy.connector.bmc.itsm.models.Incident incident> result;' #txt
Ct0 f0 outParamTable 'result.incident=in.incident;
' #txt
Ct0 f0 callSignature call(String) #txt
Ct0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call(String)</name>
    </language>
</elementInfo>
' #txt
Ct0 f0 81 49 30 30 -13 17 #rect
Ct0 f1 345 49 30 30 0 15 #rect
Ct0 f3 clientId 5c4bd588-2458-46de-ab54-de103da7c051 #txt
Ct0 f3 path '/arsys/v1/entry/HPD:Help Desk' #txt
Ct0 f3 queryParams 'q="''Incident Number''=""" + in.incidentNumber + """";
' #txt
Ct0 f3 resultType java.lang.String #txt
Ct0 f3 responseCode 'import com.axonivy.connector.bmc.itsm.models.Incident;
import com.axonivy.connector.bmc.itsm.service.JsonParserService;

out.incidents = JsonParserService.getInstnce().parseJSONToType(result, Incident.class);
if(out.incidents.size() > 0){
out.incident = out.incidents.get(0);
}' #txt
Ct0 f3 clientErrorCode ivy:error:rest:client #txt
Ct0 f3 statusErrorCode ivy:error:rest:client #txt
Ct0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Read Incident</name>
    </language>
</elementInfo>
' #txt
Ct0 f3 176 42 112 44 -38 -8 #rect
Ct0 f2 288 64 345 64 #arcP
Ct0 f4 111 64 176 64 #arcP
>Proto Ct0 .type com.axonivy.connector.bmc.itsm.Data #txt
>Proto Ct0 .processKind CALLABLE_SUB #txt
>Proto Ct0 0 0 32 24 18 0 #rect
>Proto Ct0 @|BIcon #fIcon
Ct0 f3 mainOut f2 tail #connect
Ct0 f2 head f1 mainIn #connect
Ct0 f0 mainOut f4 tail #connect
Ct0 f4 head f3 mainIn #connect
