.class public final Lo/entryRemoved;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\u0008J\u0008\u0010\t\u001a\u00020\u0008H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/utils/HealthUpdater;",
        "",
        "()V",
        "NAME",
        "",
        "listener",
        "Lcom/google/firebase/firestore/ListenerRegistration;",
        "init",
        "",
        "listen",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static extraCallback:Lo/getNdkPayload;

.field public static final onPostMessage:Lo/entryRemoved;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lo/entryRemoved;

    invoke-direct {v0}, Lo/entryRemoved;-><init>()V

    sput-object v0, Lo/entryRemoved;->onPostMessage:Lo/entryRemoved;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic ICustomTabsCallback()Lo/getNdkPayload;
    .locals 1

    .line 10
    sget-object v0, Lo/entryRemoved;->extraCallback:Lo/getNdkPayload;

    return-object v0
.end method

.method public static final synthetic onMessageChannelReady()V
    .locals 2

    .line 1029
    invoke-static {}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getInstance()Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    move-result-object v0

    const-string v1, "health"

    .line 1030
    invoke-virtual {v0, v1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->collection(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationEncoder;

    move-result-object v0

    .line 1031
    invoke-virtual {v0, v1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationEncoder;->document(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;

    move-result-object v0

    .line 1032
    sget-object v1, Lo/entryRemoved$extraCallback;->onNavigationEvent:Lo/entryRemoved$extraCallback;

    check-cast v1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;

    invoke-virtual {v0, v1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->addSnapshotListener(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Lo/getNdkPayload;

    move-result-object v0

    sput-object v0, Lo/entryRemoved;->extraCallback:Lo/getNdkPayload;

    return-void
.end method

.method public static onPostMessage()V
    .locals 2

    .line 15
    invoke-static {}, Lo/setMediaButtonReceiver;->onPostMessage()Lo/toLegacyStreamType;

    move-result-object v0

    const-string v1, "ProcessLifecycleOwner.get()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lo/toLegacyStreamType;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    new-instance v1, Lcom/dreamplug/androidapp/utils/HealthUpdater$init$1;

    invoke-direct {v1}, Lcom/dreamplug/androidapp/utils/HealthUpdater$init$1;-><init>()V

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    return-void
.end method
