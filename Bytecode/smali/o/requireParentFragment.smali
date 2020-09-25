.class public final Lo/requireParentFragment;
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
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\r\u001a\u00020\u000eJ\u0019\u0010\u000f\u001a\u00020\u000e2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0002\u0010\u0011J\u0008\u0010\u0012\u001a\u00020\u000eH\u0002J\u0006\u0010\u0013\u001a\u00020\u000eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/helper/firebase/config/FirebaseConfig;",
        "",
        "()V",
        "MIN_INTERVAL",
        "",
        "MIN_INTERVAL_FOR_PROCESS_START",
        "TAG",
        "",
        "config",
        "Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;",
        "firstForeground",
        "",
        "initialized",
        "appForeground",
        "",
        "fetch",
        "minimumFetchIntervalInSeconds",
        "(Ljava/lang/Long;)V",
        "initializeIfNotDone",
        "processStart",
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
.field public static ICustomTabsCallback:Z

.field public static final extraCallback:Lo/requireParentFragment;

.field private static final onNavigationEvent:Lo/CrashlyticsReportPersistence$$Lambda$4;

.field private static onPostMessage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Lo/requireParentFragment;

    invoke-direct {v0}, Lo/requireParentFragment;-><init>()V

    sput-object v0, Lo/requireParentFragment;->extraCallback:Lo/requireParentFragment;

    .line 11
    invoke-static {}, Lo/CrashlyticsReportPersistence$$Lambda$4;->getInstance()Lo/CrashlyticsReportPersistence$$Lambda$4;

    move-result-object v0

    const-string v1, "FirebaseRemoteConfig.getInstance()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lo/requireParentFragment;->onNavigationEvent:Lo/CrashlyticsReportPersistence$$Lambda$4;

    const/4 v0, 0x1

    .line 16
    sput-boolean v0, Lo/requireParentFragment;->ICustomTabsCallback:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic extraCallback()Lo/CrashlyticsReportPersistence$$Lambda$4;
    .locals 1

    .line 9
    sget-object v0, Lo/requireParentFragment;->onNavigationEvent:Lo/CrashlyticsReportPersistence$$Lambda$4;

    return-object v0
.end method

.method public static extraCallback(Ljava/lang/Long;)V
    .locals 2

    .line 34
    sget-object v0, Lo/access$201;->ICustomTabsCallback:Lo/access$201;

    new-instance v1, Lo/requireParentFragment$onNavigationEvent;

    invoke-direct {v1, p0}, Lo/requireParentFragment$onNavigationEvent;-><init>(Ljava/lang/Long;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic onNavigationEvent()V
    .locals 3

    .line 1034
    sget-object v0, Lo/access$201;->ICustomTabsCallback:Lo/access$201;

    new-instance v1, Lo/requireParentFragment$onNavigationEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lo/requireParentFragment$onNavigationEvent;-><init>(Ljava/lang/Long;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static final synthetic onPostMessage()V
    .locals 3

    .line 1047
    sget-boolean v0, Lo/requireParentFragment;->onPostMessage:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1048
    sput-boolean v0, Lo/requireParentFragment;->onPostMessage:Z

    const-string v0, "remote_config"

    const-string v1, "init called"

    .line 1049
    invoke-static {v0, v1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    new-instance v0, Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;

    invoke-direct {v0}, Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;-><init>()V

    const-wide/16 v1, 0xe10

    .line 1051
    invoke-virtual {v0, v1, v2}, Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;->setMinimumFetchIntervalInSeconds(J)Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;

    move-result-object v0

    .line 1052
    invoke-virtual {v0}, Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;->build()Lo/CrashlyticsReportPersistence$$Lambda$6;

    move-result-object v0

    const-string v1, "FirebaseRemoteConfigSett\u2026                 .build()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1053
    sget-object v1, Lo/requireParentFragment;->onNavigationEvent:Lo/CrashlyticsReportPersistence$$Lambda$4;

    invoke-virtual {v1, v0}, Lo/CrashlyticsReportPersistence$$Lambda$4;->setConfigSettingsAsync(Lo/CrashlyticsReportPersistence$$Lambda$6;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method
