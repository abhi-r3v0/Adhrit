.class public final Lo/animateAppearance$asInterface$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/allow$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/animateAppearance$asInterface;
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
        "com/dreamplug/fabrik/ui/lifestyle/win/landing/WinImageViewHolder$playerEventListener$2$1",
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
.field private synthetic onMessageChannelReady:Lo/animateAppearance$asInterface;


# direct methods
.method constructor <init>(Lo/animateAppearance$asInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 285
    iput-object p1, p0, Lo/animateAppearance$asInterface$2;->onMessageChannelReady:Lo/animateAppearance$asInterface;

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

    if-eq p2, p1, :cond_3

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    goto/16 :goto_0

    .line 289
    :cond_0
    iget-object p1, p0, Lo/animateAppearance$asInterface$2;->onMessageChannelReady:Lo/animateAppearance$asInterface;

    iget-object p1, p1, Lo/animateAppearance$asInterface;->ICustomTabsCallback:Lo/animateAppearance;

    invoke-static {p1}, Lo/animateAppearance;->ICustomTabsCallback(Lo/animateAppearance;)Lo/flagRemovedAndOffsetPosition;

    move-result-object p1

    const-string p2, "imageView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string p2, "$this$gone"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x8

    .line 1017
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 290
    iget-object p1, p0, Lo/animateAppearance$asInterface$2;->onMessageChannelReady:Lo/animateAppearance$asInterface;

    iget-object p1, p1, Lo/animateAppearance$asInterface;->ICustomTabsCallback:Lo/animateAppearance;

    invoke-static {p1}, Lo/animateAppearance;->asInterface(Lo/animateAppearance;)Landroid/widget/FrameLayout;

    move-result-object p1

    const-string/jumbo p2, "videoView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string p2, "$this$visible"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2009
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 291
    iget-object p1, p0, Lo/animateAppearance$asInterface$2;->onMessageChannelReady:Lo/animateAppearance$asInterface;

    iget-object p1, p1, Lo/animateAppearance$asInterface;->ICustomTabsCallback:Lo/animateAppearance;

    .line 2037
    iget-object p1, p1, Lo/didChildRangeChange;->onPostMessage:Lo/clearOldPositions;

    if-nez p1, :cond_1

    const-string v1, "itemData"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 3008
    :cond_1
    iget-object p1, p1, Lo/clearOldPositions;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinItem;

    .line 3029
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinItem;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;

    .line 3058
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    if-eqz p1, :cond_2

    .line 3076
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Asset;

    if-eqz p1, :cond_2

    .line 3098
    iget-boolean p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Asset;->asInterface:Z

    if-nez p1, :cond_2

    .line 292
    iget-object p1, p0, Lo/animateAppearance$asInterface$2;->onMessageChannelReady:Lo/animateAppearance$asInterface;

    iget-object p1, p1, Lo/animateAppearance$asInterface;->ICustomTabsCallback:Lo/animateAppearance;

    invoke-static {p1}, Lo/animateAppearance;->onTransact(Lo/animateAppearance;)Landroid/widget/ImageView;

    move-result-object p1

    const-string v1, "audioToggle"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4009
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 294
    :cond_2
    iget-object p1, p0, Lo/animateAppearance$asInterface$2;->onMessageChannelReady:Lo/animateAppearance$asInterface;

    iget-object p1, p1, Lo/animateAppearance$asInterface;->ICustomTabsCallback:Lo/animateAppearance;

    invoke-static {p1}, Lo/animateAppearance;->asBinder(Lo/animateAppearance;)Lo/onDestroyView;

    move-result-object p1

    invoke-virtual {p1}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    return-void

    .line 297
    :cond_3
    iget-object p1, p0, Lo/animateAppearance$asInterface$2;->onMessageChannelReady:Lo/animateAppearance$asInterface;

    iget-object p1, p1, Lo/animateAppearance$asInterface;->ICustomTabsCallback:Lo/animateAppearance;

    invoke-static {p1}, Lo/animateAppearance;->asBinder(Lo/animateAppearance;)Lo/onDestroyView;

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
