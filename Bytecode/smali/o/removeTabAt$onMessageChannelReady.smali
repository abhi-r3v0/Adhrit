.class final Lo/removeTabAt$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/removeTabAt;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/removeAllTabs$onPostMessage;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/cred/pay/ui/instrumentlisting/recommendations/InstrumentRecommendationsViewModel$RecommendationsState;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/removeTabAt;


# direct methods
.method constructor <init>(Lo/removeTabAt;)V
    .locals 0

    iput-object p1, p0, Lo/removeTabAt$onMessageChannelReady;->onMessageChannelReady:Lo/removeTabAt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 9

    .line 42
    check-cast p1, Lo/removeAllTabs$onPostMessage;

    .line 1105
    sget-object v0, Lo/removeAllTabs$onPostMessage$extraCallback;->extraCallback:Lo/removeAllTabs$onPostMessage$extraCallback;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1106
    iget-object p1, p0, Lo/removeTabAt$onMessageChannelReady;->onMessageChannelReady:Lo/removeTabAt;

    invoke-virtual {p1, v1}, Lo/removeTabAt;->onNavigationEvent(Z)V

    return-void

    .line 1108
    :cond_0
    instance-of v0, p1, Lo/removeAllTabs$onPostMessage$onNavigationEvent;

    const-string/jumbo v2, "setupUpi"

    const-string v3, "$this$visible"

    const-string v4, "recommendationsContainer"

    const-string v5, "progressLottie"

    const/16 v6, 0x8

    const-string v7, "$this$gone"

    if-eqz v0, :cond_2

    .line 1109
    iget-object v0, p0, Lo/removeTabAt$onMessageChannelReady;->onMessageChannelReady:Lo/removeTabAt;

    sget v8, Lo/onItemHoverEnter$onNavigationEvent;->recommendationsContainer:I

    invoke-virtual {v0, v8}, Lo/removeTabAt;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2009
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1110
    iget-object v0, p0, Lo/removeTabAt$onMessageChannelReady;->onMessageChannelReady:Lo/removeTabAt;

    sget v1, Lo/onItemHoverEnter$onNavigationEvent;->setupUpi:I

    invoke-virtual {v0, v1}, Lo/removeTabAt;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2017
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1111
    iget-object v0, p0, Lo/removeTabAt$onMessageChannelReady;->onMessageChannelReady:Lo/removeTabAt;

    sget v1, Lo/onItemHoverEnter$onNavigationEvent;->progressLottie:I

    invoke-virtual {v0, v1}, Lo/removeTabAt;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v0, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3017
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1112
    iget-object v0, p0, Lo/removeTabAt$onMessageChannelReady;->onMessageChannelReady:Lo/removeTabAt;

    invoke-static {v0}, Lo/removeTabAt;->onNavigationEvent(Lo/removeTabAt;)Lo/getTintListFromCache;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast p1, Lo/removeAllTabs$onPostMessage$onNavigationEvent;

    .line 3156
    iget-object p1, p1, Lo/removeAllTabs$onPostMessage$onNavigationEvent;->onNavigationEvent:Ljava/util/List;

    const-string/jumbo v1, "value"

    .line 1112
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5000
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 4038
    invoke-virtual {v0, p1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    :cond_1
    return-void

    .line 1114
    :cond_2
    sget-object v0, Lo/removeAllTabs$onPostMessage$onMessageChannelReady;->extraCallback:Lo/removeAllTabs$onPostMessage$onMessageChannelReady;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1115
    iget-object p1, p0, Lo/removeTabAt$onMessageChannelReady;->onMessageChannelReady:Lo/removeTabAt;

    invoke-static {p1}, Lo/removeTabAt;->onPostMessage(Lo/removeTabAt;)V

    .line 1116
    iget-object p1, p0, Lo/removeTabAt$onMessageChannelReady;->onMessageChannelReady:Lo/removeTabAt;

    sget v0, Lo/onItemHoverEnter$onNavigationEvent;->progressLottie:I

    invoke-virtual {p1, v0}, Lo/removeTabAt;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p1, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5017
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1118
    :cond_3
    sget-object v0, Lo/removeAllTabs$onPostMessage$onPostMessage;->onNavigationEvent:Lo/removeAllTabs$onPostMessage$onPostMessage;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1124
    iget-object p1, p0, Lo/removeTabAt$onMessageChannelReady;->onMessageChannelReady:Lo/removeTabAt;

    sget v0, Lo/onItemHoverEnter$onNavigationEvent;->recommendationsContainer:I

    invoke-virtual {p1, v0}, Lo/removeTabAt;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    invoke-static {p1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8017
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1125
    iget-object p1, p0, Lo/removeTabAt$onMessageChannelReady;->onMessageChannelReady:Lo/removeTabAt;

    sget v0, Lo/onItemHoverEnter$onNavigationEvent;->setupUpi:I

    invoke-virtual {p1, v0}, Lo/removeTabAt;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9017
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1126
    iget-object p1, p0, Lo/removeTabAt$onMessageChannelReady;->onMessageChannelReady:Lo/removeTabAt;

    sget v0, Lo/onItemHoverEnter$onNavigationEvent;->progressLottie:I

    invoke-virtual {p1, v0}, Lo/removeTabAt;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p1, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10009
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
