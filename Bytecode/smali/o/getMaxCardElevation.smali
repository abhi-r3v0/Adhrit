.class public final Lo/getMaxCardElevation;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/findSameItem;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J \u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0004H\u0016R\u0014\u0010\u0003\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006\"\u0004\u0008\r\u0010\n\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/utils/DevLog;",
        "Lcom/dreamplug/utils/DevLogInterface;",
        "()V",
        "enable",
        "",
        "getEnable",
        "()Z",
        "enableCrashlytics",
        "getEnableCrashlytics",
        "setEnableCrashlytics",
        "(Z)V",
        "enableLogging",
        "getEnableLogging",
        "setEnableLogging",
        "log",
        "",
        "string",
        "",
        "logException",
        "throwable",
        "",
        "logLifecycle",
        "ownerName",
        "lifecycle",
        "Landroidx/lifecycle/Lifecycle;",
        "trackTimeSpent",
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
.field public static final extraCallback:Lo/getMaxCardElevation;

.field private static onMessageChannelReady:Z

.field private static onNavigationEvent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lo/getMaxCardElevation;

    invoke-direct {v0}, Lo/getMaxCardElevation;-><init>()V

    sput-object v0, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    .line 23
    sget-object v1, Lo/merge;->extraCallback:Lo/merge;

    check-cast v0, Lo/findSameItem;

    invoke-static {v0}, Lo/merge;->onNavigationEvent(Lo/findSameItem;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 15
    sput-boolean v0, Lo/getMaxCardElevation;->onNavigationEvent:Z

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "string"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget-boolean v0, Lo/getMaxCardElevation;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V

    :cond_0
    const-string v0, "UserActions"

    .line 59
    invoke-static {v0}, Lo/frameInBuffer;->onPostMessage(Ljava/lang/String;)Lo/frameInBuffer$onPostMessage;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lo/frameInBuffer$onPostMessage;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static onMessageChannelReady()V
    .locals 1

    const/4 v0, 0x1

    .line 16
    sput-boolean v0, Lo/getMaxCardElevation;->onMessageChannelReady:Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V
    .locals 2

    const-string v0, "ownerName"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycle"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1019
    sget-boolean v0, Lo/getMaxCardElevation;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p2}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v0, v1, :cond_0

    .line 28
    new-instance v0, Lcom/dreamplug/androidapp/utils/DevLog$logLifecycle$1;

    invoke-direct {v0, p1, p3, p2}, Lcom/dreamplug/androidapp/utils/DevLog$logLifecycle$1;-><init>(Ljava/lang/String;ZLo/MediaControllerCompatApi21$CallbackProxy;)V

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p2, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    :cond_0
    return-void
.end method

.method public final onPostMessage(Ljava/lang/Throwable;)V
    .locals 1

    const-string/jumbo v0, "throwable"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sget-boolean v0, Lo/getMaxCardElevation;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 64
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    :cond_0
    const-string v0, "$this$debugStackTrace"

    .line 66
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2005
    sget-object v0, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    invoke-static {}, Lo/replaceAll;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2006
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method
