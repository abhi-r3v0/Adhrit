.class public Lo/AppsFlyerLibCore$3;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static ICustomTabsCallback:Lo/AppsFlyerLibCore$6;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized onMessageChannelReady()Z
    .locals 2

    const-class v0, Lo/AppsFlyerLibCore$3;

    monitor-enter v0

    .line 113
    :try_start_0
    sget-object v1, Lo/AppsFlyerLibCore$3;->ICustomTabsCallback:Lo/AppsFlyerLibCore$6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static onMessageChannelReady(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-static {p0, v0}, Lo/AppsFlyerLibCore$3;->onNavigationEvent(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static onNavigationEvent(Ljava/lang/String;I)Z
    .locals 2

    .line 43
    const-class v0, Lo/AppsFlyerLibCore$3;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lo/AppsFlyerLibCore$3;->ICustomTabsCallback:Lo/AppsFlyerLibCore$6;

    if-eqz v1, :cond_0

    .line 50
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    sget-object v0, Lo/AppsFlyerLibCore$3;->ICustomTabsCallback:Lo/AppsFlyerLibCore$6;

    invoke-interface {v0, p0, p1}, Lo/AppsFlyerLibCore$6;->onNavigationEvent(Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 45
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "NativeLoader has not been initialized.  To use standard native library loading, call NativeLoader.init(new SystemDelegate())."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 50
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized onPostMessage(Lo/AppsFlyerLibCore$6;)V
    .locals 2

    const-class v0, Lo/AppsFlyerLibCore$3;

    monitor-enter v0

    .line 98
    :try_start_0
    sget-object v1, Lo/AppsFlyerLibCore$3;->ICustomTabsCallback:Lo/AppsFlyerLibCore$6;

    if-nez v1, :cond_0

    .line 101
    sput-object p0, Lo/AppsFlyerLibCore$3;->ICustomTabsCallback:Lo/AppsFlyerLibCore$6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit v0

    return-void

    .line 99
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot re-initialize NativeLoader."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
