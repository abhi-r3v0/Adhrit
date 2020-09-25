.class public abstract Lo/trackAppLaunch;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setDeviceTrackingDisabled;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/trackAppLaunch$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T::",
        "Ljava/io/Closeable;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setDeviceTrackingDisabled<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Lo/trackAppLaunch<",
            "TK;TT;>.extraCallback;>;"
        }
    .end annotation
.end field

.field final extraCallback:Ljava/lang/String;

.field final onMessageChannelReady:Z

.field final onNavigationEvent:Lo/setDeviceTrackingDisabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setDeviceTrackingDisabled<",
            "TT;>;"
        }
    .end annotation
.end field

.field final onPostMessage:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lo/setDeviceTrackingDisabled;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setDeviceTrackingDisabled<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3, v0}, Lo/trackAppLaunch;-><init>(Lo/setDeviceTrackingDisabled;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected constructor <init>(Lo/setDeviceTrackingDisabled;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setDeviceTrackingDisabled<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lo/trackAppLaunch;->onNavigationEvent:Lo/setDeviceTrackingDisabled;

    .line 78
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/trackAppLaunch;->ICustomTabsCallback:Ljava/util/Map;

    .line 79
    iput-boolean p4, p0, Lo/trackAppLaunch;->onMessageChannelReady:Z

    .line 80
    iput-object p2, p0, Lo/trackAppLaunch;->extraCallback:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lo/trackAppLaunch;->onPostMessage:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized onNavigationEvent(Ljava/lang/Object;)Lo/trackAppLaunch$extraCallback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lo/trackAppLaunch<",
            "TK;TT;>.extraCallback;"
        }
    .end annotation

    monitor-enter p0

    .line 130
    :try_start_0
    new-instance v0, Lo/trackAppLaunch$extraCallback;

    invoke-direct {v0, p0, p1}, Lo/trackAppLaunch$extraCallback;-><init>(Lo/trackAppLaunch;Ljava/lang/Object;)V

    .line 131
    iget-object v1, p0, Lo/trackAppLaunch;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected abstract extraCallback(Lo/setPreinstallAttribution;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setPreinstallAttribution;",
            ")TK;"
        }
    .end annotation
.end method

.method protected final declared-synchronized extraCallback(Ljava/lang/Object;)Lo/trackAppLaunch$extraCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lo/trackAppLaunch<",
            "TK;TT;>.extraCallback;"
        }
    .end annotation

    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v0, p0, Lo/trackAppLaunch;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/trackAppLaunch$extraCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final declared-synchronized extraCallback(Ljava/lang/Object;Lo/trackAppLaunch$extraCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lo/trackAppLaunch<",
            "TK;TT;>.extraCallback;)V"
        }
    .end annotation

    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Lo/trackAppLaunch;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 137
    iget-object p2, p0, Lo/trackAppLaunch;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/waitForCustomerUserId<",
            "TT;>;",
            "Lo/setPreinstallAttribution;",
            ")V"
        }
    .end annotation

    .line 87
    :try_start_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 91
    invoke-interface {p2}, Lo/setPreinstallAttribution;->ICustomTabsCallback()Lo/unregisterConversionListener;

    move-result-object v0

    iget-object v1, p0, Lo/trackAppLaunch;->extraCallback:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lo/unregisterConversionListener;->onMessageChannelReady(Lo/setPreinstallAttribution;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, p2}, Lo/trackAppLaunch;->extraCallback(Lo/setPreinstallAttribution;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    .line 102
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 103
    :try_start_1
    invoke-virtual {p0, v0}, Lo/trackAppLaunch;->extraCallback(Ljava/lang/Object;)Lo/trackAppLaunch$extraCallback;

    move-result-object v2

    if-nez v2, :cond_1

    .line 105
    invoke-direct {p0, v0}, Lo/trackAppLaunch;->onNavigationEvent(Ljava/lang/Object;)Lo/trackAppLaunch$extraCallback;

    move-result-object v2

    const/4 v1, 0x1

    .line 108
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :try_start_2
    invoke-virtual {v2, p1, p2}, Lo/trackAppLaunch$extraCallback;->onNavigationEvent(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_2

    .line 116
    invoke-interface {p2}, Lo/setPreinstallAttribution;->onRelationshipValidationResult()Z

    move-result p1

    invoke-static {p1}, Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;->onPostMessage(Z)Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    move-result-object p1

    .line 1161
    invoke-virtual {v2, p1}, Lo/trackAppLaunch$extraCallback;->onMessageChannelReady(Lo/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 119
    :cond_2
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    :catchall_0
    move-exception p1

    .line 108
    :try_start_3
    monitor-exit p0

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 119
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 120
    throw p1
.end method

.method protected abstract onMessageChannelReady(Ljava/io/Closeable;)Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method
