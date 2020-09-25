.class public final Lo/requestPermissionsFromFragment$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/requestPermissionsFromFragment;->extraCallback()V
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
        "com/dreamplug/fabrik/ui/cm/unbilled/UnBilledViewModel$fetchUnBilledDetails$1",
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
.field private synthetic extraCallback:Lo/requestPermissionsFromFragment;


# direct methods
.method constructor <init>(Lo/requestPermissionsFromFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lo/requestPermissionsFromFragment$onNavigationEvent;->extraCallback:Lo/requestPermissionsFromFragment;

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

    .line 68
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_5

    .line 69
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 69
    check-cast v0, Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;

    if-eqz v0, :cond_3

    .line 1020
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;->onPostMessage:Lcom/dreamplug/fabrik/ui/cm/models/Template;

    if-eqz v0, :cond_3

    .line 1027
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    if-eqz v0, :cond_3

    .line 1093
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->IPostMessageService$Stub:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 69
    check-cast v0, Ljava/lang/Iterable;

    const-string v1, "$this$collectionSizeOrDefault"

    .line 83
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2039
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    .line 83
    :goto_0
    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    const/16 v1, 0x10

    .line 84
    :cond_1
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    .line 85
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 86
    check-cast v1, Lcom/dreamplug/fabrik/ui/cm/models/Experiments;

    .line 3043
    iget-object v3, v1, Lcom/dreamplug/fabrik/ui/cm/models/Experiments;->onNavigationEvent:Ljava/lang/String;

    .line 3044
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/cm/models/Experiments;->ICustomTabsCallback:Ljava/lang/String;

    .line 69
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lo/requestPermissionsFromFragment$onNavigationEvent;->extraCallback:Lo/requestPermissionsFromFragment;

    .line 4030
    iget-object v0, v0, Lo/requestPermissionsFromFragment;->extraCallback:Ljava/util/Map;

    .line 69
    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 70
    :cond_3
    iget-object v0, p0, Lo/requestPermissionsFromFragment$onNavigationEvent;->extraCallback:Lo/requestPermissionsFromFragment;

    .line 5010
    iget-boolean v1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->ICustomTabsCallback:Z

    .line 5031
    iput-boolean v1, v0, Lo/requestPermissionsFromFragment;->onMessageChannelReady:Z

    .line 71
    iget-object v0, p0, Lo/requestPermissionsFromFragment$onNavigationEvent;->extraCallback:Lo/requestPermissionsFromFragment;

    invoke-static {v0}, Lo/requestPermissionsFromFragment;->onNavigationEvent(Lo/requestPermissionsFromFragment;)Lo/setActive;

    move-result-object v0

    .line 6009
    iget-object v1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 71
    check-cast v1, Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;

    if-eqz v1, :cond_4

    .line 6016
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;->extraCallback:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 72
    new-instance v2, Lo/getAllowReturnTransitionOverlap$onNavigationEvent;

    .line 7010
    iget-boolean p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->ICustomTabsCallback:Z

    .line 72
    invoke-direct {v2, v1, p1}, Lo/getAllowReturnTransitionOverlap$onNavigationEvent;-><init>(Ljava/util/List;Z)V

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 71
    :goto_2
    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 74
    :cond_5
    instance-of p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz p1, :cond_6

    .line 75
    iget-object p1, p0, Lo/requestPermissionsFromFragment$onNavigationEvent;->extraCallback:Lo/requestPermissionsFromFragment;

    .line 7031
    iget-boolean p1, p1, Lo/requestPermissionsFromFragment;->onMessageChannelReady:Z

    if-nez p1, :cond_6

    .line 76
    iget-object p1, p0, Lo/requestPermissionsFromFragment$onNavigationEvent;->extraCallback:Lo/requestPermissionsFromFragment;

    .line 7211
    new-instance v0, Lo/getAllowReturnTransitionOverlap$onMessageChannelReady;

    const v1, 0x7f1300fd

    const v2, 0x7f1300fc

    const v3, 0x7f1300fb

    invoke-direct {v0, v1, v2, v3}, Lo/getAllowReturnTransitionOverlap$onMessageChannelReady;-><init>(III)V

    .line 76
    invoke-static {p1, v0}, Lo/requestPermissionsFromFragment;->extraCallback(Lo/requestPermissionsFromFragment;Lo/getAllowReturnTransitionOverlap$onMessageChannelReady;)V

    :cond_6
    return-void
.end method
