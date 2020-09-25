.class public final Lo/getPaddingStart$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getPaddingStart;->onPostMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeAckResponse;",
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
        "com/dreamplug/fabrik/ui/notificationCentre/BadgeNotificationDataRepository$postBadgeNotificationAck$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeAckResponse;",
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
.field private synthetic extraCallback:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lo/getPaddingStart$extraCallback;->extraCallback:Ljava/lang/String;

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
            "Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeAckResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_5

    .line 71
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 71
    check-cast p1, Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeAckResponse;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1031
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeAckResponse;->onPostMessage:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 72
    :goto_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 73
    sget-object p1, Lo/getPaddingStart;->extraCallback:Lo/getPaddingStart;

    invoke-static {}, Lo/getPaddingStart;->extraCallback()Landroidx/lifecycle/LiveData;

    move-result-object p1

    .line 1320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, v1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v0

    .line 73
    :goto_1
    check-cast p1, Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeNotificationsResponse;

    if-eqz p1, :cond_4

    .line 2009
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeNotificationsResponse;->onMessageChannelReady:Ljava/util/List;

    if-eqz p1, :cond_4

    .line 73
    check-cast p1, Ljava/lang/Iterable;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 83
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/dreamplug/fabrik/ui/notificationCentre/Badges;

    .line 2015
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/notificationCentre/Badges;->extraCallback:Ljava/lang/String;

    .line 73
    iget-object v3, p0, Lo/getPaddingStart$extraCallback;->extraCallback:Ljava/lang/String;

    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 84
    :cond_3
    check-cast v0, Ljava/util/List;

    .line 74
    :cond_4
    new-instance p1, Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeNotificationsResponse;

    invoke-direct {p1, v0}, Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeNotificationsResponse;-><init>(Ljava/util/List;)V

    .line 75
    sget-object v0, Lo/getPaddingStart;->extraCallback:Lo/getPaddingStart;

    invoke-static {}, Lo/getPaddingStart;->onPostMessage()Lo/setActive;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method
