.class final Lo/setContentInsetEndWithActions$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setContentInsetEndWithActions;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "Lcom/cred/pay/repository/models/JuspaySessionToken;",
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
        "result",
        "Lcom/dreamplug/network/internals/call/CallResult;",
        "Lcom/cred/pay/repository/models/JuspaySessionToken;",
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
.field final synthetic ICustomTabsCallback:Lo/setContentInsetEndWithActions;

.field final synthetic onNavigationEvent:Lo/dispatchAddStarting;


# direct methods
.method constructor <init>(Lo/setContentInsetEndWithActions;Lo/dispatchAddStarting;)V
    .locals 0

    iput-object p1, p0, Lo/setContentInsetEndWithActions$extraCallback;->ICustomTabsCallback:Lo/setContentInsetEndWithActions;

    iput-object p2, p0, Lo/setContentInsetEndWithActions$extraCallback;->onNavigationEvent:Lo/dispatchAddStarting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 9

    .line 32
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition;

    .line 1087
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz p1, :cond_1

    .line 2009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1087
    move-object v1, p1

    check-cast v1, Lcom/cred/pay/repository/models/JuspaySessionToken;

    :cond_1
    if-eqz v1, :cond_3

    .line 1089
    sget-object p1, Lo/onChangeStarting;->onPostMessage:Lo/onChangeStarting;

    new-instance p1, Lcom/dreamplug/upi/UpiData;

    invoke-virtual {v1}, Lcom/cred/pay/repository/models/JuspaySessionToken;->getJuspayUpi()Lcom/cred/pay/repository/models/JuspaySessionToken$JuspayUpi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cred/pay/repository/models/JuspaySessionToken$JuspayUpi;->getAxisHmacKey()Ljava/lang/String;

    move-result-object v3

    .line 1090
    invoke-virtual {v1}, Lcom/cred/pay/repository/models/JuspaySessionToken;->getJuspayUpi()Lcom/cred/pay/repository/models/JuspaySessionToken$JuspayUpi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cred/pay/repository/models/JuspaySessionToken$JuspayUpi;->getMcc()Ljava/lang/String;

    move-result-object v4

    .line 1091
    invoke-virtual {v1}, Lcom/cred/pay/repository/models/JuspaySessionToken;->getJuspayUpi()Lcom/cred/pay/repository/models/JuspaySessionToken$JuspayUpi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cred/pay/repository/models/JuspaySessionToken$JuspayUpi;->getMerchantChannelId()Ljava/lang/String;

    move-result-object v5

    .line 1092
    invoke-virtual {v1}, Lcom/cred/pay/repository/models/JuspaySessionToken;->getJuspayUpi()Lcom/cred/pay/repository/models/JuspaySessionToken$JuspayUpi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cred/pay/repository/models/JuspaySessionToken$JuspayUpi;->getMerchantId()Ljava/lang/String;

    move-result-object v6

    .line 1093
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 3000
    sget-object v0, Lo/setTrackTintMode;->onRelationshipValidationResult:Lo/setSubtitleTextColor;

    sget-object v1, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    move-object v7, v0

    .line 1094
    sget-object v0, Lo/ShareActionProvider$OnShareTargetSelectedListener;->onNavigationEvent:Lo/ShareActionProvider$OnShareTargetSelectedListener;

    .line 4000
    sget-object v0, Lo/ShareActionProvider$OnShareTargetSelectedListener;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 3034
    move-object v8, v0

    check-cast v8, Landroidx/lifecycle/LiveData;

    move-object v2, p1

    .line 1089
    invoke-direct/range {v2 .. v8}, Lcom/dreamplug/upi/UpiData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/lifecycle/LiveData;)V

    invoke-static {p1}, Lo/onChangeStarting;->onMessageChannelReady(Lcom/dreamplug/upi/UpiData;)V

    .line 1096
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iget-object v0, p0, Lo/setContentInsetEndWithActions$extraCallback;->ICustomTabsCallback:Lo/setContentInsetEndWithActions;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string/jumbo v1, "this.lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0xc8

    new-instance v3, Lo/setContentInsetEndWithActions$extraCallback$4;

    invoke-direct {v3, p0}, Lo/setContentInsetEndWithActions$extraCallback$4;-><init>(Lo/setContentInsetEndWithActions$extraCallback;)V

    check-cast v3, Lo/getServerTime;

    invoke-static {p1, v0, v1, v2, v3}, Lo/getTextOn;->extraCallback(Landroid/os/Handler;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    :cond_3
    return-void
.end method
