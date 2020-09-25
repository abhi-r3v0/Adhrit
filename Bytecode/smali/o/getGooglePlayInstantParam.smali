.class public Lo/getGooglePlayInstantParam;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final onPostMessage:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/invalidateSpanInfo;",
            "Lo/getCardBackgroundColor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lo/getGooglePlayInstantParam;

    sput-object v0, Lo/getGooglePlayInstantParam;->onPostMessage:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/getGooglePlayInstantParam;->ICustomTabsCallback:Ljava/util/Map;

    return-void
.end method

.method public static extraCallback()Lo/getGooglePlayInstantParam;
    .locals 1

    .line 39
    new-instance v0, Lo/getGooglePlayInstantParam;

    invoke-direct {v0}, Lo/getGooglePlayInstantParam;-><init>()V

    return-object v0
.end method

.method private declared-synchronized onMessageChannelReady()V
    .locals 3

    monitor-enter p0

    .line 185
    :try_start_0
    sget-object v0, Lo/getGooglePlayInstantParam;->onPostMessage:Ljava/lang/Class;

    const-string v1, "Count = %d"

    iget-object v2, p0, Lo/getGooglePlayInstantParam;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo/setTranslateX;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized extraCallback(Lo/invalidateSpanInfo;Lo/getCardBackgroundColor;)Z
    .locals 6

    monitor-enter p0

    if-eqz p1, :cond_9

    if-eqz p2, :cond_8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 6435
    :try_start_0
    invoke-virtual {p2}, Lo/getCardBackgroundColor;->onNavigationEvent()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_7

    .line 107
    iget-object v2, p0, Lo/getGooglePlayInstantParam;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getCardBackgroundColor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    .line 110
    monitor-exit p0

    return v1

    .line 7138
    :cond_1
    :try_start_1
    iget-object v3, v2, Lo/getCardBackgroundColor;->extraCallback:Lo/getRootAlpha;

    invoke-static {v3}, Lo/getRootAlpha;->onNavigationEvent(Lo/getRootAlpha;)Lo/getRootAlpha;

    move-result-object v3

    .line 8138
    iget-object p2, p2, Lo/getCardBackgroundColor;->extraCallback:Lo/getRootAlpha;

    invoke-static {p2}, Lo/getRootAlpha;->onNavigationEvent(Lo/getRootAlpha;)Lo/getRootAlpha;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_5

    if-eqz p2, :cond_5

    .line 116
    :try_start_2
    invoke-virtual {v3}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v5

    if-eq v4, v5, :cond_2

    goto :goto_1

    .line 119
    :cond_2
    iget-object v1, p0, Lo/getGooglePlayInstantParam;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    :try_start_3
    invoke-static {p2}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    .line 122
    invoke-static {v3}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    if-eqz v2, :cond_3

    .line 9425
    invoke-virtual {v2}, Lo/getCardBackgroundColor;->close()V

    .line 126
    :cond_3
    invoke-direct {p0}, Lo/getGooglePlayInstantParam;->onMessageChannelReady()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 127
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 121
    :try_start_4
    invoke-static {p2}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    .line 122
    invoke-static {v3}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    if-eqz v2, :cond_4

    .line 10425
    invoke-virtual {v2}, Lo/getCardBackgroundColor;->close()V

    .line 123
    :cond_4
    throw p1

    .line 121
    :cond_5
    :goto_1
    invoke-static {p2}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    .line 122
    invoke-static {v3}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    if-eqz v2, :cond_6

    .line 8425
    invoke-virtual {v2}, Lo/getCardBackgroundColor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 117
    :cond_6
    monitor-exit p0

    return v1

    .line 7111
    :cond_7
    :try_start_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 6215
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 5215
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onNavigationEvent(Lo/invalidateSpanInfo;Lo/getCardBackgroundColor;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_0

    .line 1435
    :try_start_0
    invoke-virtual {p2}, Lo/getCardBackgroundColor;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 53
    iget-object v0, p0, Lo/getGooglePlayInstantParam;->ICustomTabsCallback:Ljava/util/Map;

    if-eqz p2, :cond_1

    .line 3095
    invoke-virtual {p2}, Lo/getCardBackgroundColor;->ICustomTabsCallback()Lo/getCardBackgroundColor;

    move-result-object p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 53
    :goto_1
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getCardBackgroundColor;

    if-eqz p1, :cond_2

    .line 3425
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->close()V

    .line 55
    :cond_2
    invoke-direct {p0}, Lo/getGooglePlayInstantParam;->onMessageChannelReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    .line 2111
    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 1215
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onNavigationEvent(Lo/invalidateSpanInfo;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lo/getGooglePlayInstantParam;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getCardBackgroundColor;

    .line 84
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 89
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onNavigationEvent()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->close()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lo/getCardBackgroundColor;->close()V

    throw v0

    :catchall_1
    move-exception p1

    .line 84
    monitor-exit p0

    throw p1

    :cond_1
    const/4 p1, 0x0

    .line 4215
    throw p1
.end method

.method public final declared-synchronized onPostMessage(Lo/invalidateSpanInfo;)Lo/getCardBackgroundColor;
    .locals 8

    monitor-enter p0

    if-eqz p1, :cond_4

    .line 136
    :try_start_0
    iget-object v0, p0, Lo/getGooglePlayInstantParam;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getCardBackgroundColor;

    if-eqz v0, :cond_3

    .line 138
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 11435
    :try_start_1
    invoke-virtual {v0}, Lo/getCardBackgroundColor;->onNavigationEvent()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 143
    iget-object v3, p0, Lo/getGooglePlayInstantParam;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v3, Lo/getGooglePlayInstantParam;->onPostMessage:Ljava/lang/Class;

    const-string v5, "Found closed reference %d for key %s (%d)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 147
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 148
    invoke-interface {p1}, Lo/invalidateSpanInfo;->extraCallback()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x2

    .line 149
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v1

    .line 144
    invoke-static {v3, v5, v6}, Lo/setTranslateX;->ICustomTabsCallback(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v4

    :cond_1
    if-eqz v0, :cond_2

    .line 12095
    :try_start_2
    invoke-virtual {v0}, Lo/getCardBackgroundColor;->ICustomTabsCallback()Lo/getCardBackgroundColor;

    move-result-object v4

    .line 153
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v4

    goto :goto_2

    :goto_1
    :try_start_3
    monitor-exit v0

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 155
    :cond_3
    :goto_2
    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception p1

    goto :goto_3

    .line 11215
    :cond_4
    :try_start_4
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    monitor-exit p0

    throw p1
.end method
