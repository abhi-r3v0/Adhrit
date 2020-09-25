.class final Lo/getHostName$ICustomTabsCallback;
.super Lo/setAdditionalData;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getHostName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setAdditionalData<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/getHostName;


# direct methods
.method private constructor <init>(Lo/getHostName;Lo/waitForCustomerUserId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/waitForCustomerUserId<",
            "TT;>;)V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lo/getHostName$ICustomTabsCallback;->extraCallback:Lo/getHostName;

    .line 74
    invoke-direct {p0, p2}, Lo/setAdditionalData;-><init>(Lo/waitForCustomerUserId;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/getHostName;Lo/waitForCustomerUserId;B)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lo/getHostName$ICustomTabsCallback;-><init>(Lo/getHostName;Lo/waitForCustomerUserId;)V

    return-void
.end method

.method private extraCallback()V
    .locals 4

    .line 99
    iget-object v0, p0, Lo/getHostName$ICustomTabsCallback;->extraCallback:Lo/getHostName;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Lo/getHostName$ICustomTabsCallback;->extraCallback:Lo/getHostName;

    .line 4020
    iget-object v1, v1, Lo/getHostName;->onNavigationEvent:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 100
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-nez v1, :cond_0

    .line 102
    iget-object v2, p0, Lo/getHostName$ICustomTabsCallback;->extraCallback:Lo/getHostName;

    .line 5020
    iget v3, v2, Lo/getHostName;->ICustomTabsCallback:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lo/getHostName;->ICustomTabsCallback:I

    .line 104
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 107
    iget-object v0, p0, Lo/getHostName$ICustomTabsCallback;->extraCallback:Lo/getHostName;

    .line 6020
    iget-object v0, v0, Lo/getHostName;->onPostMessage:Ljava/util/concurrent/Executor;

    .line 107
    new-instance v2, Lo/getHostName$ICustomTabsCallback$3;

    invoke-direct {v2, p0, v1}, Lo/getHostName$ICustomTabsCallback$3;-><init>(Lo/getHostName$ICustomTabsCallback;Landroid/util/Pair;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 104
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected final onMessageChannelReady(Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1020
    iget-object v0, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 79
    invoke-interface {v0, p1, p2}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V

    const/4 p1, 0x1

    and-int/2addr p2, p1

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 81
    invoke-direct {p0}, Lo/getHostName$ICustomTabsCallback;->extraCallback()V

    :cond_1
    return-void
.end method

.method protected final onMessageChannelReady(Ljava/lang/Throwable;)V
    .locals 1

    .line 2020
    iget-object v0, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 87
    invoke-interface {v0, p1}, Lo/waitForCustomerUserId;->onPostMessage(Ljava/lang/Throwable;)V

    .line 88
    invoke-direct {p0}, Lo/getHostName$ICustomTabsCallback;->extraCallback()V

    return-void
.end method

.method protected final onNavigationEvent()V
    .locals 1

    .line 3020
    iget-object v0, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 93
    invoke-interface {v0}, Lo/waitForCustomerUserId;->ICustomTabsCallback()V

    .line 94
    invoke-direct {p0}, Lo/getHostName$ICustomTabsCallback;->extraCallback()V

    return-void
.end method
