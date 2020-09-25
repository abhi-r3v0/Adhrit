.class final Lo/onStop$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onStop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private onPostMessage:Lo/onStop$extraCallback;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final declared-synchronized ICustomTabsCallback(Lo/onStop$extraCallback;)V
    .locals 2

    monitor-enter p0

    .line 252
    :try_start_0
    iget-object v0, p0, Lo/onStop$onNavigationEvent;->onPostMessage:Lo/onStop$extraCallback;

    if-nez v0, :cond_0

    .line 253
    iput-object p1, p0, Lo/onStop$onNavigationEvent;->onPostMessage:Lo/onStop$extraCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    monitor-exit p0

    return-void

    .line 256
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/onStop$onNavigationEvent;->onPostMessage:Lo/onStop$extraCallback;

    .line 257
    :goto_0
    iget-object v1, v0, Lo/onStop$extraCallback;->onNavigationEvent:Lo/onStop$extraCallback;

    if-eqz v1, :cond_1

    .line 258
    iget-object v0, v0, Lo/onStop$extraCallback;->onNavigationEvent:Lo/onStop$extraCallback;

    goto :goto_0

    .line 260
    :cond_1
    iput-object p1, v0, Lo/onStop$extraCallback;->onNavigationEvent:Lo/onStop$extraCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized onMessageChannelReady(I)V
    .locals 4

    monitor-enter p0

    .line 264
    :goto_0
    :try_start_0
    iget-object v0, p0, Lo/onStop$onNavigationEvent;->onPostMessage:Lo/onStop$extraCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/onStop$onNavigationEvent;->onPostMessage:Lo/onStop$extraCallback;

    iget v0, v0, Lo/onStop$extraCallback;->ICustomTabsCallback:I

    if-ne v0, p1, :cond_0

    .line 265
    iget-object v0, p0, Lo/onStop$onNavigationEvent;->onPostMessage:Lo/onStop$extraCallback;

    .line 266
    iget-object v1, p0, Lo/onStop$onNavigationEvent;->onPostMessage:Lo/onStop$extraCallback;

    iget-object v1, v1, Lo/onStop$extraCallback;->onNavigationEvent:Lo/onStop$extraCallback;

    iput-object v1, p0, Lo/onStop$onNavigationEvent;->onPostMessage:Lo/onStop$extraCallback;

    .line 267
    invoke-virtual {v0}, Lo/onStop$extraCallback;->onMessageChannelReady()V

    goto :goto_0

    .line 269
    :cond_0
    iget-object v0, p0, Lo/onStop$onNavigationEvent;->onPostMessage:Lo/onStop$extraCallback;

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lo/onStop$onNavigationEvent;->onPostMessage:Lo/onStop$extraCallback;

    .line 271
    iget-object v1, v0, Lo/onStop$extraCallback;->onNavigationEvent:Lo/onStop$extraCallback;

    :goto_1
    if-eqz v1, :cond_2

    .line 273
    iget-object v2, v1, Lo/onStop$extraCallback;->onNavigationEvent:Lo/onStop$extraCallback;

    .line 274
    iget v3, v1, Lo/onStop$extraCallback;->ICustomTabsCallback:I

    if-ne v3, p1, :cond_1

    .line 275
    iput-object v2, v0, Lo/onStop$extraCallback;->onNavigationEvent:Lo/onStop$extraCallback;

    .line 276
    invoke-virtual {v1}, Lo/onStop$extraCallback;->onMessageChannelReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_1
    move-object v0, v1

    :goto_2
    move-object v1, v2

    goto :goto_1

    .line 283
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized onPostMessage()Lo/onStop$extraCallback;
    .locals 2

    monitor-enter p0

    .line 238
    :try_start_0
    iget-object v0, p0, Lo/onStop$onNavigationEvent;->onPostMessage:Lo/onStop$extraCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 239
    monitor-exit p0

    return-object v0

    .line 241
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/onStop$onNavigationEvent;->onPostMessage:Lo/onStop$extraCallback;

    .line 242
    iget-object v1, p0, Lo/onStop$onNavigationEvent;->onPostMessage:Lo/onStop$extraCallback;

    iget-object v1, v1, Lo/onStop$extraCallback;->onNavigationEvent:Lo/onStop$extraCallback;

    iput-object v1, p0, Lo/onStop$onNavigationEvent;->onPostMessage:Lo/onStop$extraCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized onPostMessage(Lo/onStop$extraCallback;)V
    .locals 1

    monitor-enter p0

    .line 247
    :try_start_0
    iget-object v0, p0, Lo/onStop$onNavigationEvent;->onPostMessage:Lo/onStop$extraCallback;

    iput-object v0, p1, Lo/onStop$extraCallback;->onNavigationEvent:Lo/onStop$extraCallback;

    .line 248
    iput-object p1, p0, Lo/onStop$onNavigationEvent;->onPostMessage:Lo/onStop$extraCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
