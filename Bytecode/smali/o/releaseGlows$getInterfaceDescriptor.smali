.class public final Lo/releaseGlows$getInterfaceDescriptor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/releaseGlows$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/releaseGlows;-><init>()V
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
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J*\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/redemption/RewardRedeemDialogFragment$redeemCtaClickListener$1",
        "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RewardRedeemDialogFragment$OnRedeemCtaClickedListener;",
        "onRedeemCtaClicked",
        "",
        "redeemDialog",
        "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RewardRedeemDialogFragment;",
        "sectionsList",
        "",
        "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/SectionsRequestModel;",
        "storePaymentSlab",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;",
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
.field private synthetic onPostMessage:Lo/releaseGlows;


# direct methods
.method constructor <init>(Lo/releaseGlows;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 389
    iput-object p1, p0, Lo/releaseGlows$getInterfaceDescriptor;->onPostMessage:Lo/releaseGlows;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/releaseGlows;Ljava/util/List;Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/releaseGlows;",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/SectionsRequestModel;",
            ">;",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;",
            ")V"
        }
    .end annotation

    const-string v0, "redeemDialog"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lo/releaseGlows$getInterfaceDescriptor;->onPostMessage:Lo/releaseGlows;

    invoke-static {v0}, Lo/releaseGlows;->onNavigationEvent(Lo/releaseGlows;)Lo/releaseGlows$onNavigationEvent;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1427
    iget-boolean v1, v0, Lo/releaseGlows$onNavigationEvent;->onNavigationEvent:Z

    if-eqz v1, :cond_a

    .line 393
    iget-object p1, p0, Lo/releaseGlows$getInterfaceDescriptor;->onPostMessage:Lo/releaseGlows;

    invoke-static {p1}, Lo/releaseGlows;->onTransact(Lo/releaseGlows;)Lo/getMinFlingVelocity;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 2039
    iget-object p3, p1, Lo/getMinFlingVelocity;->ICustomTabsCallback:Ljava/lang/String;

    const-string v0, "INR"

    invoke-static {p3, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_3

    .line 2047
    move-object p3, p2

    check-cast p3, Ljava/util/Collection;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    .line 2048
    new-instance p2, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRequestModel;

    invoke-direct {p2, v2, v1, v2}, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRequestModel;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserSelectionRequestModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 2050
    :cond_2
    new-instance p3, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRequestModel;

    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserSelectionRequestModel;

    invoke-direct {v0, p2}, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserSelectionRequestModel;-><init>(Ljava/util/List;)V

    invoke-direct {p3, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRequestModel;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserSelectionRequestModel;)V

    move-object p2, p3

    .line 3000
    :goto_0
    iget-object p3, p1, Lo/getMinFlingVelocity;->onPostMessage:Lo/isSameListener;

    invoke-interface {p3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/isAttachedToWindow;

    .line 2053
    iget-object v0, p1, Lo/getMinFlingVelocity;->asBinder:Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;

    .line 4000
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2053
    invoke-interface {p3, v0, p2}, Lo/isAttachedToWindow;->ICustomTabsCallback(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRequestModel;)Lo/clearScrap;

    move-result-object p2

    .line 2054
    new-instance p3, Lo/getMinFlingVelocity$ICustomTabsCallback;

    invoke-direct {p3, p1}, Lo/getMinFlingVelocity$ICustomTabsCallback;-><init>(Lo/getMinFlingVelocity;)V

    check-cast p3, Lo/getScrapOrCachedViewForId;

    invoke-interface {p2, p3}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void

    .line 4068
    :cond_3
    move-object p3, p2

    check-cast p3, Ljava/util/Collection;

    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    if-eqz v0, :cond_6

    .line 4069
    new-instance p2, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRequestModel;

    invoke-direct {p2, v2, v1, v2}, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRequestModel;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserSelectionRequestModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    .line 4071
    :cond_6
    new-instance p3, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRequestModel;

    .line 4072
    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserSelectionRequestModel;

    invoke-direct {v0, p2}, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserSelectionRequestModel;-><init>(Ljava/util/List;)V

    .line 4071
    invoke-direct {p3, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRequestModel;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserSelectionRequestModel;)V

    move-object p2, p3

    .line 4078
    :goto_1
    iget-object p3, p1, Lo/getMinFlingVelocity;->asBinder:Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;

    .line 4420
    iget-object p3, p3, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;->asBinder:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    if-eqz p3, :cond_7

    .line 5067
    iget-object v2, p3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;->ICustomTabsCallback:Ljava/lang/String;

    :cond_7
    if-nez v2, :cond_8

    .line 6000
    iget-object p3, p1, Lo/getMinFlingVelocity;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/computeHorizontalScrollExtent;

    .line 4079
    iget-object v0, p1, Lo/getMinFlingVelocity;->asBinder:Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;

    .line 7000
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4079
    invoke-interface {p3, v0, p2}, Lo/computeHorizontalScrollExtent;->onPostMessage(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRequestModel;)Lo/clearScrap;

    move-result-object p2

    goto :goto_2

    .line 8000
    :cond_8
    iget-object p3, p1, Lo/getMinFlingVelocity;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/computeHorizontalScrollExtent;

    .line 4081
    iget-object v0, p1, Lo/getMinFlingVelocity;->asBinder:Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;

    .line 8420
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;->asBinder:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    .line 9067
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;->ICustomTabsCallback:Ljava/lang/String;

    .line 4081
    invoke-interface {p3, v0, p2}, Lo/computeHorizontalScrollExtent;->onMessageChannelReady(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRequestModel;)Lo/clearScrap;

    move-result-object p2

    .line 4084
    :goto_2
    new-instance p3, Lo/getMinFlingVelocity$onMessageChannelReady;

    invoke-direct {p3, p1}, Lo/getMinFlingVelocity$onMessageChannelReady;-><init>(Lo/getMinFlingVelocity;)V

    check-cast p3, Lo/getScrapOrCachedViewForId;

    invoke-interface {p2, p3}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    :cond_9
    return-void

    .line 395
    :cond_a
    sget-object v1, Lo/startInterceptRequestLayout;->onNavigationEvent:Lo/startInterceptRequestLayout;

    invoke-static {}, Lo/startInterceptRequestLayout;->extraCallback()Lo/setActive;

    move-result-object v1

    new-instance v2, Lo/throwIfInMutationOperation;

    new-instance v3, Lo/startInterceptRequestLayout$extraCallback;

    .line 9427
    iget-object v0, v0, Lo/releaseGlows$onNavigationEvent;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;

    .line 10000
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/removeItemDecoration;

    .line 10396
    iget-object v0, v0, Lo/removeItemDecoration;->onNavigationEvent:Ljava/lang/String;

    .line 395
    invoke-direct {v3, v0, p1, p2, p3}, Lo/startInterceptRequestLayout$extraCallback;-><init>(Ljava/lang/String;Lo/releaseGlows;Ljava/util/List;Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;)V

    invoke-direct {v2, v3}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_b
    return-void
.end method
