.class public Lo/getSelected;
.super Ljava/lang/Object;

# interfaces
.implements Lo/StatJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/StatJsonAdapter<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final extraCallback:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lo/Supported;",
            ">;"
        }
    .end annotation
.end field

.field private onMessageChannelReady:I

.field private final onNavigationEvent:Ljava/lang/Object;

.field private onPostMessage:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/getSelected;->onNavigationEvent:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lo/getSelected;->onMessageChannelReady:I

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lo/getSelected;->extraCallback:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 3

    iget-object v0, p0, Lo/getSelected;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lo/getSelected;->onMessageChannelReady:I

    if-nez v1, :cond_1

    const/4 v1, -0x1

    iput v1, p0, Lo/getSelected;->onMessageChannelReady:I

    iget-object v1, p0, Lo/getSelected;->extraCallback:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Supported;

    iget-object v2, v2, Lo/Supported;->onMessageChannelReady:Lo/SuggestedAmountJsonAdapter;

    invoke-interface {v2}, Lo/SuggestedAmountJsonAdapter;->ICustomTabsCallback()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lo/getSelected;->extraCallback:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    monitor-exit v0

    return-void

    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ICustomTabsCallback(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lo/getSelected;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lo/getSelected;->onMessageChannelReady:I

    if-nez v1, :cond_1

    iput-object p1, p0, Lo/getSelected;->onPostMessage:Ljava/lang/Object;

    const/4 v1, 0x1

    iput v1, p0, Lo/getSelected;->onMessageChannelReady:I

    iget-object v1, p0, Lo/getSelected;->extraCallback:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Supported;

    iget-object v2, v2, Lo/Supported;->onNavigationEvent:Lo/Supported$$Parcelable;

    invoke-interface {v2, p1}, Lo/Supported$$Parcelable;->onNavigationEvent(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lo/getSelected;->extraCallback:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    monitor-exit v0

    return-void

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ICustomTabsCallback(Lo/Supported$$Parcelable;Lo/SuggestedAmountJsonAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Supported$$Parcelable<",
            "TT;>;",
            "Lo/SuggestedAmountJsonAdapter;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lo/getSelected;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lo/getSelected;->onMessageChannelReady:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object p2, p0, Lo/getSelected;->onPostMessage:Ljava/lang/Object;

    invoke-interface {p1, p2}, Lo/Supported$$Parcelable;->onNavigationEvent(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lo/getSelected;->onMessageChannelReady:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-interface {p2}, Lo/SuggestedAmountJsonAdapter;->ICustomTabsCallback()V

    goto :goto_0

    :cond_1
    iget v1, p0, Lo/getSelected;->onMessageChannelReady:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lo/getSelected;->extraCallback:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lo/Supported;

    invoke-direct {v2, p0, p1, p2}, Lo/Supported;-><init>(Lo/getSelected;Lo/Supported$$Parcelable;Lo/SuggestedAmountJsonAdapter;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onPostMessage()I
    .locals 1

    iget v0, p0, Lo/getSelected;->onMessageChannelReady:I

    return v0
.end method
