.class public final Lo/getAnimator$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getAnimator;->onPostMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;",
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
        "com/dreamplug/fabrik/ui/cm/benefits/BenefitsViewModel$fetchBenefits$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;",
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
.field final synthetic onPostMessage:Lo/getAnimator;


# direct methods
.method constructor <init>(Lo/getAnimator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lo/getAnimator$onNavigationEvent;->onPostMessage:Lo/getAnimator;

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
            "Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lo/getAnimator$onNavigationEvent;->onPostMessage:Lo/getAnimator;

    invoke-static {v0}, Lo/extraCallback;->ICustomTabsCallback(Lo/setQueue;)Lo/isFromUser;

    move-result-object v0

    invoke-static {}, Lo/setTrackedQueryKeys;->onPostMessage()Lo/zombifyForRemove;

    move-result-object v1

    check-cast v1, Lo/isZombied;

    new-instance v2, Lo/getAnimator$onNavigationEvent$extraCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lo/getAnimator$onNavigationEvent$extraCallback;-><init>(Lo/getAnimator$onNavigationEvent;Lo/getScrapOrHiddenOrCachedHolderForPosition;Lo/setSessionPersistenceKey;)V

    check-cast v2, Lo/nextTransactionOrder;

    const/4 p1, 0x2

    .line 1001
    invoke-static {v0, v1, v3, v2, p1}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(Lo/isFromUser;Lo/isZombied;Lo/getQueryParams;Lo/nextTransactionOrder;I)Lo/assertValidTrackedQuery;

    return-void

    .line 77
    :cond_0
    instance-of p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz p1, :cond_1

    .line 78
    iget-object p1, p0, Lo/getAnimator$onNavigationEvent;->onPostMessage:Lo/getAnimator;

    .line 1031
    iget-boolean p1, p1, Lo/getAnimator;->onNavigationEvent:Z

    if-nez p1, :cond_1

    .line 79
    iget-object p1, p0, Lo/getAnimator$onNavigationEvent;->onPostMessage:Lo/getAnimator;

    .line 1211
    new-instance v0, Lo/getAllowReturnTransitionOverlap$onMessageChannelReady;

    const v1, 0x7f1300fd

    const v2, 0x7f1300fc

    const v3, 0x7f1300fb

    invoke-direct {v0, v1, v2, v3}, Lo/getAllowReturnTransitionOverlap$onMessageChannelReady;-><init>(III)V

    .line 79
    invoke-static {p1, v0}, Lo/getAnimator;->ICustomTabsCallback(Lo/getAnimator;Lo/getAllowReturnTransitionOverlap$onMessageChannelReady;)V

    :cond_1
    return-void
.end method