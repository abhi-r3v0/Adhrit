.class public final Lo/supportStartPostponedEnterTransition$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/supportStartPostponedEnterTransition;
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
        "com/dreamplug/fabrik/ui/cm/manage/ManageCardViewModel$getCardActions$1",
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
.field private synthetic extraCallback:Lo/supportStartPostponedEnterTransition;


# direct methods
.method public constructor <init>(Lo/supportStartPostponedEnterTransition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lo/supportStartPostponedEnterTransition$extraCallback;->extraCallback:Lo/supportStartPostponedEnterTransition;

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
            "Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_7

    .line 35
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 35
    check-cast p1, Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;

    if-eqz p1, :cond_6

    .line 1016
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;->extraCallback:Ljava/util/List;

    if-eqz p1, :cond_6

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 37
    check-cast p1, Ljava/lang/Iterable;

    .line 102
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 1027
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 1076
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->ICustomTabsService:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 39
    check-cast v2, Ljava/lang/Iterable;

    .line 103
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .line 104
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/dreamplug/fabrik/ui/cm/models/Template;

    .line 40
    iget-object v7, p0, Lo/supportStartPostponedEnterTransition$extraCallback;->extraCallback:Lo/supportStartPostponedEnterTransition;

    invoke-static {v7}, Lo/supportStartPostponedEnterTransition;->ICustomTabsCallback(Lo/supportStartPostponedEnterTransition;)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 2027
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 2088
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->extraCommand:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    if-eqz v6, :cond_1

    .line 40
    invoke-virtual {v6}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getTemplateIdentifierName()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_1
    move-object v6, v3

    :goto_2
    invoke-static {v7, v6}, Lo/getSessionPersistenceKey;->onMessageChannelReady(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 105
    :cond_2
    move-object v3, v4

    check-cast v3, Ljava/util/List;

    :cond_3
    if-eqz v3, :cond_4

    .line 3027
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    .line 3076
    iput-object v3, v2, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->ICustomTabsService:Ljava/util/List;

    .line 47
    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_5
    iget-object p1, p0, Lo/supportStartPostponedEnterTransition$extraCallback;->extraCallback:Lo/supportStartPostponedEnterTransition;

    invoke-static {p1}, Lo/supportStartPostponedEnterTransition;->extraCallback(Lo/supportStartPostponedEnterTransition;)Lo/setActive;

    move-result-object p1

    new-instance v1, Lo/dispatchFragmentsOnCreateView$onPostMessage;

    invoke-direct {v1, v0}, Lo/dispatchFragmentsOnCreateView$onPostMessage;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_6
    return-void

    .line 52
    :cond_7
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_8

    .line 53
    sget-object v1, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 4014
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 5014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 53
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v0, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    invoke-static/range {v1 .. v7}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    .line 54
    iget-object p1, p0, Lo/supportStartPostponedEnterTransition$extraCallback;->extraCallback:Lo/supportStartPostponedEnterTransition;

    invoke-static {p1}, Lo/supportStartPostponedEnterTransition;->extraCallback(Lo/supportStartPostponedEnterTransition;)Lo/setActive;

    move-result-object p1

    sget-object v0, Lo/dispatchFragmentsOnCreateView$onMessageChannelReady;->onPostMessage:Lo/dispatchFragmentsOnCreateView$onMessageChannelReady;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_8
    return-void
.end method
