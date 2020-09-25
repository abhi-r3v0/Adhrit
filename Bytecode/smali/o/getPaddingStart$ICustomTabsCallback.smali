.class public final Lo/getPaddingStart$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getPaddingStart;->ICustomTabsCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeNotificationsResponse;",
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
        "com/dreamplug/fabrik/ui/notificationCentre/BadgeNotificationDataRepository$refreshBadges$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeNotificationsResponse;",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeNotificationsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_0

    .line 33
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 33
    check-cast p1, Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeNotificationsResponse;

    if-eqz p1, :cond_0

    .line 35
    sget-object v0, Lo/getPaddingStart;->extraCallback:Lo/getPaddingStart;

    invoke-static {}, Lo/getPaddingStart;->onPostMessage()Lo/setActive;

    move-result-object v0

    sget-object v1, Lo/getPaddingStart;->extraCallback:Lo/getPaddingStart;

    invoke-static {p1}, Lo/getPaddingStart;->onMessageChannelReady(Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeNotificationsResponse;)Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeNotificationsResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    const/4 v0, 0x2

    new-array v1, v0, [Lo/addWrite;

    const/4 v2, 0x0

    .line 37
    sget-object v3, Lo/getPaddingStart;->extraCallback:Lo/getPaddingStart;

    invoke-static {p1}, Lo/getPaddingStart;->ICustomTabsCallback(Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeNotificationsResponse;)Ljava/lang/String;

    move-result-object p1

    .line 1043
    new-instance v3, Lo/addWrite;

    const-string v4, "badge_list"

    invoke-direct {v3, v4, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const/4 p1, 0x1

    .line 38
    sget-object v2, Lo/getPaddingStart;->extraCallback:Lo/getPaddingStart;

    invoke-static {}, Lo/getPaddingStart;->onNavigationEvent()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 2043
    new-instance v3, Lo/addWrite;

    const-string v4, "first_load"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, p1

    const-string p1, "pairs"

    .line 36
    invoke-static {v1, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2105
    new-instance p1, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "app_badge_load"

    .line 36
    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 40
    sget-object p1, Lo/getPaddingStart;->extraCallback:Lo/getPaddingStart;

    invoke-static {}, Lo/getPaddingStart;->onMessageChannelReady()V

    :cond_0
    return-void
.end method
