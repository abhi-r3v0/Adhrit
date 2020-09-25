.class abstract Lo/onCacheHost;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/rotateRight;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/getPredecessorKey;)V
    .locals 1

    .line 29
    invoke-virtual {p0}, Lo/onCacheHost;->onPostMessage()Lo/rotateRight;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/rotateRight;->ICustomTabsCallback(Lo/getPredecessorKey;)V

    return-void
.end method

.method public final extraCallback()V
    .locals 1

    .line 49
    invoke-virtual {p0}, Lo/onCacheHost;->onPostMessage()Lo/rotateRight;

    move-result-object v0

    invoke-interface {v0}, Lo/rotateRight;->extraCallback()V

    return-void
.end method

.method public extraCallback(Lo/emptyMap;Lo/getPredecessorKey;)V
    .locals 1

    .line 34
    invoke-virtual {p0}, Lo/onCacheHost;->onPostMessage()Lo/rotateRight;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo/rotateRight;->extraCallback(Lo/emptyMap;Lo/getPredecessorKey;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/sendAuthHelper$onMessageChannelReady;)V
    .locals 1

    .line 44
    invoke-virtual {p0}, Lo/onCacheHost;->onPostMessage()Lo/rotateRight;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/rotateRight;->onMessageChannelReady(Lo/sendAuthHelper$onMessageChannelReady;)V

    return-void
.end method

.method public onNavigationEvent(Lo/emptyMap;Lo/rotateRight$extraCallback;Lo/getPredecessorKey;)V
    .locals 1

    .line 39
    invoke-virtual {p0}, Lo/onCacheHost;->onPostMessage()Lo/rotateRight;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lo/rotateRight;->onNavigationEvent(Lo/emptyMap;Lo/rotateRight$extraCallback;Lo/getPredecessorKey;)V

    return-void
.end method

.method protected abstract onPostMessage()Lo/rotateRight;
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

    .line 54
    invoke-virtual {p0}, Lo/onCacheHost;->onPostMessage()Lo/rotateRight;

    move-result-object v1

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
