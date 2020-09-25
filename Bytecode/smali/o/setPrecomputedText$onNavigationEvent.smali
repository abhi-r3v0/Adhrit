.class final Lo/setPrecomputedText$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setPrecomputedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/setPrecomputedText;

.field private final onMessageChannelReady:Lo/setOrientation;


# direct methods
.method constructor <init>(Lo/setPrecomputedText;Lo/setOrientation;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lo/setPrecomputedText$onNavigationEvent;->extraCallback:Lo/setPrecomputedText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iput-object p2, p0, Lo/setPrecomputedText$onNavigationEvent;->onMessageChannelReady:Lo/setOrientation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 395
    iget-object v0, p0, Lo/setPrecomputedText$onNavigationEvent;->onMessageChannelReady:Lo/setOrientation;

    invoke-interface {v0}, Lo/setOrientation;->ICustomTabsCallback$Stub()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 396
    :try_start_0
    iget-object v1, p0, Lo/setPrecomputedText$onNavigationEvent;->extraCallback:Lo/setPrecomputedText;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 397
    :try_start_1
    iget-object v2, p0, Lo/setPrecomputedText$onNavigationEvent;->extraCallback:Lo/setPrecomputedText;

    iget-object v2, v2, Lo/setPrecomputedText;->onNavigationEvent:Lo/setPrecomputedText$onPostMessage;

    iget-object v3, p0, Lo/setPrecomputedText$onNavigationEvent;->onMessageChannelReady:Lo/setOrientation;

    .line 1454
    iget-object v2, v2, Lo/setPrecomputedText$onPostMessage;->extraCallback:Ljava/util/List;

    .line 1474
    new-instance v4, Lo/setPrecomputedText$onMessageChannelReady;

    invoke-static {}, Lo/setAnchorView;->ICustomTabsCallback()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lo/setPrecomputedText$onMessageChannelReady;-><init>(Lo/setOrientation;Ljava/util/concurrent/Executor;)V

    .line 1454
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 398
    iget-object v2, p0, Lo/setPrecomputedText$onNavigationEvent;->extraCallback:Lo/setPrecomputedText;

    iget-object v3, p0, Lo/setPrecomputedText$onNavigationEvent;->onMessageChannelReady:Lo/setOrientation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2172
    :try_start_2
    iget-object v2, v2, Lo/setPrecomputedText;->onMessageChannelReady:Lcom/bumptech/glide/load/engine/GlideException;

    invoke-interface {v3, v2}, Lo/setOrientation;->onPostMessage(Lcom/bumptech/glide/load/engine/GlideException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 2174
    :try_start_3
    new-instance v3, Lo/getInternalPopup;

    invoke-direct {v3, v2}, Lo/getInternalPopup;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 401
    :cond_0
    :goto_0
    iget-object v2, p0, Lo/setPrecomputedText$onNavigationEvent;->extraCallback:Lo/setPrecomputedText;

    invoke-virtual {v2}, Lo/setPrecomputedText;->onPostMessage()V

    .line 402
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 403
    :try_start_4
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v2

    .line 402
    monitor-exit v1

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v1

    .line 403
    monitor-exit v0

    throw v1
.end method
