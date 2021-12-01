[Ivy]
17D4837C4AF1589D 9.3.0 #module
>Proto >Proto Collection #zClass
Ct0 CreateWorklogOnIncident Big #zClass
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
>Proto Ct0 Ct0 CreateWorklogOnIncident #zField
Ct0 f0 inParamDecl '<com.axonivy.connector.bmc.itsm.models.WorkLog workLog> param;' #txt
Ct0 f0 inParamTable 'out.worklog=param.workLog;
' #txt
Ct0 f0 outParamDecl '<com.axonivy.connector.bmc.itsm.models.WorkLog worklog> result;' #txt
Ct0 f0 outParamTable 'result.worklog=in.worklog;
' #txt
Ct0 f0 callSignature call(com.axonivy.connector.bmc.itsm.models.WorkLog) #txt
Ct0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call(WorkLog)</name>
    </language>
</elementInfo>
' #txt
Ct0 f0 81 49 30 30 -31 16 #rect
Ct0 f1 353 49 30 30 0 15 #rect
Ct0 f3 clientId 5c4bd588-2458-46de-ab54-de103da7c051 #txt
Ct0 f3 path /arsys/v1/entry/HPD:WorkLog #txt
Ct0 f3 queryParams 'fields="values(Work Log ID)";
' #txt
Ct0 f3 method POST #txt
Ct0 f3 bodyInputType RAW #txt
Ct0 f3 bodyRaw '{
	"values": {
		"Incident Number": "<%=in.worklog.incidentNumber%>",
		"Work Log Type": "<%=in.worklog.workLogType%>",
		"Detailed Description": "<%=in.worklog.detailedDescription%>",
		"View Access": "<%=in.worklog.viewAccess%>"
	}
}' #txt
Ct0 f3 resultType java.lang.String #txt
Ct0 f3 responseCode 'import com.axonivy.connector.bmc.itsm.models.WorkLog;
import com.axonivy.connector.bmc.itsm.service.JsonParserService;

out.worklog = JsonParserService.getInstnce().parseJSONToSingleObject(result, WorkLog.class) as WorkLog;' #txt
Ct0 f3 clientErrorCode ivy:error:rest:client #txt
Ct0 f3 statusErrorCode ivy:error:rest:client #txt
Ct0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Create Worklog on Incident</name>
    </language>
</elementInfo>
' #txt
Ct0 f3 160 42 160 44 -74 -8 #rect
Ct0 f2 320 64 353 64 #arcP
Ct0 f4 111 64 160 64 #arcP
>Proto Ct0 .type com.axonivy.connector.bmc.itsm.Data #txt
>Proto Ct0 .processKind CALLABLE_SUB #txt
>Proto Ct0 0 0 32 24 18 0 #rect
>Proto Ct0 @|BIcon #fIcon
Ct0 f3 mainOut f2 tail #connect
Ct0 f2 head f1 mainIn #connect
Ct0 f0 mainOut f4 tail #connect
Ct0 f4 head f3 mainIn #connect
