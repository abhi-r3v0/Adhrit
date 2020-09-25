.class final Lo/removeMin;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/fixUp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/removeMin$extraCallback;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/fixUp;

.field final extraCallback:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Lo/fixUp;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 41
    check-cast p1, Lo/fixUp;

    iput-object p1, p0, Lo/removeMin;->ICustomTabsCallback:Lo/fixUp;

    if-eqz p2, :cond_0

    .line 42
    check-cast p2, Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lo/removeMin;->extraCallback:Ljava/util/concurrent/Executor;

    return-void

    .line 2910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "appExecutor"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1910
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "delegate"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 59
    iget-object v0, p0, Lo/removeMin;->ICustomTabsCallback:Lo/fixUp;

    invoke-interface {v0}, Lo/fixUp;->close()V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/net/SocketAddress;Lo/fixUp$ICustomTabsCallback;Lo/saveTrackedQueryKeys;)Lo/resume;
    .locals 2

    .line 48
    new-instance v0, Lo/removeMin$extraCallback;

    iget-object v1, p0, Lo/removeMin;->ICustomTabsCallback:Lo/fixUp;

    .line 49
    invoke-interface {v1, p1, p2, p3}, Lo/fixUp;->onMessageChannelReady(Ljava/net/SocketAddress;Lo/fixUp$ICustomTabsCallback;Lo/saveTrackedQueryKeys;)Lo/resume;

    move-result-object p1

    .line 3088
    iget-object p2, p2, Lo/fixUp$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    .line 49
    invoke-direct {v0, p0, p1, p2}, Lo/removeMin$extraCallback;-><init>(Lo/removeMin;Lo/resume;Ljava/lang/String;)V

    return-object v0
.end method

.method public final onPostMessage()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 54
    iget-object v0, p0, Lo/removeMin;->ICustomTabsCallback:Lo/fixUp;

    invoke-interface {v0}, Lo/fixUp;->onPostMessage()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method
