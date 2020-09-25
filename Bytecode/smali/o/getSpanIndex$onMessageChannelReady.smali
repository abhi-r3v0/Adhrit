.class public final Lo/getSpanIndex$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getSpanIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse;",
        "Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse;",
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
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lending/LendingWithdrawalViewModel$fetchLendingAmountScreenData$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse;",
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
.field private synthetic extraCallback:Lo/getSpanIndex;


# direct methods
.method constructor <init>(Lo/getSpanIndex;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lo/getSpanIndex$onMessageChannelReady;->extraCallback:Lo/getSpanIndex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse;",
            "Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lo/getSpanIndex$onMessageChannelReady;->extraCallback:Lo/getSpanIndex;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 103
    check-cast p1, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse;

    invoke-static {v0, p1}, Lo/getSpanIndex;->onMessageChannelReady(Lo/getSpanIndex;Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse;)V

    return-void

    .line 106
    :cond_0
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_5

    .line 107
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 1014
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 107
    check-cast v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse;->getScreen_data()Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 108
    :cond_1
    sget-object v0, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 1122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v1, "context"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    const v1, 0x7f130412

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    :cond_3
    iget-object v1, p0, Lo/getSpanIndex$onMessageChannelReady;->extraCallback:Lo/getSpanIndex;

    .line 2038
    iget-object v1, v1, Lo/getSpanIndex;->onPostMessage:Lo/setActive;

    .line 109
    new-instance v2, Lo/throwIfInMutationOperation;

    new-instance v3, Lo/addWrite;

    .line 3014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 109
    instance-of p1, p1, Ljava/net/ConnectException;

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_0

    :cond_4
    sget-object p1, Lo/onAnchorReady$ICustomTabsCallback;->extraCallback:Lo/onAnchorReady$ICustomTabsCallback;

    :goto_0
    invoke-direct {v3, v0, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method
