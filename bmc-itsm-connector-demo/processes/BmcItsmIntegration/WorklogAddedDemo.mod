[Ivy]
17D5B3BE3E06725D 9.3.0 #module
>Proto >Proto Collection #zClass
Wo0 WorklogAddedDemo Big #zClass
Wo0 B #cInfo
Wo0 #process
Wo0 @AnnotationInP-0n ai ai #zField
Wo0 @TextInP .type .type #zField
Wo0 @TextInP .processKind .processKind #zField
Wo0 @TextInP .xml .xml #zField
Wo0 @TextInP .responsibility .responsibility #zField
Wo0 @EndTask f1 '' #zField
Wo0 @UserTask f3 '' #zField
Wo0 @PushWFArc f2 '' #zField
Wo0 @CallSub f5 '' #zField
Wo0 @TkArc f4 '' #zField
Wo0 @SignalStartEvent f0 '' #zField
Wo0 @PushWFArc f6 '' #zField
>Proto Wo0 Wo0 WorklogAddedDemo #zField
Wo0 f1 497 49 30 30 0 15 #rect
Wo0 f3 dialogId com.axonivy.connector.bmc.itsm.demo.ShowWorklog #txt
Wo0 f3 startMethod start(com.axonivy.connector.bmc.itsm.models.WorkLog) #txt
Wo0 f3 requestActionDecl '<com.axonivy.connector.bmc.itsm.models.WorkLog worklog> param;' #txt
Wo0 f3 requestMappingAction 'param.worklog=in.workLog;
' #txt
Wo0 f3 responseMappingAction 'out=in;
' #txt
Wo0 f3 taskData 'TaskA.NAM=Worklog has been added' #txt
Wo0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ShowWorklog</name>
    </language>
</elementInfo>
' #txt
Wo0 f3 328 42 112 44 -38 -8 #rect
Wo0 f2 440 64 497 64 #arcP
Wo0 f5 processCall BmcItsm/ReadWorklog:call(String) #txt
Wo0 f5 requestActionDecl '<String workLogId> param;' #txt
Wo0 f5 requestMappingAction 'param.workLogId=in.workLogId;
' #txt
Wo0 f5 responseMappingAction 'out=in;
out.worklog=result.worklog;
' #txt
Wo0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>BmcItsm/ReadWorklog</name>
    </language>
</elementInfo>
' #txt
Wo0 f5 152 42 144 44 -63 -8 #rect
Wo0 f4 296 64 328 64 #arcP
Wo0 f0 actionTable 'out.workLogId=signal.getSignalData() as String;
' #txt
Wo0 f0 signalCode WorklogAdded #txt
Wo0 f0 attachToBusinessCase false #txt
Wo0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>WorklogAdded</name>
    </language>
</elementInfo>
' #txt
Wo0 f0 81 49 30 30 -35 18 #rect
Wo0 f6 111 64 152 64 #arcP
>Proto Wo0 .type com.axonivy.connector.bmc.itsm.demo.Data #txt
>Proto Wo0 .processKind NORMAL #txt
>Proto Wo0 0 0 32 24 18 0 #rect
>Proto Wo0 @|BIcon #fIcon
Wo0 f3 out f2 tail #connect
Wo0 f2 head f1 mainIn #connect
Wo0 f5 mainOut f4 tail #connect
Wo0 f4 head f3 in #connect
Wo0 f0 mainOut f6 tail #connect
Wo0 f6 head f5 mainIn #connect
