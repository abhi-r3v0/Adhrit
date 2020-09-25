.class public final Lo/PreferenceGroup$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PreferenceGroup;->ICustomTabsCallback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Ljava/util/List<",
        "+",
        "Lcom/dreamplug/fabrik/ui/control/bankoffers/OfferCategory;",
        ">;",
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
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0004\u0012\u00020\u00040\u0001J\"\u0010\u0005\u001a\u00020\u00062\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0004\u0012\u00020\u00040\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/control/bankoffers/BankOffersViewModel$fetchCategories$2",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "",
        "Lcom/dreamplug/fabrik/ui/control/bankoffers/OfferCategory;",
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
.field private synthetic ICustomTabsCallback:Ljava/lang/String;

.field private synthetic extraCallback:Lo/PreferenceGroup;


# direct methods
.method constructor <init>(Lo/PreferenceGroup;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lo/PreferenceGroup$ICustomTabsCallback;->extraCallback:Lo/PreferenceGroup;

    iput-object p2, p0, Lo/PreferenceGroup$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/control/bankoffers/OfferCategory;",
            ">;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const-string v1, "<set-?>"

    const/4 v2, -0x1

    .line 129
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "All offers"

    if-eqz v0, :cond_3

    .line 127
    iget-object v0, p0, Lo/PreferenceGroup$ICustomTabsCallback;->extraCallback:Lo/PreferenceGroup;

    invoke-static {v0}, Lo/PreferenceGroup;->onPostMessage(Lo/PreferenceGroup;)Lo/setActive;

    move-result-object v0

    new-instance v5, Lo/addWrite;

    iget-object v6, p0, Lo/PreferenceGroup$ICustomTabsCallback;->extraCallback:Lo/PreferenceGroup;

    .line 1097
    iget-object v6, v6, Lo/PreferenceGroup;->extraCommand:Ljava/util/List;

    .line 127
    check-cast v6, Ljava/lang/Iterable;

    invoke-static {v6}, Lo/getSessionPersistenceKey;->onNavigationEvent(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lo/PreferenceGroup$ICustomTabsCallback;->extraCallback:Lo/PreferenceGroup;

    .line 1113
    iget-object v0, v0, Lo/PreferenceGroup;->ICustomTabsService$Stub$Proxy:Ljava/util/List;

    .line 128
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 129
    iget-object v0, p0, Lo/PreferenceGroup$ICustomTabsCallback;->extraCallback:Lo/PreferenceGroup;

    .line 2113
    iget-object v0, v0, Lo/PreferenceGroup;->ICustomTabsService$Stub$Proxy:Ljava/util/List;

    .line 129
    new-instance v5, Lo/Preference;

    iget-object v6, p0, Lo/PreferenceGroup$ICustomTabsCallback;->extraCallback:Lo/PreferenceGroup;

    .line 3034
    iget-object v6, v6, Lo/PreferenceGroup;->onNavigationEvent:Ljava/lang/String;

    .line 129
    invoke-static {v6, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    invoke-direct {v5, v2, v4, v6}, Lo/Preference;-><init>(Ljava/lang/Integer;Ljava/lang/String;Z)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 131
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 4009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 131
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Iterable;

    .line 333
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/fabrik/ui/control/bankoffers/OfferCategory;

    .line 132
    iget-object v5, p0, Lo/PreferenceGroup$ICustomTabsCallback;->extraCallback:Lo/PreferenceGroup;

    .line 4034
    iget-object v5, v5, Lo/PreferenceGroup;->onNavigationEvent:Ljava/lang/String;

    .line 5009
    iget-object v6, v2, Lcom/dreamplug/fabrik/ui/control/bankoffers/OfferCategory;->onMessageChannelReady:Ljava/lang/String;

    .line 132
    invoke-static {v5, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    .line 135
    :cond_0
    iget-object v5, p0, Lo/PreferenceGroup$ICustomTabsCallback;->extraCallback:Lo/PreferenceGroup;

    .line 5113
    iget-object v5, v5, Lo/PreferenceGroup;->ICustomTabsService$Stub$Proxy:Ljava/util/List;

    .line 135
    new-instance v6, Lo/Preference;

    .line 6011
    iget-object v7, v2, Lcom/dreamplug/fabrik/ui/control/bankoffers/OfferCategory;->extraCallback:Ljava/lang/Integer;

    .line 7009
    iget-object v8, v2, Lcom/dreamplug/fabrik/ui/control/bankoffers/OfferCategory;->onMessageChannelReady:Ljava/lang/String;

    .line 135
    iget-object v9, p0, Lo/PreferenceGroup$ICustomTabsCallback;->extraCallback:Lo/PreferenceGroup;

    .line 7034
    iget-object v9, v9, Lo/PreferenceGroup;->onNavigationEvent:Ljava/lang/String;

    .line 8009
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/control/bankoffers/OfferCategory;->onMessageChannelReady:Ljava/lang/String;

    .line 135
    invoke-static {v9, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-direct {v6, v7, v8, v2}, Lo/Preference;-><init>(Ljava/lang/Integer;Ljava/lang/String;Z)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 139
    iget-object p1, p0, Lo/PreferenceGroup$ICustomTabsCallback;->extraCallback:Lo/PreferenceGroup;

    invoke-static {v4, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8034
    iput-object v4, p1, Lo/PreferenceGroup;->onNavigationEvent:Ljava/lang/String;

    .line 141
    :cond_2
    iget-object p1, p0, Lo/PreferenceGroup$ICustomTabsCallback;->extraCallback:Lo/PreferenceGroup;

    invoke-static {p1}, Lo/PreferenceGroup;->onNavigationEvent(Lo/PreferenceGroup;)Lo/setActive;

    move-result-object p1

    iget-object v0, p0, Lo/PreferenceGroup$ICustomTabsCallback;->extraCallback:Lo/PreferenceGroup;

    .line 8113
    iget-object v0, v0, Lo/PreferenceGroup;->ICustomTabsService$Stub$Proxy:Ljava/util/List;

    .line 141
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lo/getSessionPersistenceKey;->onNavigationEvent(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 142
    iget-object p1, p0, Lo/PreferenceGroup$ICustomTabsCallback;->extraCallback:Lo/PreferenceGroup;

    iget-object v0, p0, Lo/PreferenceGroup$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/PreferenceGroup;->extraCallback(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 144
    :cond_3
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_8

    .line 145
    iget-object v0, p0, Lo/PreferenceGroup$ICustomTabsCallback;->extraCallback:Lo/PreferenceGroup;

    .line 9106
    iput v3, v0, Lo/PreferenceGroup;->postMessage:I

    .line 9107
    iput-boolean v3, v0, Lo/PreferenceGroup;->updateVisuals:Z

    .line 9108
    iget-object v0, v0, Lo/PreferenceGroup;->extraCommand:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 146
    iget-object v0, p0, Lo/PreferenceGroup$ICustomTabsCallback;->extraCallback:Lo/PreferenceGroup;

    .line 9113
    iget-object v0, v0, Lo/PreferenceGroup;->ICustomTabsService$Stub$Proxy:Ljava/util/List;

    .line 146
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 147
    iget-object v0, p0, Lo/PreferenceGroup$ICustomTabsCallback;->extraCallback:Lo/PreferenceGroup;

    invoke-static {v4, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10034
    iput-object v4, v0, Lo/PreferenceGroup;->onNavigationEvent:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lo/PreferenceGroup$ICustomTabsCallback;->extraCallback:Lo/PreferenceGroup;

    .line 10113
    iget-object v0, v0, Lo/PreferenceGroup;->ICustomTabsService$Stub$Proxy:Ljava/util/List;

    .line 148
    new-instance v1, Lo/Preference;

    invoke-direct {v1, v2, v4}, Lo/Preference;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v0, p0, Lo/PreferenceGroup$ICustomTabsCallback;->extraCallback:Lo/PreferenceGroup;

    invoke-static {v0}, Lo/PreferenceGroup;->onNavigationEvent(Lo/PreferenceGroup;)Lo/setActive;

    move-result-object v0

    iget-object v1, p0, Lo/PreferenceGroup$ICustomTabsCallback;->extraCallback:Lo/PreferenceGroup;

    .line 11113
    iget-object v1, v1, Lo/PreferenceGroup;->ICustomTabsService$Stub$Proxy:Ljava/util/List;

    .line 149
    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lo/getSessionPersistenceKey;->onNavigationEvent(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lo/PreferenceGroup$ICustomTabsCallback;->extraCallback:Lo/PreferenceGroup;

    invoke-static {v0}, Lo/PreferenceGroup;->onPostMessage(Lo/PreferenceGroup;)Lo/setActive;

    move-result-object v0

    new-instance v1, Lo/addWrite;

    iget-object v2, p0, Lo/PreferenceGroup$ICustomTabsCallback;->extraCallback:Lo/PreferenceGroup;

    .line 12097
    iget-object v2, v2, Lo/PreferenceGroup;->extraCommand:Ljava/util/List;

    .line 150
    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lo/getSessionPersistenceKey;->onNavigationEvent(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lo/AudioAttributesImplBase;

    new-instance v4, Lo/onViewStateRestored$onNavigationEvent;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 13014
    iget-object v5, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 150
    check-cast v5, Lcom/dreamplug/utils/model/BaseResponse;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/dreamplug/utils/model/BaseResponse;->getHeader()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    :cond_4
    const-string v5, "No offers found"

    .line 14014
    :cond_5
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 151
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/dreamplug/utils/model/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    :cond_6
    const-string p1, ""

    :cond_7
    const v6, 0x7f0802e9

    .line 150
    invoke-direct {v4, v5, p1, v6}, Lo/onViewStateRestored$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const-string p1, "category"

    invoke-direct {v3, p1, v4}, Lo/AudioAttributesImplBase;-><init>(Ljava/lang/String;Lo/onViewStateRestored$onNavigationEvent;)V

    invoke-direct {v1, v2, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 155
    :cond_8
    :goto_1
    iget-object p1, p0, Lo/PreferenceGroup$ICustomTabsCallback;->extraCallback:Lo/PreferenceGroup;

    invoke-static {p1}, Lo/PreferenceGroup;->extraCallback(Lo/PreferenceGroup;)V

    return-void
.end method
