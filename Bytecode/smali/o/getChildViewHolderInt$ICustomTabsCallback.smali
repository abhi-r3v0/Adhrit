.class final Lo/getChildViewHolderInt$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getChildViewHolderInt;
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
        "Lo/throwIfInMutationOperation<",
        "+",
        "Lo/findContainingItemView$ICustomTabsCallback;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/utils/Event;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/machine/WinMachineViewModel$Events;",
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
.field final synthetic onPostMessage:Lo/getChildViewHolderInt;


# direct methods
.method constructor <init>(Lo/getChildViewHolderInt;)V
    .locals 0

    iput-object p1, p0, Lo/getChildViewHolderInt$ICustomTabsCallback;->onPostMessage:Lo/getChildViewHolderInt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 4

    .line 54
    check-cast p1, Lo/throwIfInMutationOperation;

    .line 2011
    iget-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2015
    iput-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 2016
    iget-object p1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1215
    :goto_0
    check-cast p1, Lo/findContainingItemView$ICustomTabsCallback;

    if-eqz p1, :cond_5

    .line 1217
    instance-of v0, p1, Lo/findContainingItemView$ICustomTabsCallback$extraCallback;

    const-string v2, "machineView"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 1218
    iget-object p1, p0, Lo/getChildViewHolderInt$ICustomTabsCallback;->onPostMessage:Lo/getChildViewHolderInt;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->machineView:I

    invoke-virtual {p1, v0}, Lo/getChildViewHolderInt;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setMinimumHeight;

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string v0, "$this$visible"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3009
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1219
    iget-object p1, p0, Lo/getChildViewHolderInt$ICustomTabsCallback;->onPostMessage:Lo/getChildViewHolderInt;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->machineView:I

    invoke-virtual {p1, v0}, Lo/getChildViewHolderInt;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setMinimumHeight;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void

    .line 1221
    :cond_1
    instance-of v0, p1, Lo/findContainingItemView$ICustomTabsCallback$ICustomTabsCallback;

    if-eqz v0, :cond_2

    .line 1222
    iget-object p1, p0, Lo/getChildViewHolderInt$ICustomTabsCallback;->onPostMessage:Lo/getChildViewHolderInt;

    invoke-static {p1}, Lo/getChildViewHolderInt;->onMessageChannelReady(Lo/getChildViewHolderInt;)Lo/getMoveDuration;

    move-result-object p1

    const/4 v0, 0x7

    invoke-static {p1, v1, v3, v3, v0}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    return-void

    .line 1224
    :cond_2
    instance-of v0, p1, Lo/findContainingItemView$ICustomTabsCallback$onPostMessage;

    if-eqz v0, :cond_3

    .line 1225
    iget-object p1, p0, Lo/getChildViewHolderInt$ICustomTabsCallback;->onPostMessage:Lo/getChildViewHolderInt;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->machineView:I

    invoke-virtual {p1, v0}, Lo/getChildViewHolderInt;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setMinimumHeight;

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string v0, "$this$gone"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 3017
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1226
    iget-object p1, p0, Lo/getChildViewHolderInt$ICustomTabsCallback;->onPostMessage:Lo/getChildViewHolderInt;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->machineView:I

    invoke-virtual {p1, v0}, Lo/getChildViewHolderInt;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setMinimumHeight;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    return-void

    .line 1228
    :cond_3
    instance-of p1, p1, Lo/findContainingItemView$ICustomTabsCallback$onMessageChannelReady;

    if-eqz p1, :cond_4

    .line 1229
    iget-object p1, p0, Lo/getChildViewHolderInt$ICustomTabsCallback;->onPostMessage:Lo/getChildViewHolderInt;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->mainContent:I

    invoke-virtual {p1, v0}, Lo/getChildViewHolderInt;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    const-string v0, "mainContent"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lo/getChildViewHolderInt$ICustomTabsCallback;->onPostMessage:Lo/getChildViewHolderInt;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x12c

    new-instance v3, Lo/getChildViewHolderInt$ICustomTabsCallback$onNavigationEvent;

    invoke-direct {v3, p0}, Lo/getChildViewHolderInt$ICustomTabsCallback$onNavigationEvent;-><init>(Lo/getChildViewHolderInt$ICustomTabsCallback;)V

    check-cast v3, Lo/getServerTime;

    invoke-static {p1, v0, v1, v2, v3}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    return-void

    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_5
    return-void
.end method
