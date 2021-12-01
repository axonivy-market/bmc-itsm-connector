[Ivy]
17D4D84D9A7872C7 9.3.0 #module
>Proto >Proto Collection #zClass
Ro0 ReadIncidentDemo Big #zClass
Ro0 B #cInfo
Ro0 #process
Ro0 @AnnotationInP-0n ai ai #zField
Ro0 @TextInP .type .type #zField
Ro0 @TextInP .processKind .processKind #zField
Ro0 @TextInP .xml .xml #zField
Ro0 @TextInP .responsibility .responsibility #zField
Ro0 @StartRequest f0 '' #zField
Ro0 @EndTask f1 '' #zField
Ro0 @UserDialog f3 '' #zField
Ro0 @PushWFArc f4 '' #zField
Ro0 @CallSub f5 '' #zField
Ro0 @PushWFArc f6 '' #zField
Ro0 @UserDialog f7 '' #zField
Ro0 @PushWFArc f8 '' #zField
Ro0 @PushWFArc f2 '' #zField
>Proto Ro0 Ro0 ReadIncidentDemo #zField
Ro0 f0 outLink start.ivp #txt
Ro0 f0 inParamDecl '<> param;' #txt
Ro0 f0 requestEnabled true #txt
Ro0 f0 triggerEnabled false #txt
Ro0 f0 callSignature start() #txt
Ro0 f0 startName 'Demo: Read Incident' #txt
Ro0 f0 caseData businessCase.attach=true #txt
Ro0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Ro0 f0 @C|.responsibility Everybody #txt
Ro0 f0 81 49 30 30 -21 17 #rect
Ro0 f1 657 49 30 30 0 15 #rect
Ro0 f3 dialogId com.axonivy.connector.bmc.itsm.demo.IncidentNumberInput #txt
Ro0 f3 startMethod start() #txt
Ro0 f3 requestActionDecl '<> param;' #txt
Ro0 f3 responseMappingAction 'out=in;
out.incidentNumber=result.incidentNumber;
' #txt
Ro0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>IncidentNumberInput</name>
    </language>
</elementInfo>
' #txt
Ro0 f3 160 42 128 44 -57 -8 #rect
Ro0 f4 111 64 160 64 #arcP
Ro0 f5 processCall BmcItsm/ReadIncident:call(String) #txt
Ro0 f5 requestActionDecl '<String incidentNumber> param;' #txt
Ro0 f5 requestMappingAction 'param.incidentNumber=in.incidentNumber;
' #txt
Ro0 f5 responseMappingAction 'out=in;
out.incident=result.incident;
' #txt
Ro0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>BmcItsm/ReadIncident</name>
    </language>
</elementInfo>
' #txt
Ro0 f5 312 42 144 44 -62 -8 #rect
Ro0 f6 288 64 312 64 #arcP
Ro0 f7 dialogId com.axonivy.connector.bmc.itsm.demo.ShowIncident #txt
Ro0 f7 startMethod start(com.axonivy.connector.bmc.itsm.models.Incident) #txt
Ro0 f7 requestActionDecl '<com.axonivy.connector.bmc.itsm.models.Incident incident> param;' #txt
Ro0 f7 requestMappingAction 'param.incident=in.incident;
' #txt
Ro0 f7 responseMappingAction 'out=in;
' #txt
Ro0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ShowIncident</name>
    </language>
</elementInfo>
' #txt
Ro0 f7 488 42 112 44 -37 -8 #rect
Ro0 f8 456 64 488 64 #arcP
Ro0 f2 600 64 657 64 #arcP
>Proto Ro0 .type com.axonivy.connector.bmc.itsm.demo.Data #txt
>Proto Ro0 .processKind NORMAL #txt
>Proto Ro0 0 0 32 24 18 0 #rect
>Proto Ro0 @|BIcon #fIcon
Ro0 f0 mainOut f4 tail #connect
Ro0 f4 head f3 mainIn #connect
Ro0 f3 mainOut f6 tail #connect
Ro0 f6 head f5 mainIn #connect
Ro0 f5 mainOut f8 tail #connect
Ro0 f8 head f7 mainIn #connect
Ro0 f7 mainOut f2 tail #connect
Ro0 f2 head f1 mainIn #connect
