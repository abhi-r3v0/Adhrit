.class final Lo/setApp$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onPostMessage"
.end annotation


# instance fields
.field final synthetic this$0:Lo/setApp;


# direct methods
.method private constructor <init>(Lo/setApp;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lo/setApp$onPostMessage;->this$0:Lo/setApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/setApp;Lo/setApp$2;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lo/setApp$onPostMessage;-><init>(Lo/setApp;)V

    return-void
.end method


# virtual methods
.method public final getRemoteKeysForTarget(I)Lo/CrashlyticsReportWithSessionId;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lo/setApp$onPostMessage;->this$0:Lo/setApp;

    invoke-virtual {v0}, Lo/setFilename;->getSyncEngine()Lo/AutoValue_CrashlyticsReport_Session_Application$1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->getRemoteKeysForTarget(I)Lo/CrashlyticsReportWithSessionId;

    move-result-object p1

    return-object p1
.end method

.method public final handleOnlineStateChange(Lo/setGeneratorType;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lo/setApp$onPostMessage;->this$0:Lo/setApp;

    invoke-virtual {v0}, Lo/setFilename;->getSyncEngine()Lo/AutoValue_CrashlyticsReport_Session_Application$1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->handleOnlineStateChange(Lo/setGeneratorType;)V

    return-void
.end method

.method public final handleRejectedListen(ILo/emptyMap;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lo/setApp$onPostMessage;->this$0:Lo/setApp;

    invoke-virtual {v0}, Lo/setFilename;->getSyncEngine()Lo/AutoValue_CrashlyticsReport_Session_Application$1;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->handleRejectedListen(ILo/emptyMap;)V

    return-void
.end method

.method public final handleRejectedWrite(ILo/emptyMap;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lo/setApp$onPostMessage;->this$0:Lo/setApp;

    invoke-virtual {v0}, Lo/setFilename;->getSyncEngine()Lo/AutoValue_CrashlyticsReport_Session_Application$1;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->handleRejectedWrite(ILo/emptyMap;)V

    return-void
.end method

.method public final handleRemoteEvent(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lo/setApp$onPostMessage;->this$0:Lo/setApp;

    invoke-virtual {v0}, Lo/setFilename;->getSyncEngine()Lo/AutoValue_CrashlyticsReport_Session_Application$1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->handleRemoteEvent(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;)V

    return-void
.end method

.method public final handleSuccessfulWrite(Lo/CrashlyticsReport$Architecture;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lo/setApp$onPostMessage;->this$0:Lo/setApp;

    invoke-virtual {v0}, Lo/setFilename;->getSyncEngine()Lo/AutoValue_CrashlyticsReport_Session_Application$1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;->handleSuccessfulWrite(Lo/CrashlyticsReport$Architecture;)V

    return-void
.end method
