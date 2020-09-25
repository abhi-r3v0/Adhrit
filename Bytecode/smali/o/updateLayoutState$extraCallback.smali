.class public final Lo/updateLayoutState$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/updateLayoutState;->extraCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;",
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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u001c\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0007H\u0016\u00a8\u0006\u0008\u00b8\u0006\u0000"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/MachinePullViewModel$fetchDeepLinkedCard$1$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;",
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
.field private synthetic ICustomTabsCallback:Lo/updateLayoutState;


# direct methods
.method constructor <init>(Lo/updateLayoutState;)V
    .locals 0

    iput-object p1, p0, Lo/updateLayoutState$extraCallback;->ICustomTabsCallback:Lo/updateLayoutState;

    .line 140
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
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lo/updateLayoutState$extraCallback;->ICustomTabsCallback:Lo/updateLayoutState;

    .line 1067
    iget-object v0, v0, Lo/updateLayoutState;->asBinder:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-nez v0, :cond_3

    .line 144
    iget-object v0, p0, Lo/updateLayoutState$extraCallback;->ICustomTabsCallback:Lo/updateLayoutState;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 2009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 144
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 2067
    iput-object p1, v0, Lo/updateLayoutState;->asBinder:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 145
    sget-object p1, Lo/collectAdjacentPrefetchPositions;->onPostMessage:Lo/collectAdjacentPrefetchPositions$ICustomTabsCallback;

    .line 2092
    invoke-static {}, Lo/collectAdjacentPrefetchPositions;->ICustomTabsCallback()Ljava/util/List;

    move-result-object p1

    .line 145
    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lo/updateLayoutState$extraCallback;->ICustomTabsCallback:Lo/updateLayoutState;

    .line 3067
    iget-object v0, v0, Lo/updateLayoutState;->asBinder:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-eqz v0, :cond_0

    .line 4031
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onTransact:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 145
    :goto_0
    invoke-static {p1, v0}, Lo/getSessionPersistenceKey;->onMessageChannelReady(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 146
    iget-object p1, p0, Lo/updateLayoutState$extraCallback;->ICustomTabsCallback:Lo/updateLayoutState;

    invoke-static {p1}, Lo/updateLayoutState;->onMessageChannelReady(Lo/updateLayoutState;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lo/updateLayoutState$extraCallback;->ICustomTabsCallback:Lo/updateLayoutState;

    .line 4067
    iget-object v0, v0, Lo/updateLayoutState;->asBinder:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-nez v0, :cond_1

    .line 146
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object p1, p0, Lo/updateLayoutState$extraCallback;->ICustomTabsCallback:Lo/updateLayoutState;

    invoke-static {p1}, Lo/updateLayoutState;->ICustomTabsCallback(Lo/updateLayoutState;)Lo/setActive;

    move-result-object p1

    iget-object v0, p0, Lo/updateLayoutState$extraCallback;->ICustomTabsCallback:Lo/updateLayoutState;

    invoke-static {v0}, Lo/updateLayoutState;->onMessageChannelReady(Lo/updateLayoutState;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto :goto_1

    .line 150
    :cond_2
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_3

    .line 151
    sget-object v1, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 5014
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 6014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 151
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v0, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    invoke-static/range {v1 .. v7}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    .line 152
    iget-object p1, p0, Lo/updateLayoutState$extraCallback;->ICustomTabsCallback:Lo/updateLayoutState;

    invoke-static {p1}, Lo/updateLayoutState;->onNavigationEvent(Lo/updateLayoutState;)Lo/setActive;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 154
    :cond_3
    :goto_1
    iget-object p1, p0, Lo/updateLayoutState$extraCallback;->ICustomTabsCallback:Lo/updateLayoutState;

    .line 6072
    iget-boolean p1, p1, Lo/updateLayoutState;->ICustomTabsService:Z

    if-eqz p1, :cond_4

    .line 155
    iget-object p1, p0, Lo/updateLayoutState$extraCallback;->ICustomTabsCallback:Lo/updateLayoutState;

    invoke-static {p1}, Lo/updateLayoutState;->asBinder(Lo/updateLayoutState;)V

    :cond_4
    return-void
.end method
