.class public final Lo/PreferenceGroup$asBinder;
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
        "com/dreamplug/fabrik/ui/control/bankoffers/BankOffersViewModel$filterRewards$1",
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
.field private synthetic ICustomTabsCallback:Lo/clearScrap;

.field private synthetic onMessageChannelReady:Lo/PreferenceGroup;


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

    .line 170
    iput-object p1, p0, Lo/PreferenceGroup$asBinder;->onMessageChannelReady:Lo/PreferenceGroup;

    iput-object p2, p0, Lo/PreferenceGroup$asBinder;->ICustomTabsCallback:Lo/clearScrap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 7
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

    .line 173
    iget-object v0, p0, Lo/PreferenceGroup$asBinder;->ICustomTabsCallback:Lo/clearScrap;

    invoke-interface {v0}, Lo/clearScrap;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_c

    .line 175
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    .line 176
    iget-object v0, p0, Lo/PreferenceGroup$asBinder;->onMessageChannelReady:Lo/PreferenceGroup;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object v2, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 176
    check-cast v2, Lcom/dreamplug/fabrik/ui/control/bankoffers/BankOfferRewardResponse;

    if-eqz v2, :cond_0

    .line 1018
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/control/bankoffers/BankOfferRewardResponse;->onMessageChannelReady:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 176
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Lo/PreferenceGroup;->ICustomTabsCallback(Lo/PreferenceGroup;Z)V

    .line 177
    iget-object v0, p0, Lo/PreferenceGroup$asBinder;->onMessageChannelReady:Lo/PreferenceGroup;

    invoke-static {v0}, Lo/PreferenceGroup;->ICustomTabsCallback(Lo/PreferenceGroup;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Lo/PreferenceGroup;->extraCallback(Lo/PreferenceGroup;I)V

    .line 178
    iget-object v0, p0, Lo/PreferenceGroup$asBinder;->onMessageChannelReady:Lo/PreferenceGroup;

    .line 2009
    iget-object v2, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 178
    check-cast v2, Lcom/dreamplug/fabrik/ui/control/bankoffers/BankOfferRewardResponse;

    if-eqz v2, :cond_1

    .line 2016
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/control/bankoffers/BankOfferRewardResponse;->ICustomTabsCallback:Ljava/util/List;

    if-nez v2, :cond_2

    .line 178
    :cond_1
    iget-object v2, p0, Lo/PreferenceGroup$asBinder;->onMessageChannelReady:Lo/PreferenceGroup;

    .line 2096
    iget-object v2, v2, Lo/PreferenceGroup;->requestPostMessageChannel:Ljava/util/List;

    :cond_2
    const-string v3, "<set-?>"

    .line 178
    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3096
    iput-object v2, v0, Lo/PreferenceGroup;->requestPostMessageChannel:Ljava/util/List;

    .line 179
    iget-object v0, p0, Lo/PreferenceGroup$asBinder;->onMessageChannelReady:Lo/PreferenceGroup;

    .line 4061
    iput-boolean v1, v0, Lo/PreferenceGroup;->onRelationshipValidationResult:Z

    .line 5009
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 180
    check-cast v0, Lcom/dreamplug/fabrik/ui/control/bankoffers/BankOfferRewardResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 5020
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/control/bankoffers/BankOfferRewardResponse;->extraCallback:Ljava/lang/Integer;

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_6

    .line 180
    iget-object v0, p0, Lo/PreferenceGroup$asBinder;->onMessageChannelReady:Lo/PreferenceGroup;

    .line 6009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 180
    check-cast p1, Lcom/dreamplug/fabrik/ui/control/bankoffers/BankOfferRewardResponse;

    if-eqz p1, :cond_4

    .line 6020
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/bankoffers/BankOfferRewardResponse;->extraCallback:Ljava/lang/Integer;

    :cond_4
    if-nez v1, :cond_5

    .line 180
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 6040
    iput p1, v0, Lo/PreferenceGroup;->ICustomTabsCallback:I

    .line 181
    :cond_6
    sget-object p1, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    const-string p1, "BankOfferViewModel"

    const-string v0, "filterRewards:: RESPONSE"

    invoke-static {p1, v0}, Lo/replaceAll;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object p1, p0, Lo/PreferenceGroup$asBinder;->onMessageChannelReady:Lo/PreferenceGroup;

    invoke-static {p1}, Lo/PreferenceGroup;->onMessageChannelReady(Lo/PreferenceGroup;)V

    return-void

    .line 184
    :cond_7
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_c

    .line 185
    iget-object v0, p0, Lo/PreferenceGroup$asBinder;->onMessageChannelReady:Lo/PreferenceGroup;

    .line 6106
    iput v1, v0, Lo/PreferenceGroup;->postMessage:I

    .line 6107
    iput-boolean v1, v0, Lo/PreferenceGroup;->updateVisuals:Z

    .line 6108
    iget-object v0, v0, Lo/PreferenceGroup;->extraCommand:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 186
    iget-object v0, p0, Lo/PreferenceGroup$asBinder;->onMessageChannelReady:Lo/PreferenceGroup;

    invoke-static {v0}, Lo/PreferenceGroup;->onPostMessage(Lo/PreferenceGroup;)Lo/setActive;

    move-result-object v0

    new-instance v1, Lo/addWrite;

    iget-object v2, p0, Lo/PreferenceGroup$asBinder;->onMessageChannelReady:Lo/PreferenceGroup;

    .line 7097
    iget-object v2, v2, Lo/PreferenceGroup;->extraCommand:Ljava/util/List;

    .line 186
    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lo/getSessionPersistenceKey;->onNavigationEvent(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lo/AudioAttributesImplBase;

    new-instance v4, Lo/onViewStateRestored$onNavigationEvent;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 8014
    iget-object v5, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 186
    check-cast v5, Lcom/dreamplug/utils/model/BaseResponse;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/dreamplug/utils/model/BaseResponse;->getHeader()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_9

    :cond_8
    const-string v5, "No offers found"

    .line 9014
    :cond_9
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 187
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/dreamplug/utils/model/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_b

    :cond_a
    const-string p1, ""

    :cond_b
    const v6, 0x7f0802e9

    .line 186
    invoke-direct {v4, v5, p1, v6}, Lo/onViewStateRestored$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo p1, "reward"

    invoke-direct {v3, p1, v4}, Lo/AudioAttributesImplBase;-><init>(Ljava/lang/String;Lo/onViewStateRestored$onNavigationEvent;)V

    invoke-direct {v1, v2, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_c
    return-void
.end method
