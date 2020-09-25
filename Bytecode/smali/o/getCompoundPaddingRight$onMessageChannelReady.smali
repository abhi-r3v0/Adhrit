.class public final Lo/getCompoundPaddingRight$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RecyclerView$Recycler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCompoundPaddingRight;->extraCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/RecyclerView$Recycler<",
        "Lcom/dreamplug/androidapp/data/repository/rewardcount/RewardCountModel;",
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
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u001c\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003H\u0016J\u0012\u0010\t\u001a\u00020\u00052\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/dreamplug/androidapp/data/repository/rewardcount/RewardsCount$refresh$1",
        "Lcom/dreamplug/network/helper/BaseCallback;",
        "Lcom/dreamplug/androidapp/data/repository/rewardcount/RewardCountModel;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "onFailure",
        "",
        "t",
        "",
        "errorResponse",
        "onResponse",
        "response",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic extraCallback(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)V
    .locals 5

    .line 96
    check-cast p1, Lcom/dreamplug/androidapp/data/repository/rewardcount/RewardCountModel;

    if-eqz p1, :cond_1

    .line 1104
    invoke-virtual {p1}, Lcom/dreamplug/androidapp/data/repository/rewardcount/RewardCountModel;->getCounts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/androidapp/data/repository/rewardcount/Count;

    .line 1105
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/data/repository/rewardcount/Count;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "claimed"

    invoke-static {v3, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1106
    sget-object v2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/data/repository/rewardcount/Count;->getTotal()I

    move-result v1

    .line 2000
    sget-object v2, Lo/setTrackTintMode;->postMessage:Lo/getCollapseContentDescription;

    sget-object v3, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v4, 0xf

    aget-object v3, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    goto :goto_0

    .line 1110
    :cond_1
    sget-object v0, Lo/getCompoundPaddingRight;->onNavigationEvent:Lo/getCompoundPaddingRight;

    invoke-static {v0}, Lo/getCompoundPaddingRight;->extraCallback(Lo/getCompoundPaddingRight;)Lo/setActive;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method
