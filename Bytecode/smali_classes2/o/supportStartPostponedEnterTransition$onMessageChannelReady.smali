.class public final Lo/supportStartPostponedEnterTransition$onMessageChannelReady;
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
        "com/dreamplug/fabrik/ui/cm/manage/ManageCardViewModel$getAllCardsActions$1",
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
.field private synthetic ICustomTabsCallback:Lo/supportStartPostponedEnterTransition;


# direct methods
.method constructor <init>(Lo/supportStartPostponedEnterTransition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lo/supportStartPostponedEnterTransition$onMessageChannelReady;->ICustomTabsCallback:Lo/supportStartPostponedEnterTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_1

    .line 65
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 65
    check-cast p1, Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;

    if-eqz p1, :cond_0

    .line 1016
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;->extraCallback:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 72
    iget-object v0, p0, Lo/supportStartPostponedEnterTransition$onMessageChannelReady;->ICustomTabsCallback:Lo/supportStartPostponedEnterTransition;

    invoke-static {v0}, Lo/supportStartPostponedEnterTransition;->extraCallback(Lo/supportStartPostponedEnterTransition;)Lo/setActive;

    move-result-object v0

    new-instance v1, Lo/dispatchFragmentsOnCreateView$onPostMessage;

    invoke-direct {v1, p1}, Lo/dispatchFragmentsOnCreateView$onPostMessage;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 75
    :cond_1
    iget-object p1, p0, Lo/supportStartPostponedEnterTransition$onMessageChannelReady;->ICustomTabsCallback:Lo/supportStartPostponedEnterTransition;

    invoke-static {p1}, Lo/supportStartPostponedEnterTransition;->extraCallback(Lo/supportStartPostponedEnterTransition;)Lo/setActive;

    move-result-object p1

    sget-object v0, Lo/dispatchFragmentsOnCreateView$onMessageChannelReady;->onPostMessage:Lo/dispatchFragmentsOnCreateView$onMessageChannelReady;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method
