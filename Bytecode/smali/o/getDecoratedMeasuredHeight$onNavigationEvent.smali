.class public final Lo/getDecoratedMeasuredHeight$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getDecoratedMeasuredHeight;->onPostMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationsResponse;",
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
        "com/dreamplug/fabrik/ui/notificationCentre/NotificationsViewModel$fetchNextNotificationList$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationsResponse;",
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
.field private synthetic onPostMessage:Lo/getDecoratedMeasuredHeight;


# direct methods
.method constructor <init>(Lo/getDecoratedMeasuredHeight;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lo/getDecoratedMeasuredHeight$onNavigationEvent;->onPostMessage:Lo/getDecoratedMeasuredHeight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const v1, 0x7f130328

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 74
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 74
    check-cast p1, Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationsResponse;

    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lo/getDecoratedMeasuredHeight$onNavigationEvent;->onPostMessage:Lo/getDecoratedMeasuredHeight;

    .line 1014
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationsResponse;->extraCallback:Ljava/lang/Integer;

    .line 1045
    iput-object v1, v0, Lo/getDecoratedMeasuredHeight;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    .line 77
    iget-object v0, p0, Lo/getDecoratedMeasuredHeight$onNavigationEvent;->onPostMessage:Lo/getDecoratedMeasuredHeight;

    .line 2018
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationsResponse;->onMessageChannelReady:Ljava/lang/Boolean;

    .line 77
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 2042
    iput-boolean v1, v0, Lo/getDecoratedMeasuredHeight;->onRelationshipValidationResult:Z

    .line 78
    iget-object v0, p0, Lo/getDecoratedMeasuredHeight$onNavigationEvent;->onPostMessage:Lo/getDecoratedMeasuredHeight;

    .line 3016
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationsResponse;->onPostMessage:Ljava/lang/String;

    .line 78
    invoke-static {v0, v1}, Lo/getDecoratedMeasuredHeight;->onMessageChannelReady(Lo/getDecoratedMeasuredHeight;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lo/getDecoratedMeasuredHeight$onNavigationEvent;->onPostMessage:Lo/getDecoratedMeasuredHeight;

    invoke-static {v0}, Lo/getDecoratedMeasuredHeight;->onNavigationEvent(Lo/getDecoratedMeasuredHeight;)Lo/setActive;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lo/getDecoratedMeasuredHeight$onNavigationEvent;->onPostMessage:Lo/getDecoratedMeasuredHeight;

    invoke-static {v0, p1}, Lo/getDecoratedMeasuredHeight;->extraCallback(Lo/getDecoratedMeasuredHeight;Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationsResponse;)V

    const/4 p1, 0x3

    new-array v0, p1, [Lo/addWrite;

    .line 82
    iget-object v1, p0, Lo/getDecoratedMeasuredHeight$onNavigationEvent;->onPostMessage:Lo/getDecoratedMeasuredHeight;

    invoke-static {v1}, Lo/getDecoratedMeasuredHeight;->extraCallback(Lo/getDecoratedMeasuredHeight;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3043
    new-instance v4, Lo/addWrite;

    const-string v5, "category_list"

    invoke-direct {v4, v5, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v3

    .line 83
    iget-object v1, p0, Lo/getDecoratedMeasuredHeight$onNavigationEvent;->onPostMessage:Lo/getDecoratedMeasuredHeight;

    .line 4043
    iget-object v1, v1, Lo/getDecoratedMeasuredHeight;->asBinder:Ljava/util/LinkedHashSet;

    .line 83
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 5043
    new-instance v3, Lo/addWrite;

    const-string v4, "loaded_notifications_count"

    invoke-direct {v3, v4, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v2

    const/4 v1, 0x2

    .line 84
    iget-object v2, p0, Lo/getDecoratedMeasuredHeight$onNavigationEvent;->onPostMessage:Lo/getDecoratedMeasuredHeight;

    invoke-static {v2}, Lo/getDecoratedMeasuredHeight;->onPostMessage(Lo/getDecoratedMeasuredHeight;)Ljava/lang/String;

    move-result-object v2

    .line 6043
    new-instance v3, Lo/addWrite;

    const-string v4, "max_loaded_notification_age"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    const-string v1, "pairs"

    .line 81
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "notification_page_data_load"

    .line 81
    invoke-static {p1, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    goto :goto_2

    .line 86
    :cond_0
    iget-object p1, p0, Lo/getDecoratedMeasuredHeight$onNavigationEvent;->onPostMessage:Lo/getDecoratedMeasuredHeight;

    .line 7043
    iget-object p1, p1, Lo/getDecoratedMeasuredHeight;->asBinder:Ljava/util/LinkedHashSet;

    .line 86
    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    if-eqz v2, :cond_6

    .line 87
    iget-object p1, p0, Lo/getDecoratedMeasuredHeight$onNavigationEvent;->onPostMessage:Lo/getDecoratedMeasuredHeight;

    invoke-static {p1}, Lo/getDecoratedMeasuredHeight;->onMessageChannelReady(Lo/getDecoratedMeasuredHeight;)Lo/setActive;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 88
    sget-object v2, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    sget-object p1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1e

    invoke-static/range {v2 .. v8}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    goto :goto_2

    .line 90
    :cond_3
    instance-of p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz p1, :cond_6

    .line 91
    iget-object p1, p0, Lo/getDecoratedMeasuredHeight$onNavigationEvent;->onPostMessage:Lo/getDecoratedMeasuredHeight;

    .line 8043
    iget-object p1, p1, Lo/getDecoratedMeasuredHeight;->asBinder:Ljava/util/LinkedHashSet;

    .line 91
    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_1
    if-eqz v2, :cond_6

    .line 92
    iget-object p1, p0, Lo/getDecoratedMeasuredHeight$onNavigationEvent;->onPostMessage:Lo/getDecoratedMeasuredHeight;

    invoke-static {p1}, Lo/getDecoratedMeasuredHeight;->onMessageChannelReady(Lo/getDecoratedMeasuredHeight;)Lo/setActive;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 93
    sget-object v2, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    sget-object p1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1e

    invoke-static/range {v2 .. v8}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    .line 96
    :cond_6
    :goto_2
    iget-object p1, p0, Lo/getDecoratedMeasuredHeight$onNavigationEvent;->onPostMessage:Lo/getDecoratedMeasuredHeight;

    invoke-static {p1}, Lo/getDecoratedMeasuredHeight;->ICustomTabsCallback(Lo/getDecoratedMeasuredHeight;)V

    return-void
.end method
