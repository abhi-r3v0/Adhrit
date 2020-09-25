.class public abstract Lo/setAndroidIdData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/waitForCustomerUserId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/waitForCustomerUserId<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private onPostMessage:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lo/setAndroidIdData;->onPostMessage:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized ICustomTabsCallback()V
    .locals 3

    monitor-enter p0

    .line 108
    :try_start_0
    iget-boolean v0, p0, Lo/setAndroidIdData;->onPostMessage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 109
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 111
    :try_start_1
    iput-boolean v0, p0, Lo/setAndroidIdData;->onPostMessage:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :try_start_2
    invoke-virtual {p0}, Lo/setAndroidIdData;->onNavigationEvent()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 3150
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "unhandled exception"

    invoke-static {v1, v2, v0}, Lo/setTranslateX;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized extraCallback(F)V
    .locals 2

    monitor-enter p0

    .line 126
    :try_start_0
    iget-boolean v0, p0, Lo/setAndroidIdData;->onPostMessage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 127
    monitor-exit p0

    return-void

    .line 130
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lo/setAndroidIdData;->onMessageChannelReady(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 4150
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "unhandled exception"

    invoke-static {v0, v1, p1}, Lo/setTranslateX;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onMessageChannelReady(F)V
    .locals 0

    return-void
.end method

.method protected abstract onMessageChannelReady(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method protected abstract onMessageChannelReady(Ljava/lang/Throwable;)V
.end method

.method protected abstract onNavigationEvent()V
.end method

.method public final declared-synchronized onNavigationEvent(Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    monitor-enter p0

    .line 82
    :try_start_0
    iget-boolean v0, p0, Lo/setAndroidIdData;->onPostMessage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 83
    monitor-exit p0

    return-void

    :cond_0
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 85
    :goto_0
    :try_start_1
    iput-boolean v1, p0, Lo/setAndroidIdData;->onPostMessage:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lo/setAndroidIdData;->onMessageChannelReady(Ljava/lang/Object;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 1150
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string/jumbo v0, "unhandled exception"

    invoke-static {p2, v0, p1}, Lo/setTranslateX;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onPostMessage(Ljava/lang/Throwable;)V
    .locals 2

    monitor-enter p0

    .line 95
    :try_start_0
    iget-boolean v0, p0, Lo/setAndroidIdData;->onPostMessage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 96
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 98
    :try_start_1
    iput-boolean v0, p0, Lo/setAndroidIdData;->onPostMessage:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :try_start_2
    invoke-virtual {p0, p1}, Lo/setAndroidIdData;->onMessageChannelReady(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 2150
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "unhandled exception"

    invoke-static {v0, v1, p1}, Lo/setTranslateX;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
