.class public final Lo/stopScrollersInternal$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/stopScrollersInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemInitiatedRewardDetailsResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u001c\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRewardUseCase$redeemRewardInitiated$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemInitiatedRewardDetailsResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "onResponse",
        "",
        "result",
        "Lcom/dreamplug/network/internals/call/CallResult;",
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
.field private synthetic onMessageChannelReady:Lo/releaseGlows;

.field private synthetic onPostMessage:Lo/stopScrollersInternal;


# direct methods
.method constructor <init>(Lo/stopScrollersInternal;Lo/releaseGlows;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/releaseGlows;",
            ")V"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lo/stopScrollersInternal$onTransact;->onPostMessage:Lo/stopScrollersInternal;

    iput-object p2, p0, Lo/stopScrollersInternal$onTransact;->onMessageChannelReady:Lo/releaseGlows;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemInitiatedRewardDetailsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const-string/jumbo v1, "response"

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lo/stopScrollersInternal$onTransact;->onMessageChannelReady:Lo/releaseGlows;

    if-eqz v0, :cond_0

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2000
    iget-object v0, v0, Lo/releaseGlows;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/pullGlows;

    .line 1376
    invoke-virtual {v0, p1}, Lo/pullGlows;->ICustomTabsCallback(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V

    :cond_0
    return-void

    .line 139
    :cond_1
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_3

    .line 140
    iget-object v0, p0, Lo/stopScrollersInternal$onTransact;->onMessageChannelReady:Lo/releaseGlows;

    if-eqz v0, :cond_2

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3000
    iget-object v0, v0, Lo/releaseGlows;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/pullGlows;

    .line 2376
    invoke-virtual {v0, p1}, Lo/pullGlows;->ICustomTabsCallback(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V

    .line 141
    :cond_2
    iget-object v0, p0, Lo/stopScrollersInternal$onTransact;->onPostMessage:Lo/stopScrollersInternal;

    .line 3033
    iget-object v0, v0, Lo/stopScrollersInternal;->ICustomTabsService:Lo/nextTransactionOrder;

    if-eqz v0, :cond_3

    .line 141
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 4014
    iget-object v1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 5014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 141
    invoke-interface {v0, v1, p1}, Lo/nextTransactionOrder;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method
