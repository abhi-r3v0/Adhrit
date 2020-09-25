.class abstract Lo/injectConnectionFailure;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/colorFlip;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)V
    .locals 1

    .line 32
    invoke-virtual {p0}, Lo/injectConnectionFailure;->onMessageChannelReady()Lo/colorFlip;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/colorFlip;->ICustomTabsCallback(I)V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/assertValidTrackedQuery$onPostMessage;)V
    .locals 1

    .line 117
    invoke-virtual {p0}, Lo/injectConnectionFailure;->onMessageChannelReady()Lo/colorFlip;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/colorFlip;->ICustomTabsCallback(Lo/assertValidTrackedQuery$onPostMessage;)V

    return-void
.end method

.method public final ICustomTabsCallback(Z)V
    .locals 1

    .line 57
    invoke-virtual {p0}, Lo/injectConnectionFailure;->onMessageChannelReady()Lo/colorFlip;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/colorFlip;->ICustomTabsCallback(Z)V

    return-void
.end method

.method public final V_()Lo/serverCacheEstimatedSizeInBytes;
    .locals 1

    .line 107
    invoke-virtual {p0}, Lo/injectConnectionFailure;->onMessageChannelReady()Lo/colorFlip;

    move-result-object v0

    invoke-interface {v0}, Lo/colorFlip;->V_()Lo/serverCacheEstimatedSizeInBytes;

    move-result-object v0

    return-object v0
.end method

.method public final asBinder()V
    .locals 1

    .line 42
    invoke-virtual {p0}, Lo/injectConnectionFailure;->onMessageChannelReady()Lo/colorFlip;

    move-result-object v0

    invoke-interface {v0}, Lo/colorFlip;->asBinder()V

    return-void
.end method

.method public final extraCallback(I)V
    .locals 1

    .line 97
    invoke-virtual {p0}, Lo/injectConnectionFailure;->onMessageChannelReady()Lo/colorFlip;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/colorFlip;->extraCallback(I)V

    return-void
.end method

.method public final extraCallback(Ljava/io/InputStream;)V
    .locals 1

    .line 37
    invoke-virtual {p0}, Lo/injectConnectionFailure;->onMessageChannelReady()Lo/colorFlip;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/colorFlip;->extraCallback(Ljava/io/InputStream;)V

    return-void
.end method

.method public final extraCallback(Ljava/lang/String;)V
    .locals 1

    .line 72
    invoke-virtual {p0}, Lo/injectConnectionFailure;->onMessageChannelReady()Lo/colorFlip;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/colorFlip;->extraCallback(Ljava/lang/String;)V

    return-void
.end method

.method public final extraCallback()Z
    .locals 1

    .line 47
    invoke-virtual {p0}, Lo/injectConnectionFailure;->onMessageChannelReady()Lo/colorFlip;

    move-result-object v0

    invoke-interface {v0}, Lo/colorFlip;->extraCallback()Z

    move-result v0

    return v0
.end method

.method protected abstract onMessageChannelReady()Lo/colorFlip;
.end method

.method public final onMessageChannelReady(I)V
    .locals 1

    .line 92
    invoke-virtual {p0}, Lo/injectConnectionFailure;->onMessageChannelReady()Lo/colorFlip;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/colorFlip;->onMessageChannelReady(I)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/emptyMap;)V
    .locals 1

    .line 62
    invoke-virtual {p0}, Lo/injectConnectionFailure;->onMessageChannelReady()Lo/colorFlip;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/colorFlip;->onMessageChannelReady(Lo/emptyMap;)V

    return-void
.end method

.method public final onNavigationEvent(Z)V
    .locals 1

    .line 77
    invoke-virtual {p0}, Lo/injectConnectionFailure;->onMessageChannelReady()Lo/colorFlip;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/colorFlip;->onNavigationEvent(Z)V

    return-void
.end method

.method public final onPostMessage()V
    .locals 1

    .line 67
    invoke-virtual {p0}, Lo/injectConnectionFailure;->onMessageChannelReady()Lo/colorFlip;

    move-result-object v0

    invoke-interface {v0}, Lo/colorFlip;->onPostMessage()V

    return-void
.end method

.method public final onPostMessage(Lo/loadNestedQuery;)V
    .locals 1

    .line 82
    invoke-virtual {p0}, Lo/injectConnectionFailure;->onMessageChannelReady()Lo/colorFlip;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/colorFlip;->onPostMessage(Lo/loadNestedQuery;)V

    return-void
.end method

.method public final onPostMessage(Lo/pruneTreeRecursive;)V
    .locals 1

    .line 52
    invoke-virtual {p0}, Lo/injectConnectionFailure;->onMessageChannelReady()Lo/colorFlip;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/colorFlip;->onPostMessage(Lo/pruneTreeRecursive;)V

    return-void
.end method

.method public onPostMessage(Lo/rotateRight;)V
    .locals 1

    .line 87
    invoke-virtual {p0}, Lo/injectConnectionFailure;->onMessageChannelReady()Lo/colorFlip;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/colorFlip;->onPostMessage(Lo/rotateRight;)V

    return-void
.end method

.method public final onPostMessage(Lo/saveNode;)V
    .locals 1

    .line 102
    invoke-virtual {p0}, Lo/injectConnectionFailure;->onMessageChannelReady()Lo/colorFlip;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/colorFlip;->onPostMessage(Lo/saveNode;)V

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

    .line 112
    invoke-virtual {p0}, Lo/injectConnectionFailure;->onMessageChannelReady()Lo/colorFlip;

    move-result-object v1

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
