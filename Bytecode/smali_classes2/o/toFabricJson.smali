.class public Lo/toFabricJson;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static ICustomTabsCallback:Lo/toFabricJson;


# instance fields
.field private final onNavigationEvent:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lo/toFabricJson;->onNavigationEvent:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 18
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public static onMessageChannelReady()V
    .locals 2

    .line 22
    sget-object v0, Lo/toFabricJson;->ICustomTabsCallback:Lo/toFabricJson;

    if-nez v0, :cond_1

    .line 23
    const-class v0, Lo/toFabricJson;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lo/toFabricJson;->ICustomTabsCallback:Lo/toFabricJson;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lo/toFabricJson;

    invoke-direct {v1}, Lo/toFabricJson;-><init>()V

    sput-object v1, Lo/toFabricJson;->ICustomTabsCallback:Lo/toFabricJson;

    .line 27
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 34
    new-instance v0, Lo/toFabricJson$5;

    invoke-direct {v0, p2}, Lo/toFabricJson$5;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lo/Settings;->ICustomTabsCallback(Lo/Settings$ICustomTabsCallback;)V

    .line 45
    new-instance v0, Lo/toFabricJson$4;

    invoke-direct {v0}, Lo/toFabricJson$4;-><init>()V

    invoke-static {v0}, Lo/Settings;->ICustomTabsCallback(Lo/Settings$ICustomTabsCallback;)V

    .line 52
    iget-object v0, p0, Lo/toFabricJson;->onNavigationEvent:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const-wide/16 p1, 0x190

    .line 1061
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1063
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1065
    :goto_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    const/16 p1, 0xa

    .line 1066
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method
