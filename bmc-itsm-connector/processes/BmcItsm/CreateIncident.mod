[Ivy]
17D48370366A9147 9.3.0 #module
>Proto >Proto Collection #zClass
Ct0 CreateIncident Big #zClass
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
Ct0 @PushWFArc f4 '' #zField
Ct0 @PushWFArc f2 '' #zField
>Proto Ct0 Ct0 CreateIncident #zField
Ct0 f0 inParamDecl '<com.axonivy.connector.bmc.itsm.models.Incident incident> param;' #txt
Ct0 f0 inParamTable 'out.incident=param.incident;
' #txt
Ct0 f0 outParamDecl '<com.axonivy.connector.bmc.itsm.models.Incident incident> result;' #txt
Ct0 f0 outParamTable 'result.incident=in.incident;
' #txt
Ct0 f0 callSignature call(com.axonivy.connector.bmc.itsm.models.Incident) #txt
Ct0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call(Incident)</name>
    </language>
</elementInfo>
' #txt
Ct0 f0 81 49 30 30 -33 17 #rect
Ct0 f1 337 49 30 30 0 15 #rect
Ct0 f3 clientId 5c4bd588-2458-46de-ab54-de103da7c051 #txt
Ct0 f3 path /arsys/v1/entry/HPD:IncidentInterface_Create #txt
Ct0 f3 queryParams 'fields="values(Incident Number)";
' #txt
Ct0 f3 method POST #txt
Ct0 f3 bodyInputType RAW #txt
Ct0 f3 bodyRaw '{
	"values": {
		"First_Name": "Allen",
		"Last_Name": "Johnson",
		"Description": "<%=in.incident.description%>",
		"Impact": "<%=in.incident.impact%>",
		"Urgency": "<%=in.incident.urgency%>",
		"Status": "<%=in.incident.status%>",
		"Reported Source": "<%=in.incident.reportedSource%>",
		"Service_Type": "<%=in.incident.serviceType%>",
		"Detailed_Decription": "<%=in.incident.detailedDescription%>",
		"z1D_Action": "CREATE"
	}
}' #txt
Ct0 f3 resultType java.lang.String #txt
Ct0 f3 responseCode 'import com.axonivy.connector.bmc.itsm.models.Incident;
import com.axonivy.connector.bmc.itsm.service.JsonParserService;

out.incident = JsonParserService.getInstnce().parseJSONToSingleObject(result, Incident.class) as Incident;' #txt
Ct0 f3 clientErrorCode ivy:error:rest:client #txt
Ct0 f3 statusErrorCode ivy:error:rest:client #txt
Ct0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Create Incident</name>
    </language>
</elementInfo>
' #txt
Ct0 f3 168 42 112 44 -41 -8 #rect
Ct0 f4 111 64 168 64 #arcP
Ct0 f2 280 64 337 64 #arcP
>Proto Ct0 .type com.axonivy.connector.bmc.itsm.Data #txt
>Proto Ct0 .processKind CALLABLE_SUB #txt
>Proto Ct0 0 0 32 24 18 0 #rect
>Proto Ct0 @|BIcon #fIcon
Ct0 f0 mainOut f4 tail #connect
Ct0 f4 head f3 mainIn #connect
Ct0 f3 mainOut f2 tail #connect
Ct0 f2 head f1 mainIn #connect
