.class final Lo/removeMin$extraCallback;
.super Lo/onKill;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/removeMin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/resume;

.field private synthetic onMessageChannelReady:Lo/removeMin;


# direct methods
.method constructor <init>(Lo/removeMin;Lo/resume;Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lo/removeMin$extraCallback;->onMessageChannelReady:Lo/removeMin;

    invoke-direct {p0}, Lo/onKill;-><init>()V

    if-eqz p2, :cond_1

    .line 67
    check-cast p2, Lo/resume;

    iput-object p2, p0, Lo/removeMin$extraCallback;->ICustomTabsCallback:Lo/resume;

    if-eqz p3, :cond_0

    return-void

    .line 2910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "authority"

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
.method protected final onMessageChannelReady()Lo/resume;
    .locals 1

    .line 73
    iget-object v0, p0, Lo/removeMin$extraCallback;->ICustomTabsCallback:Lo/resume;

    return-object v0
.end method

.method public final onNavigationEvent(Lo/reverseIterator;Lo/getPredecessorKey;Lo/deleteTrackedQuery;)Lo/colorFlip;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/reverseIterator<",
            "**>;",
            "Lo/getPredecessorKey;",
            "Lo/deleteTrackedQuery;",
            ")",
            "Lo/colorFlip;"
        }
    .end annotation

    .line 3201
    iget-object v0, p3, Lo/deleteTrackedQuery;->onMessageChannelReady:Lo/loadTrackedQueries;

    if-eqz v0, :cond_2

    .line 82
    new-instance v1, Lo/onConnect;

    iget-object v2, p0, Lo/removeMin$extraCallback;->ICustomTabsCallback:Lo/resume;

    invoke-direct {v1, v2, p1, p2, p3}, Lo/onConnect;-><init>(Lo/moveRedRight;Lo/reverseIterator;Lo/getPredecessorKey;Lo/deleteTrackedQuery;)V

    .line 84
    new-instance p1, Lo/removeMin$extraCallback$4;

    invoke-direct {p1}, Lo/removeMin$extraCallback$4;-><init>()V

    .line 3361
    :try_start_0
    iget-object p2, p3, Lo/deleteTrackedQuery;->extraCallback:Ljava/util/concurrent/Executor;

    .line 109
    iget-object p3, p0, Lo/removeMin$extraCallback;->onMessageChannelReady:Lo/removeMin;

    .line 4035
    iget-object p3, p3, Lo/removeMin;->extraCallback:Ljava/util/concurrent/Executor;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    move-object p2, p3

    .line 109
    :goto_0
    check-cast p2, Ljava/util/concurrent/Executor;

    .line 108
    invoke-virtual {v0, p1, p2, v1}, Lo/loadTrackedQueries;->applyRequestMetadata(Lo/loadTrackedQueries$onMessageChannelReady;Ljava/util/concurrent/Executor;Lo/loadTrackedQueries$ICustomTabsCallback;)V

    goto :goto_1

    .line 4061
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Both parameters are null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 111
    sget-object p2, Lo/emptyMap;->ICustomTabsCallback$Stub:Lo/emptyMap;

    const-string p3, "Credentials should use fail() instead of throwing exceptions"

    .line 112
    invoke-virtual {p2, p3}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object p2

    .line 113
    invoke-virtual {p2, p1}, Lo/emptyMap;->onPostMessage(Ljava/lang/Throwable;)Lo/emptyMap;

    move-result-object p1

    .line 111
    invoke-virtual {v1, p1}, Lo/loadTrackedQueries$ICustomTabsCallback;->onPostMessage(Lo/emptyMap;)V

    .line 115
    :goto_1
    invoke-virtual {v1}, Lo/onConnect;->onPostMessage()Lo/colorFlip;

    move-result-object p1

    return-object p1

    .line 117
    :cond_2
    iget-object v0, p0, Lo/removeMin$extraCallback;->ICustomTabsCallback:Lo/resume;

    invoke-interface {v0, p1, p2, p3}, Lo/resume;->onNavigationEvent(Lo/reverseIterator;Lo/getPredecessorKey;Lo/deleteTrackedQuery;)Lo/colorFlip;

    move-result-object p1

    return-object p1
.end method
