.class public final Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart;->ICustomTabsCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/compass/collection/FarmsResponseModel;",
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
        "com/dreamplug/fabrik/ui/lifestyle/compass/collection/LifestyleCollectionViewModel$fetchCategories$2",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/compass/collection/FarmsResponseModel;",
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
.field private synthetic onNavigationEvent:Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart;


# direct methods
.method constructor <init>(Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart$ICustomTabsCallback;->onNavigationEvent:Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart;

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
            "Lcom/dreamplug/fabrik/ui/lifestyle/compass/collection/FarmsResponseModel;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_3

    .line 84
    iget-object v0, p0, Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart$ICustomTabsCallback;->onNavigationEvent:Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 84
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/compass/collection/FarmsResponseModel;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1010
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/compass/collection/FarmsResponseModel;->onMessageChannelReady:Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 1067
    :goto_0
    iput-object p1, v0, Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart;->onTransact:Ljava/util/List;

    .line 85
    iget-object p1, p0, Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart$ICustomTabsCallback;->onNavigationEvent:Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart;

    .line 2067
    iget-object v0, p1, Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart;->onTransact:Ljava/util/List;

    if-eqz v0, :cond_2

    const-string v2, "$this$getOrNull"

    .line 85
    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$this$lastIndex"

    .line 2266
    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3210
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    const/4 v2, 0x0

    .line 2266
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 85
    :goto_1
    check-cast v0, Lcom/dreamplug/fabrik/ui/lifestyle/compass/collection/FarmResult;

    if-eqz v0, :cond_2

    .line 4018
    iget-object v1, v0, Lcom/dreamplug/fabrik/ui/lifestyle/compass/collection/FarmResult;->onNavigationEvent:Ljava/lang/String;

    .line 85
    :cond_2
    invoke-virtual {p1, v1}, Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart;->onMessageChannelReady(Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart$ICustomTabsCallback;->onNavigationEvent:Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart;

    invoke-static {p1}, Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart;->onNavigationEvent(Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart;)V

    .line 87
    iget-object p1, p0, Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart$ICustomTabsCallback;->onNavigationEvent:Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart;

    .line 4108
    invoke-virtual {p1}, Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart;->extraCallback()V

    .line 4109
    invoke-virtual {p1}, Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart;->onPostMessage()V

    .line 93
    :cond_3
    iget-object p1, p0, Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart$ICustomTabsCallback;->onNavigationEvent:Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart;

    invoke-static {p1}, Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart;->onPostMessage(Lo/findPartiallyOrCompletelyInvisibleChildClosestToStart;)V

    return-void
.end method
