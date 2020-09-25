.class public final Lo/stopScrollersInternal$onNavigationEvent$onNavigationEvent$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/stopScrollersInternal$onNavigationEvent$onNavigationEvent;
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
        "com/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRewardUseCase$redeemReward$1$onResponse$1$1",
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
.field private synthetic extraCallback:Lo/stopScrollersInternal$onNavigationEvent$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/stopScrollersInternal$onNavigationEvent$onNavigationEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 201
    iput-object p1, p0, Lo/stopScrollersInternal$onNavigationEvent$onNavigationEvent$3;->extraCallback:Lo/stopScrollersInternal$onNavigationEvent$onNavigationEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 5
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

    .line 203
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_4

    .line 204
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    const-string v1, "CRED_POINTS"

    const/16 v2, 0x16

    if-eqz v0, :cond_3

    .line 205
    iget-object v0, p0, Lo/stopScrollersInternal$onNavigationEvent$onNavigationEvent$3;->extraCallback:Lo/stopScrollersInternal$onNavigationEvent$onNavigationEvent;

    iget-object v0, v0, Lo/stopScrollersInternal$onNavigationEvent$onNavigationEvent;->extraCallback:Lo/stopScrollersInternal$onNavigationEvent;

    iget-object v0, v0, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 1033
    iget-object v0, v0, Lo/stopScrollersInternal;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 205
    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 2000
    sget-object v0, Lo/setTrackTintMode;->IPostMessageService:Lo/getNavigationContentDescription;

    sget-object v1, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v1, v1, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 208
    :cond_0
    iget-object v0, p0, Lo/stopScrollersInternal$onNavigationEvent$onNavigationEvent$3;->extraCallback:Lo/stopScrollersInternal$onNavigationEvent$onNavigationEvent;

    iget-object v0, v0, Lo/stopScrollersInternal$onNavigationEvent$onNavigationEvent;->extraCallback:Lo/stopScrollersInternal$onNavigationEvent;

    iget-object v0, v0, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 2033
    iget-object v0, v0, Lo/stopScrollersInternal;->newSession:Lo/rerunTransactionQueue;

    if-eqz v0, :cond_2

    .line 3009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    if-nez p1, :cond_1

    .line 208
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    iget-object v1, p0, Lo/stopScrollersInternal$onNavigationEvent$onNavigationEvent$3;->extraCallback:Lo/stopScrollersInternal$onNavigationEvent$onNavigationEvent;

    iget-object v1, v1, Lo/stopScrollersInternal$onNavigationEvent$onNavigationEvent;->extraCallback:Lo/stopScrollersInternal$onNavigationEvent;

    iget-object v1, v1, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 3033
    iget-object v1, v1, Lo/stopScrollersInternal;->ICustomTabsCallback:Ljava/lang/String;

    .line 208
    iget-object v2, p0, Lo/stopScrollersInternal$onNavigationEvent$onNavigationEvent$3;->extraCallback:Lo/stopScrollersInternal$onNavigationEvent$onNavigationEvent;

    iget-object v2, v2, Lo/stopScrollersInternal$onNavigationEvent$onNavigationEvent;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;

    .line 4032
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;->getInterfaceDescriptor:Ljava/lang/String;

    .line 208
    invoke-interface {v0, p1, v1, v2}, Lo/rerunTransactionQueue;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void

    .line 210
    :cond_3
    iget-object p1, p0, Lo/stopScrollersInternal$onNavigationEvent$onNavigationEvent$3;->extraCallback:Lo/stopScrollersInternal$onNavigationEvent$onNavigationEvent;

    iget-object p1, p1, Lo/stopScrollersInternal$onNavigationEvent$onNavigationEvent;->extraCallback:Lo/stopScrollersInternal$onNavigationEvent;

    iget-object p1, p1, Lo/stopScrollersInternal$onNavigationEvent;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 4033
    iget-object p1, p1, Lo/stopScrollersInternal;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 210
    invoke-static {p1, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 211
    sget-object p1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 5000
    sget-object p1, Lo/setTrackTintMode;->IPostMessageService:Lo/getNavigationContentDescription;

    sget-object v0, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v3, -0x1

    add-long/2addr v0, v3

    .line 6000
    sget-object p1, Lo/setTrackTintMode;->IPostMessageService:Lo/getNavigationContentDescription;

    sget-object v3, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v2, v3, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    :cond_4
    return-void
.end method
