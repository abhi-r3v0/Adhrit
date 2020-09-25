.class public final Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/stopScrollersInternal$onNavigationEvent;->onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;",
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
        "com/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRewardUseCase$redeemReward$1$onResponse$3",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;",
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
.field final synthetic extraCallback:Lcom/dreamplug/utils/model/BaseResponse;

.field final synthetic onMessageChannelReady:Lo/stopScrollersInternal$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/stopScrollersInternal$onNavigationEvent;Lcom/dreamplug/utils/model/BaseResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ")V"
        }
    .end annotation

    .line 245
    iput-object p1, p0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;->onMessageChannelReady:Lo/stopScrollersInternal$onNavigationEvent;

    iput-object p2, p0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;->extraCallback:Lcom/dreamplug/utils/model/BaseResponse;

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
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_0

    .line 248
    move-object v0, p1

    check-cast v0, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object v0, v0, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;->onMessageChannelReady:Lo/stopScrollersInternal$onNavigationEvent;

    iget-object v0, v0, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 1033
    iget-object v0, v0, Lo/stopScrollersInternal;->ICustomTabsCallback$Stub:Landroidx/fragment/app/Fragment;

    .line 249
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Lo/onSessionEvent;

    move-result-object v0

    new-instance v1, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady$extraCallback;

    invoke-direct {v1, p0, p1}, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady$extraCallback;-><init>(Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;Lo/getScrapOrHiddenOrCachedHolderForPosition;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 256
    :cond_0
    iget-object p1, p0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;->onMessageChannelReady:Lo/stopScrollersInternal$onNavigationEvent;

    iget-object p1, p1, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 2033
    iget-object p1, p1, Lo/stopScrollersInternal;->ICustomTabsCallback$Stub:Landroidx/fragment/app/Fragment;

    .line 256
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Lo/onSessionEvent;

    move-result-object p1

    new-instance v0, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady$onPostMessage;

    invoke-direct {v0, p0}, Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady$onPostMessage;-><init>(Lo/stopScrollersInternal$onNavigationEvent$onMessageChannelReady;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
