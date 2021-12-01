[Ivy]
17D4D841EFC89FBF 9.3.0 #module
>Proto >Proto Collection #zClass
Co0 CreateIncidentDemo Big #zClass
Co0 B #cInfo
Co0 #process
Co0 @AnnotationInP-0n ai ai #zField
Co0 @TextInP .type .type #zField
Co0 @TextInP .processKind .processKind #zField
Co0 @TextInP .xml .xml #zField
Co0 @TextInP .responsibility .responsibility #zField
Co0 @StartRequest f0 '' #zField
Co0 @EndTask f1 '' #zField
Co0 @UserDialog f3 '' #zField
Co0 @PushWFArc f4 '' #zField
Co0 @CallSub f5 '' #zField
Co0 @PushWFArc f6 '' #zField
Co0 @CallSub f7 '' #zField
Co0 @PushWFArc f8 '' #zField
Co0 @UserDialog f9 '' #zField
Co0 @PushWFArc f10 '' #zField
Co0 @PushWFArc f2 '' #zField
>Proto Co0 Co0 CreateIncidentDemo #zField
Co0 f0 outLink start.ivp #txt
Co0 f0 inParamDecl '<> param;' #txt
Co0 f0 requestEnabled true #txt
Co0 f0 triggerEnabled false #txt
Co0 f0 callSignature start() #txt
Co0 f0 startName 'Demo: Create Incident' #txt
Co0 f0 caseData businessCase.attach=true #txt
Co0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Co0 f0 @C|.responsibility Everybody #txt
Co0 f0 81 49 30 30 -21 17 #rect
Co0 f1 849 49 30 30 0 15 #rect
Co0 f3 dialogId com.axonivy.connector.bmc.itsm.demo.CreateIncident #txt
Co0 f3 startMethod start() #txt
Co0 f3 requestActionDecl '<> param;' #txt
Co0 f3 responseMappingAction 'out=in;
out.incident=result.incident;
' #txt
Co0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>CreateIncident</name>
    </language>
</elementInfo>
' #txt
Co0 f3 168 42 112 44 -40 -8 #rect
Co0 f4 111 64 168 64 #arcP
Co0 f5 processCall BmcItsm/CreateIncident:call(com.axonivy.connector.bmc.itsm.models.Incident) #txt
Co0 f5 requestActionDecl '<com.axonivy.connector.bmc.itsm.models.Incident incident> param;' #txt
Co0 f5 requestMappingAction 'param.incident=in.incident;
' #txt
Co0 f5 responseMappingAction 'out=in;
out.incident=result.incident;
' #txt
Co0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>BmcItsm/CreateIncident</name>
    </language>
</elementInfo>
' #txt
Co0 f5 312 42 144 44 -66 -8 #rect
Co0 f6 280 64 312 64 #arcP
Co0 f7 processCall BmcItsm/ReadIncident:call(String) #txt
Co0 f7 requestActionDecl '<String incidentNumber> param;' #txt
Co0 f7 requestMappingAction 'param.incidentNumber=in.incident.incidentNumber;
' #txt
Co0 f7 responseMappingAction 'out=in;
out.incident=result.incident;
' #txt
Co0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>BmcItsm/ReadIncident</name>
    </language>
</elementInfo>
' #txt
Co0 f7 504 42 144 44 -62 -8 #rect
Co0 f8 456 64 504 64 #arcP
Co0 f9 dialogId com.axonivy.connector.bmc.itsm.demo.ShowIncident #txt
Co0 f9 startMethod start(com.axonivy.connector.bmc.itsm.models.Incident) #txt
Co0 f9 requestActionDecl '<com.axonivy.connector.bmc.itsm.models.Incident incident> param;' #txt
Co0 f9 requestMappingAction 'param.incident=in.incident;
' #txt
Co0 f9 responseMappingAction 'out=in;
' #txt
Co0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ShowIncident</name>
    </language>
</elementInfo>
' #txt
Co0 f9 680 42 112 44 -37 -8 #rect
Co0 f10 648 64 680 64 #arcP
Co0 f2 792 64 849 64 #arcP
>Proto Co0 .type com.axonivy.connector.bmc.itsm.demo.Data #txt
>Proto Co0 .processKind NORMAL #txt
>Proto Co0 0 0 32 24 18 0 #rect
>Proto Co0 @|BIcon #fIcon
Co0 f0 mainOut f4 tail #connect
Co0 f4 head f3 mainIn #connect
Co0 f3 mainOut f6 tail #connect
Co0 f6 head f5 mainIn #connect
Co0 f5 mainOut f8 tail #connect
Co0 f8 head f7 mainIn #connect
Co0 f7 mainOut f10 tail #connect
Co0 f10 head f9 mainIn #connect
Co0 f9 mainOut f2 tail #connect
Co0 f2 head f1 mainIn #connect
