.class public final Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/compass/collection/MiniCardsResponse;",
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
        "com/dreamplug/fabrik/ui/lifestyle/compass/collection/LifestyleCategoryHolder$fetchRewards$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/compass/collection/MiniCardsResponse;",
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
.field private synthetic extraCallback:Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd;


# direct methods
.method constructor <init>(Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd$ICustomTabsCallback;->extraCallback:Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd;

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
            "Lcom/dreamplug/fabrik/ui/lifestyle/compass/collection/MiniCardsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_2

    .line 43
    iget-object v0, p0, Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd$ICustomTabsCallback;->extraCallback:Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 43
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/compass/collection/MiniCardsResponse;

    if-eqz p1, :cond_0

    .line 1036
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/compass/collection/MiniCardsResponse;->ICustomTabsCallback:Ljava/util/List;

    if-nez p1, :cond_1

    .line 43
    :cond_0
    iget-object p1, p0, Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd$ICustomTabsCallback;->extraCallback:Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd;

    .line 1074
    iget-object p1, p1, Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd;->onRelationshipValidationResult:Ljava/util/List;

    :cond_1
    const-string v1, "<set-?>"

    .line 43
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2074
    iput-object p1, v0, Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd;->onRelationshipValidationResult:Ljava/util/List;

    .line 44
    iget-object p1, p0, Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd$ICustomTabsCallback;->extraCallback:Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd;

    invoke-static {p1}, Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd;->onNavigationEvent(Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd;)V

    .line 45
    iget-object p1, p0, Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd$ICustomTabsCallback;->extraCallback:Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd;

    invoke-static {p1}, Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd;->onMessageChannelReady(Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 46
    iget-object p1, p0, Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd$ICustomTabsCallback;->extraCallback:Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd;

    invoke-static {p1}, Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd;->extraCallback(Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd;)Lo/getServerTime;

    move-result-object p1

    invoke-interface {p1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    .line 53
    :cond_2
    iget-object p1, p0, Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd$ICustomTabsCallback;->extraCallback:Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd;

    invoke-static {p1}, Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd;->ICustomTabsCallback(Lo/findPartiallyOrCompletelyInvisibleChildClosestToEnd;)V

    return-void
.end method
