.class final Lo/UnityVersionProvider$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UnityVersionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "extraCallback"
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/UnityVersionProvider;


# direct methods
.method private constructor <init>(Lo/UnityVersionProvider;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lo/UnityVersionProvider$extraCallback;->onPostMessage:Lo/UnityVersionProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/UnityVersionProvider;B)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lo/UnityVersionProvider$extraCallback;-><init>(Lo/UnityVersionProvider;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 79
    iget-object v2, p0, Lo/UnityVersionProvider$extraCallback;->onPostMessage:Lo/UnityVersionProvider;

    invoke-static {v2}, Lo/UnityVersionProvider;->onNavigationEvent(Lo/UnityVersionProvider;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    .line 80
    :try_start_0
    iget-object v3, p0, Lo/UnityVersionProvider$extraCallback;->onPostMessage:Lo/UnityVersionProvider;

    invoke-static {v3}, Lo/UnityVersionProvider;->onNavigationEvent(Lo/UnityVersionProvider;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 81
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 82
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 83
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/UnityVersionProvider$onMessageChannelReady;

    .line 84
    iget-wide v5, v4, Lo/UnityVersionProvider$onMessageChannelReady;->ICustomTabsCallback:J

    sub-long v5, v0, v5

    const-wide/16 v7, 0x3e8

    cmp-long v9, v5, v7

    if-lez v9, :cond_0

    .line 85
    iget-object v5, p0, Lo/UnityVersionProvider$extraCallback;->onPostMessage:Lo/UnityVersionProvider;

    invoke-static {v5}, Lo/UnityVersionProvider;->extraCallback(Lo/UnityVersionProvider;)Lo/Settings;

    move-result-object v5

    iget-object v6, v4, Lo/UnityVersionProvider$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    iget-object v4, v4, Lo/UnityVersionProvider$onMessageChannelReady;->onPostMessage:Lorg/json/JSONObject;

    invoke-virtual {v5, v6, v4}, Lo/Settings;->extraCallback(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 86
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lo/UnityVersionProvider$extraCallback;->onPostMessage:Lo/UnityVersionProvider;

    invoke-static {v0}, Lo/UnityVersionProvider;->onNavigationEvent(Lo/UnityVersionProvider;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 92
    iget-object v0, p0, Lo/UnityVersionProvider$extraCallback;->onPostMessage:Lo/UnityVersionProvider;

    invoke-static {v0}, Lo/UnityVersionProvider;->ICustomTabsCallback(Lo/UnityVersionProvider;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
