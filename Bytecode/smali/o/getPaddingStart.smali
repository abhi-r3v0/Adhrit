.class public final Lo/getPaddingStart;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0005H\u0002J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0013\u001a\u00020\u0005H\u0002J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0015J\u0006\u0010\u0019\u001a\u00020\u0017R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000c\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeNotificationDataRepository;",
        "",
        "()V",
        "_badgeData",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeNotificationsResponse;",
        "badgeData",
        "Landroidx/lifecycle/LiveData;",
        "getBadgeData",
        "()Landroidx/lifecycle/LiveData;",
        "firstLoad",
        "",
        "notificationService",
        "Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationCentreService;",
        "getNotificationService",
        "()Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationCentreService;",
        "notificationService$delegate",
        "Lkotlin/Lazy;",
        "filterInvalidTime",
        "resp",
        "getBadgeList",
        "",
        "postBadgeNotificationAck",
        "",
        "externalId",
        "refreshBadges",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static ICustomTabsCallback:Z

.field public static final extraCallback:Lo/getPaddingStart;

.field private static final onNavigationEvent:Lo/isSameListener;

.field private static final onPostMessage:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeNotificationsResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lo/getPaddingStart;

    invoke-direct {v0}, Lo/getPaddingStart;-><init>()V

    sput-object v0, Lo/getPaddingStart;->extraCallback:Lo/getPaddingStart;

    .line 20
    new-instance v0, Lo/setActive;

    invoke-direct {v0}, Lo/setActive;-><init>()V

    sput-object v0, Lo/getPaddingStart;->onPostMessage:Lo/setActive;

    .line 21
    sget-object v0, Lo/getPaddingStart$onMessageChannelReady;->ICustomTabsCallback:Lo/getPaddingStart$onMessageChannelReady;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 21
    sput-object v1, Lo/getPaddingStart;->onNavigationEvent:Lo/isSameListener;

    const/4 v0, 0x1

    .line 25
    sput-boolean v0, Lo/getPaddingStart;->ICustomTabsCallback:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeNotificationsResponse;)Ljava/lang/String;
    .locals 4

    .line 5059
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6009
    iget-object p0, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeNotificationsResponse;->onMessageChannelReady:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 5060
    check-cast p0, Ljava/lang/Iterable;

    .line 5084
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/fabrik/ui/notificationCentre/Badges;

    .line 5061
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6017
    iget-object v3, v1, Lcom/dreamplug/fabrik/ui/notificationCentre/Badges;->onMessageChannelReady:Ljava/lang/String;

    .line 5061
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6019
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/notificationCentre/Badges;->onNavigationEvent:Ljava/lang/String;

    .line 5061
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5063
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "arrayList.toString()"

    invoke-static {p0, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static extraCallback()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeNotificationsResponse;",
            ">;"
        }
    .end annotation

    .line 19
    sget-object v0, Lo/getPaddingStart;->onPostMessage:Lo/setActive;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public static final synthetic onMessageChannelReady(Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeNotificationsResponse;)Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeNotificationsResponse;
    .locals 7

    .line 4049
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5009
    iget-object p0, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeNotificationsResponse;->onMessageChannelReady:Ljava/util/List;

    if-eqz p0, :cond_2

    .line 4050
    check-cast p0, Ljava/lang/Iterable;

    .line 4082
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/fabrik/ui/notificationCentre/Badges;

    .line 5025
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/notificationCentre/Badges;->onTransact:Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 4051
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 4052
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4055
    :cond_2
    new-instance p0, Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeNotificationsResponse;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeNotificationsResponse;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static final synthetic onMessageChannelReady()V
    .locals 1

    const/4 v0, 0x0

    .line 16
    sput-boolean v0, Lo/getPaddingStart;->ICustomTabsCallback:Z

    return-void
.end method

.method public static final synthetic onNavigationEvent()Z
    .locals 1

    .line 16
    sget-boolean v0, Lo/getPaddingStart;->ICustomTabsCallback:Z

    return v0
.end method

.method public static final synthetic onPostMessage()Lo/setActive;
    .locals 1

    .line 16
    sget-object v0, Lo/getPaddingStart;->onPostMessage:Lo/setActive;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 3

    .line 28
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 1000
    sget-object v0, Lo/setTrackTintMode;->extraCommand:Lo/setTitleTextColor;

    sget-object v1, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    sget-object v0, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 2000
    sget-object v0, Lo/isInLayout;->onLoadChildren:Lo/isAdded;

    sget-object v1, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v2, 0x54

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3000
    sget-object v0, Lo/getPaddingStart;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ignoreView;

    .line 29
    invoke-interface {v0}, Lo/ignoreView;->onPostMessage()Lo/clearScrap;

    move-result-object v0

    .line 30
    new-instance v1, Lo/getPaddingStart$ICustomTabsCallback;

    invoke-direct {v1}, Lo/getPaddingStart$ICustomTabsCallback;-><init>()V

    check-cast v1, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    :cond_0
    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;)V
    .locals 2

    const-string v0, "externalId"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4000
    sget-object v0, Lo/getPaddingStart;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ignoreView;

    .line 67
    invoke-interface {v0, p1}, Lo/ignoreView;->onMessageChannelReady(Ljava/lang/String;)Lo/clearScrap;

    move-result-object v0

    .line 68
    new-instance v1, Lo/getPaddingStart$extraCallback;

    invoke-direct {v1, p1}, Lo/getPaddingStart$extraCallback;-><init>(Ljava/lang/String;)V

    check-cast v1, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void
.end method
