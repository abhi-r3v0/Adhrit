.class public final Lcom/dreamplug/river/RiverForeGroundWorker;
.super Landroidx/work/ListenableWorker;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/river/RiverForeGroundWorker$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 !2\u00020\u0001:\u0001!B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000b\u001a\u00020\u000cH\u0002J\u0008\u0010\r\u001a\u00020\u000eH\u0002J\u0008\u0010\u000f\u001a\u00020\u000cH\u0002J&\u0010\u0010\u001a\u00020\u000c2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0008\u0010\u0017\u001a\u00020\u000cH\u0016J\u000e\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0019H\u0016J*\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u001c2\u0018\u0008\u0002\u0010\u001d\u001a\u0012\u0012\u0004\u0012\u00020\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u001f\u0018\u00010\u001eH\u0002J*\u0010 \u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u001c2\u0018\u0008\u0002\u0010\u001d\u001a\u0012\u0012\u0004\u0012\u00020\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u001f\u0018\u00010\u001eH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/dreamplug/river/RiverForeGroundWorker;",
        "Landroidx/work/ListenableWorker;",
        "appContext",
        "Landroid/content/Context;",
        "params",
        "Landroidx/work/WorkerParameters;",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "debugFns",
        "",
        "jobEndCallback",
        "Ljava/lang/Runnable;",
        "createChannel",
        "",
        "createForegroundInfo",
        "Landroidx/work/ForegroundInfo;",
        "detectNotification",
        "finishJob",
        "completer",
        "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;",
        "Landroidx/work/ListenableWorker$Result;",
        "shouldShowNotification",
        "startTime",
        "",
        "onStopped",
        "startWork",
        "Lcom/google/common/util/concurrent/ListenableFuture;",
        "tagDebugEvent",
        "event",
        "",
        "attr",
        "",
        "",
        "tagEvent",
        "Companion",
        "river_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final asInterface:J

.field public static final extraCallback:Lcom/dreamplug/river/RiverForeGroundWorker$onNavigationEvent;

.field private static warmup:Z


# instance fields
.field private onMessageChannelReady:Ljava/lang/Runnable;

.field private final onRelationshipValidationResult:Landroid/content/Context;

.field private final onTransact:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dreamplug/river/RiverForeGroundWorker$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dreamplug/river/RiverForeGroundWorker$onNavigationEvent;-><init>(B)V

    sput-object v0, Lcom/dreamplug/river/RiverForeGroundWorker;->extraCallback:Lcom/dreamplug/river/RiverForeGroundWorker$onNavigationEvent;

    const-wide/16 v0, 0x3a98

    .line 239
    sput-wide v0, Lcom/dreamplug/river/RiverForeGroundWorker;->asInterface:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p1, p2}, Landroidx/work/ListenableWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p1, p0, Lcom/dreamplug/river/RiverForeGroundWorker;->onRelationshipValidationResult:Landroid/content/Context;

    .line 42
    sget-object p1, Lo/isPendingInitialRun;->onNavigationEvent:Lo/isPendingInitialRun;

    invoke-static {}, Lo/isPendingInitialRun;->asBinder()Z

    move-result p1

    iput-boolean p1, p0, Lcom/dreamplug/river/RiverForeGroundWorker;->onTransact:Z

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lcom/dreamplug/river/RiverForeGroundWorker;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/dreamplug/river/RiverForeGroundWorker;->onRelationshipValidationResult:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic extraCallback()J
    .locals 2

    const-wide/16 v0, 0x3a98

    return-wide v0
.end method

.method static synthetic extraCallback(Lcom/dreamplug/river/RiverForeGroundWorker;Ljava/lang/String;)V
    .locals 0

    .line 2107
    iget-boolean p0, p0, Lcom/dreamplug/river/RiverForeGroundWorker;->onTransact:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 2108
    invoke-static {p1, p0}, Lcom/dreamplug/river/RiverForeGroundWorker;->onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lcom/dreamplug/river/RiverForeGroundWorker;)Ljava/lang/Runnable;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/dreamplug/river/RiverForeGroundWorker;->onMessageChannelReady:Ljava/lang/Runnable;

    return-object p0
.end method

.method private static onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 113
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    .line 114
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "fns_time"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static {p0, p1}, Lo/replaceAll;->onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static final synthetic onNavigationEvent(Lcom/dreamplug/river/RiverForeGroundWorker;)Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;
    .locals 8

    .line 5098
    iget-object v0, p0, Landroidx/work/ListenableWorker;->onPostMessage:Landroid/content/Context;

    const-string v1, "applicationContext"

    .line 4196
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4197
    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget v1, Lo/getTargetPosition$onMessageChannelReady;->notification_title:I

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    .line 4198
    sget-object v2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget v2, Lo/getTargetPosition$onMessageChannelReady;->notification_message:I

    invoke-static {v2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v2

    .line 4204
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lo/getDuration;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v4, 0xbba

    const/high16 v5, 0x8000000

    .line 4202
    invoke-static {v0, v4, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const-string v4, "PendingIntent\n          \u2026                        )"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5226
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string/jumbo v5, "system_sync"

    const/16 v6, 0x1a

    if-lt v4, v6, :cond_1

    .line 6098
    iget-object p0, p0, Landroidx/work/ListenableWorker;->onPostMessage:Landroid/content/Context;

    const-string v4, "notification"

    .line 5227
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Landroid/app/NotificationManager;

    .line 5228
    new-instance v4, Landroid/app/NotificationChannel;

    const-string v6, "System sync"

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x2

    invoke-direct {v4, v5, v6, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v6, 0x0

    .line 5229
    invoke-virtual {v4, v6}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 5230
    invoke-virtual {p0, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_0

    .line 5227
    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4208
    :cond_1
    :goto_0
    new-instance p0, Lo/setSubtitle$ICustomTabsCallback;

    invoke-direct {p0, v0, v5}, Lo/setSubtitle$ICustomTabsCallback;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4209
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lo/setSubtitle$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/CharSequence;)Lo/setSubtitle$ICustomTabsCallback;

    move-result-object p0

    .line 4210
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lo/setSubtitle$ICustomTabsCallback;->onPostMessage(Ljava/lang/CharSequence;)Lo/setSubtitle$ICustomTabsCallback;

    move-result-object p0

    .line 4211
    invoke-virtual {p0, v2}, Lo/setSubtitle$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/CharSequence;)Lo/setSubtitle$ICustomTabsCallback;

    move-result-object p0

    .line 4212
    sget v0, Lo/getTargetPosition$onPostMessage;->notif_icon:I

    invoke-virtual {p0, v0}, Lo/setSubtitle$ICustomTabsCallback;->extraCallback(I)Lo/setSubtitle$ICustomTabsCallback;

    move-result-object p0

    .line 4213
    invoke-virtual {p0, v3}, Lo/setSubtitle$ICustomTabsCallback;->extraCallback(Landroid/app/PendingIntent;)Lo/setSubtitle$ICustomTabsCallback;

    move-result-object p0

    const/4 v0, 0x1

    .line 4214
    invoke-virtual {p0, v0}, Lo/setSubtitle$ICustomTabsCallback;->ICustomTabsCallback(Z)Lo/setSubtitle$ICustomTabsCallback;

    move-result-object p0

    .line 4215
    invoke-virtual {p0}, Lo/setSubtitle$ICustomTabsCallback;->extraCallback()Landroid/app/Notification;

    move-result-object p0

    .line 4216
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;-><init>(Landroid/app/Notification;)V

    return-object v0
.end method

.method public static final synthetic onNavigationEvent(Lcom/dreamplug/river/RiverForeGroundWorker;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 9107
    iget-boolean p0, p0, Lcom/dreamplug/river/RiverForeGroundWorker;->onTransact:Z

    if-eqz p0, :cond_0

    .line 9108
    invoke-static {p1, p2}, Lcom/dreamplug/river/RiverForeGroundWorker;->onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method static synthetic onNavigationEvent(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-static {p0, v0}, Lcom/dreamplug/river/RiverForeGroundWorker;->onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static final synthetic onPostMessage(Lcom/dreamplug/river/RiverForeGroundWorker;Ljava/lang/Runnable;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/dreamplug/river/RiverForeGroundWorker;->onMessageChannelReady:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic onPostMessage(Lcom/dreamplug/river/RiverForeGroundWorker;Lo/writeToParcel$ICustomTabsCallback;ZJ)V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const/16 v2, 0x9

    const-string v3, "RiverFGW:Adapter:finishJob"

    .line 6119
    invoke-static {v2, v3, v1}, Lo/frameInBuffer;->extraCallback(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 6334
    new-instance v1, Landroidx/work/ListenableWorker$ICustomTabsCallback$ICustomTabsCallback;

    invoke-direct {v1}, Landroidx/work/ListenableWorker$ICustomTabsCallback$ICustomTabsCallback;-><init>()V

    .line 6120
    invoke-virtual {p1, v1}, Lo/writeToParcel$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/Object;)Z

    .line 7107
    iget-boolean p1, p0, Lcom/dreamplug/river/RiverForeGroundWorker;->onTransact:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string p1, "debug_fns_finishJob_called"

    .line 7108
    invoke-static {p1, v1}, Lcom/dreamplug/river/RiverForeGroundWorker;->onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 6123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x3e8

    div-long/2addr p1, p3

    const/4 p3, 0x1

    new-array p4, p3, [Lo/addWrite;

    .line 6124
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 8043
    new-instance v4, Lo/addWrite;

    const-string v5, "duration"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, p4, v0

    const-string v3, "pairs"

    .line 6124
    invoke-static {p4, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8105
    new-instance v3, Ljava/util/HashMap;

    invoke-static {p3}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    invoke-static {v3, p4}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p4, "river_fns_stopped"

    .line 6124
    invoke-static {p4, v3}, Lcom/dreamplug/river/RiverForeGroundWorker;->onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;)V

    new-array p3, p3, [Ljava/lang/Object;

    .line 6125
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p3, v0

    const-string p1, "RiverFGW:Adapter:finishJob:notification-shown-for:%s"

    invoke-static {v2, p1, p3}, Lo/frameInBuffer;->extraCallback(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 6127
    :cond_1
    sget-object p1, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    invoke-static {}, Lo/updateItemAt;->onMessageChannelReady()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/dreamplug/river/RiverForeGroundWorker;->onMessageChannelReady:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6128
    sget-object p1, Lo/isPendingInitialRun;->onNavigationEvent:Lo/isPendingInitialRun;

    invoke-static {}, Lo/isPendingInitialRun;->asBinder()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8137
    :try_start_0
    sget-object p1, Lo/keepAll;->onMessageChannelReady:Lo/keepAll;

    check-cast p1, Lo/isFromUser;

    new-instance p2, Lcom/dreamplug/river/RiverForeGroundWorker$ICustomTabsCallback;

    invoke-direct {p2, p0, v1}, Lcom/dreamplug/river/RiverForeGroundWorker$ICustomTabsCallback;-><init>(Lcom/dreamplug/river/RiverForeGroundWorker;Lo/setSessionPersistenceKey;)V

    check-cast p2, Lo/nextTransactionOrder;

    const/4 p3, 0x3

    .line 9001
    invoke-static {p1, v1, v1, p2, p3}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(Lo/isFromUser;Lo/isZombied;Lo/getQueryParams;Lo/nextTransactionOrder;I)Lo/assertValidTrackedQuery;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-array p2, v0, [Ljava/lang/Object;

    const-string p3, "RiverFGW:detect"

    .line 8189
    invoke-static {p1, p3, p2}, Lo/frameInBuffer;->onPostMessage(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6131
    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/dreamplug/river/RiverForeGroundWorker;->onMessageChannelReady:Ljava/lang/Runnable;

    .line 6132
    sput-boolean v0, Lcom/dreamplug/river/RiverForeGroundWorker;->warmup:Z

    return-void
.end method

.method public static final synthetic onTransact()Z
    .locals 1

    .line 38
    sget-boolean v0, Lcom/dreamplug/river/RiverForeGroundWorker;->warmup:Z

    return v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/getBatteryLevel;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getBatteryLevel<",
            "Landroidx/work/ListenableWorker$ICustomTabsCallback;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 45
    sput-boolean v0, Lcom/dreamplug/river/RiverForeGroundWorker;->warmup:Z

    .line 1107
    iget-boolean v1, p0, Lcom/dreamplug/river/RiverForeGroundWorker;->onTransact:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const-string v2, "debug_fns_job_started"

    .line 1108
    invoke-static {v2, v1}, Lcom/dreamplug/river/RiverForeGroundWorker;->onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;)V

    .line 48
    :cond_0
    sget-object v1, Lo/isPendingInitialRun;->onNavigationEvent:Lo/isPendingInitialRun;

    invoke-static {}, Lo/isPendingInitialRun;->onNavigationEvent()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_SMS"

    invoke-static {v1, v2}, Lo/fromParcel;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 49
    :goto_0
    sget-object v3, Lo/isPendingInitialRun;->onNavigationEvent:Lo/isPendingInitialRun;

    invoke-static {}, Lo/isPendingInitialRun;->onMessageChannelReady()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0x9

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 56
    sget-boolean v6, Lcom/dreamplug/river/RiverForeGroundWorker;->warmup:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x3

    .line 1118
    iget-object v1, p0, Landroidx/work/ListenableWorker;->onNavigationEvent:Landroidx/work/WorkerParameters;

    .line 2098
    iget-object v1, v1, Landroidx/work/WorkerParameters;->onMessageChannelReady:Lo/PlaybackStateCompat$Builder;

    aput-object v1, v5, v0

    const-string v0, "RiverFGW:startWork:isJobRunning=%s,permission=%s,showNotification=%s,input=%s"

    .line 51
    invoke-static {v4, v0, v5}, Lo/frameInBuffer;->extraCallback(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 58
    new-instance v0, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;

    invoke-direct {v0, p0, v3}, Lcom/dreamplug/river/RiverForeGroundWorker$extraCallback;-><init>(Lcom/dreamplug/river/RiverForeGroundWorker;Z)V

    check-cast v0, Lo/writeToParcel$extraCallback;

    invoke-static {v0}, Lo/writeToParcel;->onPostMessage(Lo/writeToParcel$extraCallback;)Lo/getBatteryLevel;

    move-result-object v0

    const-string v1, "CallbackToFutureAdapter.\u2026}\n            }\n        }"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final onMessageChannelReady()V
    .locals 3

    .line 3107
    iget-boolean v0, p0, Lcom/dreamplug/river/RiverForeGroundWorker;->onTransact:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "debug_fns_onStopped_called"

    .line 3108
    invoke-static {v1, v0}, Lcom/dreamplug/river/RiverForeGroundWorker;->onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    const/16 v0, 0x9

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onStopped"

    .line 221
    invoke-static {v0, v2, v1}, Lo/frameInBuffer;->extraCallback(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 222
    invoke-super {p0}, Landroidx/work/ListenableWorker;->onMessageChannelReady()V

    return-void
.end method
