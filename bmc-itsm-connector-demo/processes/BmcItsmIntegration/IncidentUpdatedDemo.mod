[Ivy]
17D5B3B295CF425B 9.3.0 #module
>Proto >Proto Collection #zClass
Io0 IncidentUpdatedDemo Big #zClass
Io0 B #cInfo
Io0 #process
Io0 @AnnotationInP-0n ai ai #zField
Io0 @TextInP .type .type #zField
Io0 @TextInP .processKind .processKind #zField
Io0 @TextInP .xml .xml #zField
Io0 @TextInP .responsibility .responsibility #zField
Io0 @EndTask f1 '' #zField
Io0 @CallSub f3 '' #zField
Io0 @UserTask f5 '' #zField
Io0 @TkArc f6 '' #zField
Io0 @PushWFArc f2 '' #zField
Io0 @SignalStartEvent f7 '' #zField
Io0 @PushWFArc f0 '' #zField
>Proto Io0 Io0 IncidentUpdatedDemo #zField
Io0 f1 497 49 30 30 0 15 #rect
Io0 f3 processCall BmcItsm/ReadIncident:call(String) #txt
Io0 f3 requestActionDecl '<String incidentNumber> param;' #txt
Io0 f3 requestMappingAction 'param.incidentNumber=in.incidentNumber;
' #txt
Io0 f3 responseMappingAction 'out=in;
out.incident=result.incident;
' #txt
Io0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>BmcItsm/ReadIncident</name>
    </language>
</elementInfo>
' #txt
Io0 f3 152 42 144 44 -62 -8 #rect
Io0 f5 dialogId com.axonivy.connector.bmc.itsm.demo.ShowIncident #txt
Io0 f5 startMethod start(com.axonivy.connector.bmc.itsm.models.Incident) #txt
Io0 f5 requestActionDecl '<com.axonivy.connector.bmc.itsm.models.Incident incident> param;' #txt
Io0 f5 requestMappingAction 'param.incident=in.incident;
' #txt
Io0 f5 responseMappingAction 'out=in;
' #txt
Io0 f5 taskData 'TaskA.NAM=Incident has been updated' #txt
Io0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ShowIncident</name>
    </language>
</elementInfo>
' #txt
Io0 f5 328 42 112 44 -37 -8 #rect
Io0 f6 296 64 328 64 #arcP
Io0 f2 440 64 497 64 #arcP
Io0 f7 actionTable 'out.incidentNumber=signal.getSignalData() as String;
' #txt
Io0 f7 signalCode IncidentUpdated #txt
Io0 f7 attachToBusinessCase false #txt
Io0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>IncidentUpdated</name>
    </language>
</elementInfo>
' #txt
Io0 f7 81 49 30 30 -44 17 #rect
Io0 f0 111 64 152 64 #arcP
>Proto Io0 .type com.axonivy.connector.bmc.itsm.demo.Data #txt
>Proto Io0 .processKind NORMAL #txt
>Proto Io0 0 0 32 24 18 0 #rect
>Proto Io0 @|BIcon #fIcon
Io0 f3 mainOut f6 tail #connect
Io0 f6 head f5 in #connect
Io0 f5 out f2 tail #connect
Io0 f2 head f1 mainIn #connect
Io0 f7 mainOut f0 tail #connect
Io0 f0 head f3 mainIn #connect
