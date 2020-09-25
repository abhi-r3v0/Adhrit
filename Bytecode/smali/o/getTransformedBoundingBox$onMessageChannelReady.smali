.class final Lo/getTransformedBoundingBox$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getTransformedBoundingBox;-><init>()V
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
        "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
        "Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
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
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012&\u0010\u0002\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005 \u0006*\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "addCardResponse",
        "Lcom/dreamplug/network/internals/call/CallResult;",
        "Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
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
.field final synthetic onNavigationEvent:Lo/getTransformedBoundingBox;


# direct methods
.method constructor <init>(Lo/getTransformedBoundingBox;)V
    .locals 0

    iput-object p1, p0, Lo/getTransformedBoundingBox$onMessageChannelReady;->onNavigationEvent:Lo/getTransformedBoundingBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 5

    .line 58
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition;

    .line 1638
    iget-object v0, p0, Lo/getTransformedBoundingBox$onMessageChannelReady;->onNavigationEvent:Lo/getTransformedBoundingBox;

    const/4 v1, 0x1

    .line 2510
    iput-boolean v1, v0, Lo/getTransformedBoundingBox;->asBinder:Z

    .line 1640
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_0

    .line 1641
    iget-object v0, p0, Lo/getTransformedBoundingBox$onMessageChannelReady;->onNavigationEvent:Lo/getTransformedBoundingBox;

    const/4 v1, 0x0

    .line 3510
    iput-boolean v1, v0, Lo/getTransformedBoundingBox;->asBinder:Z

    .line 1642
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lo/getTransformedBoundingBox$onMessageChannelReady;->onNavigationEvent:Lo/getTransformedBoundingBox;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v1

    const-string/jumbo v2, "this.lifecycle"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x5dc

    new-instance v4, Lo/getTransformedBoundingBox$onMessageChannelReady$4;

    invoke-direct {v4, p0, p1}, Lo/getTransformedBoundingBox$onMessageChannelReady$4;-><init>(Lo/getTransformedBoundingBox$onMessageChannelReady;Lo/getScrapOrHiddenOrCachedHolderForPosition;)V

    check-cast v4, Lo/getServerTime;

    invoke-static {v0, v1, v2, v3, v4}, Lo/getTextOn;->extraCallback(Landroid/os/Handler;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    return-void

    .line 1652
    :cond_0
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_3

    .line 1653
    iget-object v0, p0, Lo/getTransformedBoundingBox$onMessageChannelReady;->onNavigationEvent:Lo/getTransformedBoundingBox;

    .line 4183
    iget-object v0, v0, Lo/getTransformedBoundingBox;->extraCallback:Lo/stopLoading;

    const-string v2, "addCardView"

    if-nez v0, :cond_1

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1653
    :cond_1
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 5014
    iget-object v3, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 6014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 1653
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v3, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Lo/stopLoading;->onNavigationEvent(Ljava/lang/String;Z)V

    .line 1654
    iget-object p1, p0, Lo/getTransformedBoundingBox$onMessageChannelReady;->onNavigationEvent:Lo/getTransformedBoundingBox;

    .line 6183
    iget-object p1, p1, Lo/getTransformedBoundingBox;->extraCallback:Lo/stopLoading;

    if-nez p1, :cond_2

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1654
    :cond_2
    sget-object v0, Lo/findLastCompletelyVisibleItemPositions;->onNavigationEvent:Lo/findLastCompletelyVisibleItemPositions;

    invoke-interface {p1, v0}, Lo/stopLoading;->extraCallback(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 1655
    iget-object p1, p0, Lo/getTransformedBoundingBox$onMessageChannelReady;->onNavigationEvent:Lo/getTransformedBoundingBox;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/getTransformedBoundingBox;->onMessageChannelReady(Lo/getTransformedBoundingBox;Lcom/dreamplug/androidapp/onboarding/PaymentMode;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "onboard_verify_unsuccessful"

    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    :cond_3
    return-void
.end method
