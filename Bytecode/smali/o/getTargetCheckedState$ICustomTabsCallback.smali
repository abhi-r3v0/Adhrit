.class public final Lo/getTargetCheckedState$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RecyclerView$Recycler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getTargetCheckedState;->onNavigationEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/RecyclerView$Recycler<",
        "Lcom/dreamplug/androidapp/data/repository/rewardcity/RewardCityModel;",
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
        "com/dreamplug/androidapp/data/repository/rewardcity/RewardCities$getCities$1",
        "Lcom/dreamplug/network/helper/BaseCallback;",
        "Lcom/dreamplug/androidapp/data/repository/rewardcity/RewardCityModel;",
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

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 2

    .line 1054
    sget-object p1, Lo/getTargetCheckedState;->onNavigationEvent:Lo/getTargetCheckedState;

    invoke-static {}, Lo/getTargetCheckedState;->extraCallback()V

    .line 1055
    sget-object p1, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    sget-object p1, Lo/getTargetCheckedState;->onNavigationEvent:Lo/getTargetCheckedState;

    invoke-static {}, Lo/getTargetCheckedState;->ICustomTabsCallback()J

    move-result-wide p1

    sget-object v0, Lo/getTargetCheckedState$ICustomTabsCallback$onPostMessage;->onPostMessage:Lo/getTargetCheckedState$ICustomTabsCallback$onPostMessage;

    check-cast v0, Lo/getServerTime;

    const-string v1, "command"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2018
    new-instance v1, Lo/updateItemAt$extraCallback;

    invoke-direct {v1, v0}, Lo/updateItemAt$extraCallback;-><init>(Lo/getServerTime;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-static {p1, p2, v1}, Lo/updateItemAt;->onPostMessage(JLjava/lang/Runnable;)Ljava/io/Closeable;

    return-void
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)V
    .locals 2

    .line 46
    check-cast p1, Lcom/dreamplug/androidapp/data/repository/rewardcity/RewardCityModel;

    .line 1048
    sget-object v0, Lo/getTargetCheckedState;->onNavigationEvent:Lo/getTargetCheckedState;

    invoke-static {}, Lo/getTargetCheckedState;->extraCallback()V

    .line 1049
    sget-object v0, Lo/getTargetCheckedState;->onNavigationEvent:Lo/getTargetCheckedState;

    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Lo/getTargetCheckedState;->onNavigationEvent(J)V

    .line 1050
    sget-object v0, Lo/getTargetCheckedState;->onNavigationEvent:Lo/getTargetCheckedState;

    invoke-static {}, Lo/getTargetCheckedState;->onTransact()Lo/getTargetCheckedState$onPostMessage;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/data/repository/rewardcity/RewardCityModel;->getCities()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method
