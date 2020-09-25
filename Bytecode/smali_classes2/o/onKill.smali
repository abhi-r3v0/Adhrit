.class abstract Lo/onKill;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/resume;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/buildAncestorWhereClause;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lo/onKill;->onMessageChannelReady()Lo/resume;

    move-result-object v0

    invoke-interface {v0}, Lo/resume;->ICustomTabsCallback()Lo/buildAncestorWhereClause;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsCallback(Lo/emptyMap;)V
    .locals 1

    .line 38
    invoke-virtual {p0}, Lo/onKill;->onMessageChannelReady()Lo/resume;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/resume;->ICustomTabsCallback(Lo/emptyMap;)V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/moveRedRight$onPostMessage;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 54
    invoke-virtual {p0}, Lo/onKill;->onMessageChannelReady()Lo/resume;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo/resume;->ICustomTabsCallback(Lo/moveRedRight$onPostMessage;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method protected abstract onMessageChannelReady()Lo/resume;
.end method

.method public onNavigationEvent(Lo/reverseIterator;Lo/getPredecessorKey;Lo/deleteTrackedQuery;)Lo/colorFlip;
    .locals 1
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

    .line 49
    invoke-virtual {p0}, Lo/onKill;->onMessageChannelReady()Lo/resume;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lo/resume;->onNavigationEvent(Lo/reverseIterator;Lo/getPredecessorKey;Lo/deleteTrackedQuery;)Lo/colorFlip;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(Lo/resume$extraCallback;)Ljava/lang/Runnable;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lo/onKill;->onMessageChannelReady()Lo/resume;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/resume;->onPostMessage(Lo/resume$extraCallback;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(Lo/emptyMap;)V
    .locals 1

    .line 43
    invoke-virtual {p0}, Lo/onKill;->onMessageChannelReady()Lo/resume;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/resume;->onPostMessage(Lo/emptyMap;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1105
    new-instance v0, Lo/buildAppRequest$onPostMessage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/buildAppRequest$onPostMessage;-><init>(Ljava/lang/String;B)V

    .line 69
    invoke-virtual {p0}, Lo/onKill;->onMessageChannelReady()Lo/resume;

    move-result-object v1

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
