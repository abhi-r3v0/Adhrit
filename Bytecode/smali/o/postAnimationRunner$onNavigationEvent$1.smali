.class public final Lo/postAnimationRunner$onNavigationEvent$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/allow$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/postAnimationRunner$onNavigationEvent;
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
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/win/details/WinDetailsImageWithTimerTemplate$playerEventListener$2$1",
        "Lcom/google/android/exoplayer2/Player$EventListener;",
        "onPlayerStateChanged",
        "",
        "playWhenReady",
        "",
        "playbackState",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/postAnimationRunner$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/postAnimationRunner$onNavigationEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 197
    iput-object p1, p0, Lo/postAnimationRunner$onNavigationEvent$1;->extraCallback:Lo/postAnimationRunner$onNavigationEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Z)V
    .locals 0

    return-void
.end method

.method public final extraCallback(Lo/r;)V
    .locals 0

    return-void
.end method

.method public final extraCallback(Z)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(I)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Lo/JuspaySessionToken;Lo/InstrumentDataJsonAdapter;)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Z)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(ZI)V
    .locals 2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    iget-object p1, p0, Lo/postAnimationRunner$onNavigationEvent$1;->extraCallback:Lo/postAnimationRunner$onNavigationEvent;

    iget-object p1, p1, Lo/postAnimationRunner$onNavigationEvent;->onNavigationEvent:Lo/postAnimationRunner;

    invoke-static {p1}, Lo/postAnimationRunner;->onRelationshipValidationResult(Lo/postAnimationRunner;)Lo/setSpeed;

    move-result-object p1

    const-string p2, "cardImage"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string p2, "$this$gone"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x8

    .line 1017
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 202
    iget-object p1, p0, Lo/postAnimationRunner$onNavigationEvent$1;->extraCallback:Lo/postAnimationRunner$onNavigationEvent;

    iget-object p1, p1, Lo/postAnimationRunner$onNavigationEvent;->onNavigationEvent:Lo/postAnimationRunner;

    invoke-static {p1}, Lo/postAnimationRunner;->asInterface(Lo/postAnimationRunner;)Landroid/widget/FrameLayout;

    move-result-object p1

    const-string/jumbo p2, "videoView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string p2, "$this$visible"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2009
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iget-object p1, p0, Lo/postAnimationRunner$onNavigationEvent$1;->extraCallback:Lo/postAnimationRunner$onNavigationEvent;

    iget-object p1, p1, Lo/postAnimationRunner$onNavigationEvent;->onNavigationEvent:Lo/postAnimationRunner;

    invoke-static {p1}, Lo/postAnimationRunner;->onMessageChannelReady(Lo/postAnimationRunner;)Lo/processAdapterUpdatesAndSetAnimationFlags;

    move-result-object p1

    .line 3010
    iget-object p1, p1, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    .line 3027
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;

    .line 3058
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    if-eqz p1, :cond_1

    .line 3076
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Asset;

    if-eqz p1, :cond_1

    .line 3098
    iget-boolean p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Asset;->asInterface:Z

    if-nez p1, :cond_1

    .line 204
    iget-object p1, p0, Lo/postAnimationRunner$onNavigationEvent$1;->extraCallback:Lo/postAnimationRunner$onNavigationEvent;

    iget-object p1, p1, Lo/postAnimationRunner$onNavigationEvent;->onNavigationEvent:Lo/postAnimationRunner;

    invoke-static {p1}, Lo/postAnimationRunner;->ICustomTabsCallback$Stub(Lo/postAnimationRunner;)Landroid/widget/ImageView;

    move-result-object p1

    const-string v1, "audioToggle"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4009
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 206
    :cond_1
    iget-object p1, p0, Lo/postAnimationRunner$onNavigationEvent$1;->extraCallback:Lo/postAnimationRunner$onNavigationEvent;

    iget-object p1, p1, Lo/postAnimationRunner$onNavigationEvent;->onNavigationEvent:Lo/postAnimationRunner;

    invoke-static {p1}, Lo/postAnimationRunner;->newSession(Lo/postAnimationRunner;)Lo/onDestroyView;

    move-result-object p1

    invoke-virtual {p1}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    return-void

    .line 209
    :cond_2
    iget-object p1, p0, Lo/postAnimationRunner$onNavigationEvent$1;->extraCallback:Lo/postAnimationRunner$onNavigationEvent;

    iget-object p1, p1, Lo/postAnimationRunner$onNavigationEvent;->onNavigationEvent:Lo/postAnimationRunner;

    invoke-static {p1}, Lo/postAnimationRunner;->newSession(Lo/postAnimationRunner;)Lo/onDestroyView;

    move-result-object p1

    invoke-static {p1}, Lo/prependViewToAllSpans;->onNavigationEvent(Lo/prependViewToAllSpans;)V

    :goto_0
    return-void
.end method

.method public final onNavigationEvent(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage()V
    .locals 0

    return-void
.end method

.method public final onPostMessage(I)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/t;Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method
