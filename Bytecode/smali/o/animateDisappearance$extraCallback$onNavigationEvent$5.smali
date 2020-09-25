.class public final Lo/animateDisappearance$extraCallback$onNavigationEvent$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/allow$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/animateDisappearance$extraCallback$onNavigationEvent;
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
        "com/dreamplug/fabrik/ui/lifestyle/win/landing/WinGridViewHolder$InnerCardHolder$playerEventListener$2$1",
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
.field private synthetic extraCallback:Lo/animateDisappearance$extraCallback$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/animateDisappearance$extraCallback$onNavigationEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 311
    iput-object p1, p0, Lo/animateDisappearance$extraCallback$onNavigationEvent$5;->extraCallback:Lo/animateDisappearance$extraCallback$onNavigationEvent;

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
    .locals 0

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 315
    :cond_0
    iget-object p1, p0, Lo/animateDisappearance$extraCallback$onNavigationEvent$5;->extraCallback:Lo/animateDisappearance$extraCallback$onNavigationEvent;

    iget-object p1, p1, Lo/animateDisappearance$extraCallback$onNavigationEvent;->onMessageChannelReady:Lo/animateDisappearance$extraCallback;

    .line 1112
    iget-object p1, p1, Lo/animateDisappearance$extraCallback;->onNavigationEvent:Lo/flagRemovedAndOffsetPosition;

    const-string p2, "image"

    .line 315
    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string p2, "$this$gone"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x8

    .line 2017
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 316
    iget-object p1, p0, Lo/animateDisappearance$extraCallback$onNavigationEvent$5;->extraCallback:Lo/animateDisappearance$extraCallback$onNavigationEvent;

    iget-object p1, p1, Lo/animateDisappearance$extraCallback$onNavigationEvent;->onMessageChannelReady:Lo/animateDisappearance$extraCallback;

    .line 2112
    iget-object p1, p1, Lo/animateDisappearance$extraCallback;->onTransact:Landroid/widget/FrameLayout;

    const-string/jumbo p2, "videoView"

    .line 316
    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string p2, "$this$visible"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 3009
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

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
