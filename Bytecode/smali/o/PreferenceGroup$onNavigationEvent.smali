.class public final Lo/PreferenceGroup$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PreferenceGroup;->onPostMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/control/bankoffers/BankOfferDetailsResponse;",
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
        "com/dreamplug/fabrik/ui/control/bankoffers/BankOffersViewModel$fetchClaimedDetails$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/control/bankoffers/BankOfferDetailsResponse;",
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
.field private synthetic onMessageChannelReady:Lo/PreferenceGroup;


# direct methods
.method constructor <init>(Lo/PreferenceGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 301
    iput-object p1, p0, Lo/PreferenceGroup$onNavigationEvent;->onMessageChannelReady:Lo/PreferenceGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/control/bankoffers/BankOfferDetailsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_7

    .line 304
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 304
    check-cast p1, Lcom/dreamplug/fabrik/ui/control/bankoffers/BankOfferDetailsResponse;

    if-eqz p1, :cond_8

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 307
    iget-object v1, p0, Lo/PreferenceGroup$onNavigationEvent;->onMessageChannelReady:Lo/PreferenceGroup;

    .line 1032
    iget-object v1, v1, Lo/PreferenceGroup;->onPostMessage:Lo/setActive;

    .line 1320
    iget-object v1, v1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 307
    :goto_0
    check-cast v1, Lo/onDetach$onRelationshipValidationResult;

    if-eqz v1, :cond_5

    .line 2081
    iget-object v1, v1, Lo/onDetach$onRelationshipValidationResult;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 308
    new-instance v2, Lo/AdapterListUpdateCallback;

    new-instance v4, Lo/getTargetScrollPosition;

    .line 3009
    iget-object v5, p1, Lcom/dreamplug/fabrik/ui/control/bankoffers/BankOfferDetailsResponse;->onNavigationEvent:Ljava/lang/String;

    .line 308
    invoke-direct {v4, v5}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    .line 309
    new-instance v5, Lo/getTargetScrollPosition;

    .line 3011
    iget-object v6, p1, Lcom/dreamplug/fabrik/ui/control/bankoffers/BankOfferDetailsResponse;->onMessageChannelReady:Ljava/lang/String;

    .line 309
    invoke-direct {v5, v6}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    .line 310
    new-instance v6, Lo/getTargetScrollPosition;

    iget-object v7, p0, Lo/PreferenceGroup$onNavigationEvent;->onMessageChannelReady:Lo/PreferenceGroup;

    .line 3032
    iget-object v7, v7, Lo/PreferenceGroup;->onPostMessage:Lo/setActive;

    .line 3320
    iget-object v7, v7, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 3321
    sget-object v8, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v7, v8, :cond_1

    goto :goto_1

    :cond_1
    move-object v7, v3

    .line 310
    :goto_1
    check-cast v7, Lo/onDetach$onRelationshipValidationResult;

    if-eqz v7, :cond_2

    .line 4081
    iget-object v7, v7, Lo/onDetach$onRelationshipValidationResult;->onNavigationEvent:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v7, v3

    .line 310
    :goto_2
    iget-object v8, p0, Lo/PreferenceGroup$onNavigationEvent;->onMessageChannelReady:Lo/PreferenceGroup;

    .line 5032
    iget-object v8, v8, Lo/PreferenceGroup;->onPostMessage:Lo/setActive;

    .line 5320
    iget-object v8, v8, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 5321
    sget-object v9, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v8, v9, :cond_3

    goto :goto_3

    :cond_3
    move-object v8, v3

    .line 310
    :goto_3
    check-cast v8, Lo/onDetach$onRelationshipValidationResult;

    if-eqz v8, :cond_4

    .line 6081
    iget-object v3, v8, Lo/onDetach$onRelationshipValidationResult;->onMessageChannelReady:Ljava/lang/String;

    .line 310
    :cond_4
    invoke-static {v7, v3}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$extraCallback;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "CardUtils.getFormattedCa\u2026dInstrument.value?.brand)"

    invoke-static {v3, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v3}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    .line 308
    invoke-direct {v2, v4, v5, v6, v1}, Lo/AdapterListUpdateCallback;-><init>(Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7010
    :cond_5
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/control/bankoffers/BankOfferDetailsResponse;->onPostMessage:Ljava/util/List;

    .line 312
    check-cast p1, Ljava/lang/Iterable;

    .line 333
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/fabrik/ui/control/bankoffers/OfferDetail;

    .line 313
    new-instance v2, Lo/clearOnScrollListeners;

    new-instance v10, Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;

    .line 7018
    iget-object v4, v1, Lcom/dreamplug/fabrik/ui/control/bankoffers/OfferDetail;->extraCallback:Ljava/lang/String;

    .line 8016
    iget-object v7, v1, Lcom/dreamplug/fabrik/ui/control/bankoffers/OfferDetail;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/Data;

    .line 8017
    iget-object v5, v1, Lcom/dreamplug/fabrik/ui/control/bankoffers/OfferDetail;->onPostMessage:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v3, v10

    .line 313
    invoke-direct/range {v3 .. v9}, Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dreamplug/fabrik/ui/lifestyle/models/Data;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v2, v10, v1, v3, v4}, Lo/clearOnScrollListeners;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;ZZI)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 315
    :cond_6
    new-instance p1, Lo/getMaxHeight;

    const-string v1, "disclaimer"

    const-string v2, "bank offers are updated periodically, and are subject to the bank\'s terms and conditions. please refer to the reward link for complete details."

    invoke-direct {p1, v1, v2}, Lo/getMaxHeight;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object p1, p0, Lo/PreferenceGroup$onNavigationEvent;->onMessageChannelReady:Lo/PreferenceGroup;

    invoke-static {p1}, Lo/PreferenceGroup;->asInterface(Lo/PreferenceGroup;)Lo/setActive;

    move-result-object p1

    new-instance v1, Lo/getViewForPosition;

    invoke-direct {v1, v0}, Lo/getViewForPosition;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 319
    :cond_7
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_8

    .line 320
    iget-object v0, p0, Lo/PreferenceGroup$onNavigationEvent;->onMessageChannelReady:Lo/PreferenceGroup;

    invoke-static {v0}, Lo/PreferenceGroup;->asInterface(Lo/PreferenceGroup;)Lo/setActive;

    move-result-object v0

    new-instance v1, Lo/getViewForPosition;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 9014
    iget-object v2, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 10014
    iget-object v3, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 320
    invoke-direct {v1, v2, v3}, Lo/getViewForPosition;-><init>(Ljava/lang/Throwable;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 321
    sget-object v4, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    .line 11014
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 12014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 321
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v0, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1e

    invoke-static/range {v4 .. v10}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    :cond_8
    return-void
.end method
