.class public final Lo/updateAnchorFromPendingData$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/updateAnchorFromPendingData;->extraCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardResponse;",
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
        "com/dreamplug/fabrik/ui/lifestyle/LifeStyleClaimedViewModel$triggerPagination$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardResponse;",
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
.field private synthetic onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleSection;

.field private synthetic onPostMessage:Lo/updateAnchorFromPendingData;


# direct methods
.method constructor <init>(Lo/updateAnchorFromPendingData;Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleSection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleSection;",
            ")V"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lo/updateAnchorFromPendingData$onTransact;->onPostMessage:Lo/updateAnchorFromPendingData;

    iput-object p2, p0, Lo/updateAnchorFromPendingData$onTransact;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lo/updateAnchorFromPendingData$onTransact;->onPostMessage:Lo/updateAnchorFromPendingData;

    invoke-static {v0}, Lo/updateAnchorFromPendingData;->onRelationshipValidationResult(Lo/updateAnchorFromPendingData;)V

    .line 89
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_5

    .line 90
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 90
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardResponse;

    if-eqz p1, :cond_5

    .line 92
    iget-object v0, p0, Lo/updateAnchorFromPendingData$onTransact;->onPostMessage:Lo/updateAnchorFromPendingData;

    .line 1012
    iget-boolean v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardResponse;->onPostMessage:Z

    .line 92
    invoke-static {v0, v1}, Lo/updateAnchorFromPendingData;->onPostMessage(Lo/updateAnchorFromPendingData;Z)V

    .line 93
    iget-object v0, p0, Lo/updateAnchorFromPendingData$onTransact;->onPostMessage:Lo/updateAnchorFromPendingData;

    invoke-static {v0}, Lo/updateAnchorFromPendingData;->extraCallback(Lo/updateAnchorFromPendingData;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lo/updateAnchorFromPendingData$onTransact;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleSection;

    .line 1020
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleSection;->onPostMessage:Ljava/lang/String;

    .line 93
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lo/updateAnchorFromPendingData$onTransact;->onPostMessage:Lo/updateAnchorFromPendingData;

    invoke-static {v0}, Lo/updateAnchorFromPendingData;->extraCallback(Lo/updateAnchorFromPendingData;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lo/updateAnchorFromPendingData$onTransact;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleSection;

    .line 2020
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleSection;->onPostMessage:Ljava/lang/String;

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_0
    iget-object v0, p0, Lo/updateAnchorFromPendingData$onTransact;->onPostMessage:Lo/updateAnchorFromPendingData;

    invoke-static {v0}, Lo/updateAnchorFromPendingData;->extraCallback(Lo/updateAnchorFromPendingData;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lo/updateAnchorFromPendingData$onTransact;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleSection;

    .line 3020
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleSection;->onPostMessage:Ljava/lang/String;

    .line 96
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    check-cast v0, Ljava/util/List;

    .line 4014
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardResponse;->onNavigationEvent:Ljava/util/List;

    .line 97
    check-cast p1, Ljava/lang/Iterable;

    .line 235
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;

    .line 98
    new-instance v1, Lo/updateAnchorInfoForLayout;

    iget-object v2, p0, Lo/updateAnchorFromPendingData$onTransact;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleSection;

    .line 4019
    iget v3, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleSection;->onNavigationEvent:I

    .line 100
    iget-object v2, p0, Lo/updateAnchorFromPendingData$onTransact;->onPostMessage:Lo/updateAnchorFromPendingData;

    invoke-static {v2}, Lo/updateAnchorFromPendingData;->onPostMessage(Lo/updateAnchorFromPendingData;)Ljava/lang/String;

    move-result-object v5

    .line 101
    sget-object v2, Lo/LinearLayoutManager;->onPostMessage:Lo/LinearLayoutManager;

    invoke-static {}, Lo/LinearLayoutManager;->onMessageChannelReady()Ljava/util/HashMap;

    move-result-object v2

    iget-object v6, p0, Lo/updateAnchorFromPendingData$onTransact;->onPostMessage:Lo/updateAnchorFromPendingData;

    invoke-static {v6}, Lo/updateAnchorFromPendingData;->onPostMessage(Lo/updateAnchorFromPendingData;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    move v6, v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 4023
    :goto_1
    iget-object v7, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;

    move-object v2, v1

    .line 98
    invoke-direct/range {v2 .. v7}, Lo/updateAnchorInfoForLayout;-><init>(ILcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedResponse;Ljava/lang/String;ILcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    :cond_3
    iget-object p1, p0, Lo/updateAnchorFromPendingData$onTransact;->onPostMessage:Lo/updateAnchorFromPendingData;

    invoke-static {p1}, Lo/updateAnchorFromPendingData;->asBinder(Lo/updateAnchorFromPendingData;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 105
    iget-object p1, p0, Lo/updateAnchorFromPendingData$onTransact;->onPostMessage:Lo/updateAnchorFromPendingData;

    invoke-static {p1}, Lo/updateAnchorFromPendingData;->onNavigationEvent(Lo/updateAnchorFromPendingData;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lo/updateAnchorFromPendingData;->ICustomTabsCallback(Lo/updateAnchorFromPendingData;I)V

    invoke-static {p1}, Lo/updateAnchorFromPendingData;->onNavigationEvent(Lo/updateAnchorFromPendingData;)I

    .line 106
    iget-object p1, p0, Lo/updateAnchorFromPendingData$onTransact;->onPostMessage:Lo/updateAnchorFromPendingData;

    .line 4058
    iput v1, p1, Lo/updateAnchorFromPendingData;->extraCallback:I

    .line 107
    iget-object p1, p0, Lo/updateAnchorFromPendingData$onTransact;->onPostMessage:Lo/updateAnchorFromPendingData;

    invoke-virtual {p1}, Lo/updateAnchorFromPendingData;->extraCallback()V

    .line 109
    :cond_4
    iget-object p1, p0, Lo/updateAnchorFromPendingData$onTransact;->onPostMessage:Lo/updateAnchorFromPendingData;

    invoke-static {p1}, Lo/updateAnchorFromPendingData;->asInterface(Lo/updateAnchorFromPendingData;)V

    :cond_5
    return-void
.end method
