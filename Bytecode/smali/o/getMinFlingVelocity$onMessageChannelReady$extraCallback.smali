.class public final Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getMinFlingVelocity$onMessageChannelReady;->onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final synthetic extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

.field public final synthetic onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;


# direct methods
.method constructor <init>(Lo/getMinFlingVelocity$onMessageChannelReady;Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;)V
    .locals 0

    iput-object p1, p0, Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iput-object p2, p0, Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 10

    .line 1092
    iget-object v0, p0, Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;

    .line 2024
    iget-boolean v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;->asBinder:Z

    if-eqz v0, :cond_3

    .line 1094
    iget-object v0, p0, Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object v0, v0, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 2026
    iget-object v0, v0, Lo/getMinFlingVelocity;->ICustomTabsCallback:Ljava/lang/String;

    const-string v1, "CRED_POINTS"

    .line 1094
    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1095
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 3000
    sget-object v0, Lo/setTrackTintMode;->IPostMessageService:Lo/getNavigationContentDescription;

    sget-object v2, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v3, 0x16

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 1095
    sget-object v0, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 4000
    sget-object v0, Lo/isInLayout;->RemoteActionCompatParcelizer:Lo/isRemoving;

    sget-object v2, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v8, 0x2e

    aget-object v2, v2, v8

    invoke-virtual {v0, v2}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    cmp-long v0, v4, v8

    if-gez v0, :cond_1

    .line 1095
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 5000
    sget-object v0, Lo/setTrackTintMode;->IPostMessageService:Lo/getNavigationContentDescription;

    sget-object v2, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const-wide/16 v8, -0x1

    cmp-long v0, v4, v8

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1097
    :cond_1
    :goto_0
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 6000
    sget-object v0, Lo/setTrackTintMode;->IPostMessageService:Lo/getNavigationContentDescription;

    sget-object v2, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    add-long/2addr v4, v6

    .line 7000
    sget-object v0, Lo/setTrackTintMode;->IPostMessageService:Lo/getNavigationContentDescription;

    sget-object v2, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v2, v2, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    :cond_2
    if-eqz v1, :cond_3

    .line 1100
    iget-object v0, p0, Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;

    .line 7030
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;->newSession:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1100
    iget-object v0, p0, Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;

    .line 7032
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;->getInterfaceDescriptor:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1101
    iget-object v0, p0, Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback;->extraCallback:Lo/getMinFlingVelocity$onMessageChannelReady;

    iget-object v0, v0, Lo/getMinFlingVelocity$onMessageChannelReady;->onMessageChannelReady:Lo/getMinFlingVelocity;

    .line 9000
    iget-object v0, v0, Lo/getMinFlingVelocity;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/computeHorizontalScrollExtent;

    .line 1101
    iget-object v1, p0, Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;

    .line 9030
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;->newSession:Ljava/lang/String;

    .line 1101
    iget-object v2, p0, Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;

    .line 9032
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;->getInterfaceDescriptor:Ljava/lang/String;

    const-string/jumbo v3, "success"

    .line 1101
    invoke-interface {v0, v1, v2, v3}, Lo/computeHorizontalScrollExtent;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/clearScrap;

    move-result-object v0

    new-instance v1, Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback$2;

    invoke-direct {v1, p0}, Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback$2;-><init>(Lo/getMinFlingVelocity$onMessageChannelReady$extraCallback;)V

    check-cast v1, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    .line 84
    :cond_3
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
