.class public final Lo/PreferenceGroup$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PreferenceGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/control/bankoffers/BankOfferRewardResponse;",
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
        "com/dreamplug/fabrik/ui/control/bankoffers/BankOffersViewModel$fetchDeepLinkedReward$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/control/bankoffers/BankOfferRewardResponse;",
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
.field private synthetic onNavigationEvent:Lo/PreferenceGroup;

.field private synthetic onPostMessage:Lo/clearScrap;


# direct methods
.method constructor <init>(Lo/PreferenceGroup;Lo/clearScrap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/clearScrap;",
            ")V"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lo/PreferenceGroup$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/PreferenceGroup;

    iput-object p2, p0, Lo/PreferenceGroup$ICustomTabsCallback$Stub;->onPostMessage:Lo/clearScrap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/control/bankoffers/BankOfferRewardResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lo/PreferenceGroup$ICustomTabsCallback$Stub;->onPostMessage:Lo/clearScrap;

    invoke-interface {v0}, Lo/clearScrap;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lo/PreferenceGroup$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/PreferenceGroup;

    const/4 v1, 0x1

    .line 1061
    iput-boolean v1, v0, Lo/PreferenceGroup;->onRelationshipValidationResult:Z

    .line 84
    iget-object v0, p0, Lo/PreferenceGroup$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/PreferenceGroup;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 2009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 84
    check-cast p1, Lcom/dreamplug/fabrik/ui/control/bankoffers/BankOfferRewardResponse;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 2016
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/control/bankoffers/BankOfferRewardResponse;->ICustomTabsCallback:Ljava/util/List;

    if-eqz p1, :cond_1

    const-string v2, "$this$firstOrNull"

    .line 84
    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2243
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 84
    :goto_0
    check-cast v1, Lcom/dreamplug/fabrik/ui/control/bankoffers/RewardData;

    .line 3065
    :cond_1
    iput-object v1, v0, Lo/PreferenceGroup;->ICustomTabsService:Lcom/dreamplug/fabrik/ui/control/bankoffers/RewardData;

    .line 85
    sget-object p1, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    const-string p1, "BankOfferViewModel"

    const-string v0, "fetchDeepLinkedReward :: RESPONSE"

    invoke-static {p1, v0}, Lo/replaceAll;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lo/PreferenceGroup$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/PreferenceGroup;

    invoke-static {p1}, Lo/PreferenceGroup;->onMessageChannelReady(Lo/PreferenceGroup;)V

    :cond_2
    return-void
.end method
