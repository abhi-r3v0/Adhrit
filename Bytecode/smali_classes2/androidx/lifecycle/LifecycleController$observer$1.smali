.class public final Landroidx/lifecycle/LifecycleController$observer$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaControllerCompatApi23;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getAudioAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "source",
        "Landroidx/lifecycle/LifecycleOwner;",
        "<anonymous parameter 1>",
        "Landroidx/lifecycle/Lifecycle$Event;",
        "onStateChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/assertValidTrackedQuery;

.field final synthetic onMessageChannelReady:Lo/getAudioAttributes;


# virtual methods
.method public final extraCallback(Lo/toLegacyStreamType;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V
    .locals 3

    const-string v0, "source"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-interface {p1}, Lo/toLegacyStreamType;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p2

    const-string v0, "source.lifecycle"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object p2

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    const/4 v2, 0x1

    if-ne p2, v1, :cond_0

    .line 36
    iget-object p1, p0, Landroidx/lifecycle/LifecycleController$observer$1;->onMessageChannelReady:Lo/getAudioAttributes;

    iget-object p2, p0, Landroidx/lifecycle/LifecycleController$observer$1;->ICustomTabsCallback:Lo/assertValidTrackedQuery;

    const/4 v0, 0x0

    .line 1192
    invoke-interface {p2, v0}, Lo/assertValidTrackedQuery;->onNavigationEvent(Ljava/util/concurrent/CancellationException;)V

    .line 2067
    iget-object p2, p1, Lo/getAudioAttributes;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    iget-object v0, p1, Lo/getAudioAttributes;->onMessageChannelReady:Lo/MediaControllerCompatApi23;

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p2, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 2068
    iget-object p1, p1, Lo/getAudioAttributes;->extraCallback:Lo/extraCallback$onRelationshipValidationResult;

    .line 3060
    iput-boolean v2, p1, Lo/extraCallback$onRelationshipValidationResult;->onPostMessage:Z

    .line 3061
    invoke-virtual {p1}, Lo/extraCallback$onRelationshipValidationResult;->onPostMessage()V

    return-void

    .line 37
    :cond_0
    invoke-interface {p1}, Lo/toLegacyStreamType;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object p1

    iget-object p2, p0, Landroidx/lifecycle/LifecycleController$observer$1;->onMessageChannelReady:Lo/getAudioAttributes;

    .line 4026
    iget-object p2, p2, Lo/getAudioAttributes;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 37
    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-gez p1, :cond_1

    .line 38
    iget-object p1, p0, Landroidx/lifecycle/LifecycleController$observer$1;->onMessageChannelReady:Lo/getAudioAttributes;

    .line 5026
    iget-object p1, p1, Lo/getAudioAttributes;->extraCallback:Lo/extraCallback$onRelationshipValidationResult;

    .line 5043
    iput-boolean v2, p1, Lo/extraCallback$onRelationshipValidationResult;->ICustomTabsCallback:Z

    return-void

    .line 40
    :cond_1
    iget-object p1, p0, Landroidx/lifecycle/LifecycleController$observer$1;->onMessageChannelReady:Lo/getAudioAttributes;

    .line 6026
    iget-object p1, p1, Lo/getAudioAttributes;->extraCallback:Lo/extraCallback$onRelationshipValidationResult;

    .line 6048
    iget-boolean p2, p1, Lo/extraCallback$onRelationshipValidationResult;->ICustomTabsCallback:Z

    if-eqz p2, :cond_3

    .line 6051
    iget-boolean p2, p1, Lo/extraCallback$onRelationshipValidationResult;->onPostMessage:Z

    xor-int/2addr p2, v2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 6054
    iput-boolean p2, p1, Lo/extraCallback$onRelationshipValidationResult;->ICustomTabsCallback:Z

    .line 6055
    invoke-virtual {p1}, Lo/extraCallback$onRelationshipValidationResult;->onPostMessage()V

    goto :goto_0

    .line 6051
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot resume a finished dispatcher"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_3
    :goto_0
    return-void
.end method
