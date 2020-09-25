.class public final Lo/hasSubMenu$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/hasSubMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u001b\u001a\u00020\u001cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0018\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/dreamplug/river/NotificationDetector;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "hasFnsNotification",
        "",
        "getHasFnsNotification",
        "()Z",
        "setHasFnsNotification",
        "(Z)V",
        "notificationCount",
        "",
        "getNotificationCount",
        "()I",
        "setNotificationCount",
        "(I)V",
        "notificationId",
        "getNotificationId",
        "()Ljava/lang/Integer;",
        "setNotificationId",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "notificationManager",
        "Landroid/app/NotificationManager;",
        "tryCancel",
        "",
        "river_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/content/Context;

.field public extraCallback:I

.field public onMessageChannelReady:Ljava/lang/Integer;

.field public final onNavigationEvent:Landroid/app/NotificationManager;

.field public onPostMessage:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/hasSubMenu$ICustomTabsCallback;->ICustomTabsCallback:Landroid/content/Context;

    .line 1037
    const-class v0, Landroid/app/NotificationManager;

    invoke-static {p1, v0}, Lo/fromParcel;->onPostMessage(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lo/hasSubMenu$ICustomTabsCallback;->onNavigationEvent:Landroid/app/NotificationManager;

    const/4 p1, -0x1

    .line 1013
    iput p1, p0, Lo/hasSubMenu$ICustomTabsCallback;->extraCallback:I

    .line 1018
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_6

    .line 1019
    iget-object p1, p0, Lo/hasSubMenu$ICustomTabsCallback;->onNavigationEvent:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    .line 1020
    array-length v0, p1

    iput v0, p0, Lo/hasSubMenu$ICustomTabsCallback;->extraCallback:I

    const-string v0, "activeNotifications"

    .line 1021
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1038
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_3

    aget-object v4, p1, v2

    .line 1022
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    const-string v7, "it"

    if-lt v5, v6, :cond_1

    .line 1023
    invoke-static {v4, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    const-string v6, "it.notification"

    invoke-static {v5, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "system_sync"

    invoke-static {v5, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1

    .line 1025
    :cond_1
    invoke-static {v4, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    sget-object v6, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget v6, Lo/getTargetPosition$onMessageChannelReady;->notification_message:I

    invoke-static {v6}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    :goto_1
    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move-object v4, v3

    :goto_2
    if-eqz v4, :cond_4

    .line 1028
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_4
    iput-object v3, p0, Lo/hasSubMenu$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/Integer;

    if-eqz v4, :cond_5

    const/4 v1, 0x1

    .line 1029
    :cond_5
    iput-boolean v1, p0, Lo/hasSubMenu$ICustomTabsCallback;->onPostMessage:Z

    :cond_6
    return-void
.end method
