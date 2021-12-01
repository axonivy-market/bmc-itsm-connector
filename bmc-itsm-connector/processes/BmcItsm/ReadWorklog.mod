[Ivy]
17D483785BA27E1C 9.3.0 #module
>Proto >Proto Collection #zClass
Ct0 ReadWorklog Big #zClass
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
Ct0 @PushWFArc f7 '' #zField
>Proto Ct0 Ct0 ReadWorklog #zField
Ct0 f0 inParamDecl '<String workLogId> param;' #txt
Ct0 f0 inParamTable 'out.workLogId=param.workLogId;
' #txt
Ct0 f0 outParamDecl '<com.axonivy.connector.bmc.itsm.models.WorkLog worklog> result;' #txt
Ct0 f0 outParamTable 'result.worklog=in.worklog;
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
Ct0 f1 353 49 30 30 0 15 #rect
Ct0 f3 clientId 5c4bd588-2458-46de-ab54-de103da7c051 #txt
Ct0 f3 path /arsys/v1/entry/HPD:WorkLog #txt
Ct0 f3 queryParams 'q="''Work Log ID''=""" + in.workLogId + """";
' #txt
Ct0 f3 resultType java.lang.String #txt
Ct0 f3 responseCode 'import com.axonivy.connector.bmc.itsm.models.WorkLog;
import com.axonivy.connector.bmc.itsm.service.JsonParserService;

out.worklogs = JsonParserService.getInstnce().parseJSONToType(result, WorkLog.class);
if(out.worklogs.size() > 0) {
out.worklog = out.worklogs.get(0);
}' #txt
Ct0 f3 clientErrorCode ivy:error:rest:client #txt
Ct0 f3 statusErrorCode ivy:error:rest:client #txt
Ct0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Read Worklog</name>
    </language>
</elementInfo>
' #txt
Ct0 f3 168 42 112 44 -39 -8 #rect
Ct0 f2 280 64 353 64 #arcP
Ct0 f7 111 64 168 64 #arcP
Ct0 f7 0 0.49999999999999994 0 0 #arcLabel
>Proto Ct0 .type com.axonivy.connector.bmc.itsm.Data #txt
>Proto Ct0 .processKind CALLABLE_SUB #txt
>Proto Ct0 0 0 32 24 18 0 #rect
>Proto Ct0 @|BIcon #fIcon
Ct0 f3 mainOut f2 tail #connect
Ct0 f2 head f1 mainIn #connect
Ct0 f0 mainOut f7 tail #connect
Ct0 f7 head f3 mainIn #connect
