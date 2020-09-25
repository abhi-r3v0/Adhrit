.class public final Lo/animateThumbToCheckedState;
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
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u0008\u0010\u000f\u001a\u00020\u000cH\u0002J\u0008\u0010\u0010\u001a\u00020\u000cH\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/data/repository/maintainence/MaintenanceManager;",
        "",
        "()V",
        "maintenanceEndExecutable",
        "Ljava/io/Closeable;",
        "underMaintenanceStatus",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "getUnderMaintenanceStatus",
        "()Landroidx/lifecycle/MutableLiveData;",
        "underMaintenanceTimeState",
        "attach",
        "",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "processLpVariables",
        "updateMaintenance",
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
.field private static final ICustomTabsCallback:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final extraCallback:Lo/animateThumbToCheckedState;

.field private static onNavigationEvent:Ljava/io/Closeable;

.field private static final onPostMessage:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lo/animateThumbToCheckedState;

    invoke-direct {v0}, Lo/animateThumbToCheckedState;-><init>()V

    sput-object v0, Lo/animateThumbToCheckedState;->extraCallback:Lo/animateThumbToCheckedState;

    .line 19
    new-instance v0, Lo/animateThumbToCheckedState$onTransact;

    invoke-direct {v0}, Lo/animateThumbToCheckedState$onTransact;-><init>()V

    check-cast v0, Lo/setActive;

    sput-object v0, Lo/animateThumbToCheckedState;->onPostMessage:Lo/setActive;

    .line 29
    new-instance v0, Lo/MediaControllerCompatApi24$TransportControls;

    invoke-direct {v0}, Lo/MediaControllerCompatApi24$TransportControls;-><init>()V

    .line 30
    sget-object v1, Lo/animateThumbToCheckedState;->onPostMessage:Lo/setActive;

    check-cast v1, Landroidx/lifecycle/LiveData;

    sget-object v2, Lo/animateThumbToCheckedState$extraCallback;->onPostMessage:Lo/animateThumbToCheckedState$extraCallback;

    check-cast v2, Lo/setPlaybackToRemote;

    invoke-virtual {v0, v1, v2}, Lo/MediaControllerCompatApi24$TransportControls;->onMessageChannelReady(Landroidx/lifecycle/LiveData;Lo/setPlaybackToRemote;)V

    .line 33
    sget-object v1, Lcom/dreamplug/utils/health/Health;->onMessageChannelReady:Lcom/dreamplug/utils/health/Health;

    sget-object v1, Lcom/dreamplug/utils/health/Health$onPostMessage;->onTransact:Lcom/dreamplug/utils/health/Health$onPostMessage;

    invoke-static {v1}, Lcom/dreamplug/utils/health/Health;->onMessageChannelReady(Lcom/dreamplug/utils/health/Health$onPostMessage;)Lo/setActive;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LiveData;

    sget-object v2, Lo/animateThumbToCheckedState$onNavigationEvent;->onNavigationEvent:Lo/animateThumbToCheckedState$onNavigationEvent;

    check-cast v2, Lo/setPlaybackToRemote;

    invoke-virtual {v0, v1, v2}, Lo/MediaControllerCompatApi24$TransportControls;->onMessageChannelReady(Landroidx/lifecycle/LiveData;Lo/setPlaybackToRemote;)V

    .line 29
    check-cast v0, Lo/setActive;

    sput-object v0, Lo/animateThumbToCheckedState;->ICustomTabsCallback:Lo/setActive;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic extraCallback()Lo/setActive;
    .locals 1

    .line 15
    sget-object v0, Lo/animateThumbToCheckedState;->onPostMessage:Lo/setActive;

    return-object v0
.end method

.method public static extraCallback(Lo/onSessionEvent;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    sget-object v0, Lo/animateThumbToCheckedState;->ICustomTabsCallback:Lo/setActive;

    move-object v1, p0

    check-cast v1, Lo/toLegacyStreamType;

    new-instance v2, Lo/animateThumbToCheckedState$onMessageChannelReady;

    invoke-direct {v2, p0}, Lo/animateThumbToCheckedState$onMessageChannelReady;-><init>(Lo/onSessionEvent;)V

    check-cast v2, Lo/setPlaybackToRemote;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 88
    invoke-virtual {p0}, Lo/getMediaDescription;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    new-instance v1, Lcom/dreamplug/androidapp/data/repository/maintainence/MaintenanceManager$attach$2;

    invoke-direct {v1, p0}, Lcom/dreamplug/androidapp/data/repository/maintainence/MaintenanceManager$attach$2;-><init>(Lo/onSessionEvent;)V

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    return-void
.end method

.method public static final synthetic onMessageChannelReady()V
    .locals 2

    .line 4040
    sget-object v0, Lo/animateThumbToCheckedState;->onPostMessage:Lo/setActive;

    .line 4320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 4321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4040
    :goto_0
    check-cast v0, Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/dreamplug/utils/health/Health;->onMessageChannelReady:Lcom/dreamplug/utils/health/Health;

    sget-object v0, Lcom/dreamplug/utils/health/Health$onPostMessage;->onTransact:Lcom/dreamplug/utils/health/Health$onPostMessage;

    invoke-static {v0}, Lcom/dreamplug/utils/health/Health;->extraCallback(Lcom/dreamplug/utils/health/Health$onPostMessage;)Lcom/dreamplug/utils/health/Health$ServiceStatus;

    move-result-object v0

    invoke-static {v0}, Lo/extraCallback;->onPostMessage(Lcom/dreamplug/utils/health/Health$ServiceStatus;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 4041
    :goto_2
    sget-object v1, Lo/animateThumbToCheckedState;->ICustomTabsCallback:Lo/setActive;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method public static onNavigationEvent()Lo/setActive;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setActive<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 29
    sget-object v0, Lo/animateThumbToCheckedState;->ICustomTabsCallback:Lo/setActive;

    return-object v0
.end method

.method public static final synthetic onPostMessage()V
    .locals 14

    .line 1045
    sget-object v0, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 2000
    sget-object v0, Lo/isInLayout;->ICustomTabsCallback:Lo/isRemoving;

    sget-object v1, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 1046
    sget-object v2, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 3000
    sget-object v2, Lo/isInLayout;->onTransact:Lo/isRemoving;

    sget-object v3, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 1048
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const-string v5, "Calendar.getInstance()"

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 1049
    sget-object v8, Lo/animateThumbToCheckedState;->onNavigationEvent:Ljava/io/Closeable;

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/io/Closeable;->close()V

    .line 1050
    :cond_0
    sget-object v8, Lo/animateThumbToCheckedState;->onPostMessage:Lo/setActive;

    const-string v9, "command"

    const-wide/16 v10, 0x0

    cmp-long v12, v0, v10

    if-lez v12, :cond_1

    cmp-long v13, v2, v10

    if-lez v13, :cond_1

    cmp-long v13, v0, v4

    if-gez v13, :cond_1

    cmp-long v13, v2, v4

    if-lez v13, :cond_1

    sub-long/2addr v2, v4

    .line 1055
    sget-object v0, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    mul-long v2, v2, v6

    sget-object v0, Lo/animateThumbToCheckedState$ICustomTabsCallback;->ICustomTabsCallback:Lo/animateThumbToCheckedState$ICustomTabsCallback;

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3018
    new-instance v1, Lo/updateItemAt$extraCallback;

    invoke-direct {v1, v0}, Lo/updateItemAt$extraCallback;-><init>(Lo/getServerTime;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-static {v2, v3, v1}, Lo/updateItemAt;->onPostMessage(JLjava/lang/Runnable;)Ljava/io/Closeable;

    move-result-object v0

    .line 1055
    sput-object v0, Lo/animateThumbToCheckedState;->onNavigationEvent:Ljava/io/Closeable;

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-lez v12, :cond_2

    cmp-long v12, v2, v10

    if-lez v12, :cond_2

    cmp-long v2, v0, v4

    if-lez v2, :cond_2

    sub-long/2addr v0, v4

    .line 1064
    sget-object v2, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    mul-long v0, v0, v6

    sget-object v2, Lo/animateThumbToCheckedState$onPostMessage;->extraCallback:Lo/animateThumbToCheckedState$onPostMessage;

    check-cast v2, Lo/getServerTime;

    invoke-static {v2, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4018
    new-instance v3, Lo/updateItemAt$extraCallback;

    invoke-direct {v3, v2}, Lo/updateItemAt$extraCallback;-><init>(Lo/getServerTime;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-static {v0, v1, v3}, Lo/updateItemAt;->onPostMessage(JLjava/lang/Runnable;)Ljava/io/Closeable;

    move-result-object v0

    .line 1064
    sput-object v0, Lo/animateThumbToCheckedState;->onNavigationEvent:Ljava/io/Closeable;

    :cond_2
    const/4 v0, 0x0

    .line 1050
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method
