.class public final Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/doWriteToLog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;,
        Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadEncoder;,
        Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;,
        Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;,
        Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportCustomAttributeEncoder;,
        Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionBinaryImageEncoder;,
        Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionSignalEncoder;,
        Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;,
        Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;,
        Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadEncoder;,
        Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionEncoder;,
        Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;,
        Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder;,
        Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionDeviceEncoder;,
        Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;,
        Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionUserEncoder;,
        Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationOrganizationEncoder;,
        Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationEncoder;,
        Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;,
        Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportEncoder;
    }
.end annotation


# static fields
.field public static final CODEGEN_VERSION:I = 0x1

.field public static final CONFIG:Lo/doWriteToLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder;->CONFIG:Lo/doWriteToLog;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final configure(Lo/openLogFile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/openLogFile<",
            "*>;)V"
        }
    .end annotation

    .line 22
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 23
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 24
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 25
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 26
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 27
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Application;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 28
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application$Organization;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationOrganizationEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationOrganizationEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 29
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Application_Organization;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationOrganizationEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationOrganizationEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 30
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$User;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionUserEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionUserEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 31
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_User;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionUserEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionUserEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 32
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$OperatingSystem;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 33
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 34
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Device;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionDeviceEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionDeviceEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 35
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Device;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionDeviceEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionDeviceEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 36
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 37
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Event;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 38
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 39
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Event_Application;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 40
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Execution;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 41
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Event_Application_Execution;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 42
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Execution$Thread;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 43
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 44
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 45
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread_Frame;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 46
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Execution$Exception;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 47
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Exception;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 48
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Execution$Signal;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionSignalEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionSignalEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 49
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionSignalEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionSignalEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 50
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionBinaryImageEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionBinaryImageEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 51
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_BinaryImage;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionBinaryImageEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionBinaryImageEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 52
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$CustomAttribute;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportCustomAttributeEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportCustomAttributeEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 53
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_CustomAttribute;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportCustomAttributeEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportCustomAttributeEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 54
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Device;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 55
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Event_Device;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 56
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Log;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 57
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Event_Log;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 58
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 59
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_FilesPayload;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 60
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    .line 61
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_FilesPayload_File;

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;->INSTANCE:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;

    invoke-interface {p1, v0, v1}, Lo/openLogFile;->registerEncoder(Ljava/lang/Class;Lo/QueueFile$1;)Lo/openLogFile;

    return-void
.end method
