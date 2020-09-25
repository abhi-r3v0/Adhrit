.class public final Lo/findSameItem$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/findSameItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Ljava/lang/Object;

.field private static volatile onNavigationEvent:Lo/findSameItem$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1032
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/findSameItem$extraCallback;->ICustomTabsCallback:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1008
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 1009
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 1010
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 1011
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    return-void
.end method

.method public static onPostMessage()Lo/findSameItem$extraCallback;
    .locals 2

    .line 1001
    sget-object v0, Lo/findSameItem$extraCallback;->onNavigationEvent:Lo/findSameItem$extraCallback;

    if-nez v0, :cond_1

    .line 1002
    sget-object v0, Lo/findSameItem$extraCallback;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 1003
    :try_start_0
    sget-object v1, Lo/findSameItem$extraCallback;->onNavigationEvent:Lo/findSameItem$extraCallback;

    if-nez v1, :cond_0

    .line 1004
    new-instance v1, Lo/findSameItem$extraCallback;

    invoke-direct {v1}, Lo/findSameItem$extraCallback;-><init>()V

    sput-object v1, Lo/findSameItem$extraCallback;->onNavigationEvent:Lo/findSameItem$extraCallback;

    .line 1005
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 1006
    :cond_1
    :goto_0
    sget-object v0, Lo/findSameItem$extraCallback;->onNavigationEvent:Lo/findSameItem$extraCallback;

    return-object v0
.end method


# virtual methods
.method public final extraCallback(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 0

    .line 1025
    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public final onMessageChannelReady(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 7

    .line 1024
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lo/findSameItem$extraCallback;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    return p1
.end method

.method public final onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 1

    .line 1015
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 1018
    :cond_0
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lo/getValueType;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    :goto_0
    if-eqz p2, :cond_1

    const-string p1, "ConnectionTracker"

    const-string p2, "Attempted to bind to a service in a STOPPED package."

    .line 1020
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1022
    :cond_1
    invoke-virtual {p1, p3, p4, p5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    return p1
.end method
