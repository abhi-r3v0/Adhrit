.class public final Lo/normalize;
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
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000e\u001a\u00020\u000fH\u0002J\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u0011R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u0008\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/dreamplug/river/alarm/RiverAlarmManager;",
        "",
        "()V",
        "alarmManager",
        "Landroid/app/AlarmManager;",
        "getAlarmManager",
        "()Landroid/app/AlarmManager;",
        "alarmManager$delegate",
        "Lkotlin/Lazy;",
        "riverAlarmService",
        "Lcom/dreamplug/river/alarm/RiverAlarmService;",
        "getRiverAlarmService",
        "()Lcom/dreamplug/river/alarm/RiverAlarmService;",
        "riverAlarmService$delegate",
        "getNextAlarmTime",
        "",
        "scheduleNextAlarm",
        "",
        "updateAlarmList",
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
.field private static final ICustomTabsCallback:Lo/isSameListener;

.field public static final onMessageChannelReady:Lo/normalize;

.field private static final onNavigationEvent:Lo/isSameListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Lo/normalize;

    invoke-direct {v0}, Lo/normalize;-><init>()V

    sput-object v0, Lo/normalize;->onMessageChannelReady:Lo/normalize;

    .line 23
    sget-object v0, Lo/normalize$ICustomTabsCallback;->ICustomTabsCallback:Lo/normalize$ICustomTabsCallback;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 23
    sput-object v2, Lo/normalize;->onNavigationEvent:Lo/isSameListener;

    .line 24
    sget-object v0, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    .line 86
    sget-object v0, Lo/normalize$extraCallback;->onMessageChannelReady:Lo/normalize$extraCallback;

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 86
    sput-object v1, Lo/normalize;->ICustomTabsCallback:Lo/isSameListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extraCallback()V
    .locals 4

    .line 28
    sget-object v0, Lo/addAll;->ICustomTabsCallback:Lo/addAll;

    check-cast v0, Landroid/os/Handler;

    .line 79
    new-instance v1, Lo/normalize$onNavigationEvent;

    invoke-direct {v1}, Lo/normalize$onNavigationEvent;-><init>()V

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    .line 81
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static onNavigationEvent()J
    .locals 6

    .line 66
    sget-object v0, Lo/setTargetPosition;->onRelationshipValidationResult:Lo/setTargetPosition;

    invoke-virtual {v0}, Lo/setTargetPosition;->onPostMessage()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lo/getSessionPersistenceKey;->extraCallback(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 67
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    goto :goto_0

    :cond_1
    const-wide/16 v1, -0x1

    :goto_0
    return-wide v1
.end method

.method public static final synthetic onPostMessage(Lo/normalize;)Lo/instantScrollToPosition;
    .locals 0

    .line 10000
    sget-object p0, Lo/normalize;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/instantScrollToPosition;

    return-object p0
.end method


# virtual methods
.method public final onPostMessage()V
    .locals 9

    .line 45
    invoke-static {}, Lo/normalize;->onNavigationEvent()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 46
    sget-object v2, Lo/setTargetPosition;->onRelationshipValidationResult:Lo/setTargetPosition;

    .line 2000
    sget-object v2, Lo/setTargetPosition;->onNavigationEvent:Lo/copyArray;

    sget-object v3, Lo/setTargetPosition;->onMessageChannelReady:[Lo/applyUserOverwrite;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lo/SortedListAdapterCallback;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    .line 48
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lo/isPendingInitialRun;->onNavigationEvent:Lo/isPendingInitialRun;

    invoke-static {}, Lo/isPendingInitialRun;->onNavigationEvent()Landroid/content/Context;

    move-result-object v3

    const-class v5, Lo/jumpTo;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    sget-object v3, Lo/isPendingInitialRun;->onNavigationEvent:Lo/isPendingInitialRun;

    invoke-static {}, Lo/isPendingInitialRun;->onNavigationEvent()Landroid/content/Context;

    move-result-object v3

    const/16 v5, 0x51e

    const/high16 v6, 0x8000000

    invoke-static {v3, v5, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 3000
    sget-object v3, Lo/normalize;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 50
    invoke-virtual {v3, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4000
    sget-object v3, Lo/normalize;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 51
    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 52
    sget-object v2, Lo/setTargetPosition;->onRelationshipValidationResult:Lo/setTargetPosition;

    .line 5000
    sget-object v2, Lo/setTargetPosition;->onNavigationEvent:Lo/copyArray;

    sget-object v3, Lo/setTargetPosition;->onMessageChannelReady:[Lo/applyUserOverwrite;

    aget-object v3, v3, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lo/SortedListAdapterCallback;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 53
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy.MM.dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 54
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "alarm_scheduled"

    const/4 v5, 0x2

    new-array v6, v5, [Lo/addWrite;

    const/4 v7, 0x0

    const-string/jumbo v8, "time"

    .line 56
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 5043
    new-instance v1, Lo/addWrite;

    invoke-direct {v1, v8, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v6, v7

    const-string/jumbo v0, "time_string"

    .line 6043
    new-instance v1, Lo/addWrite;

    invoke-direct {v1, v0, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v6, v4

    const-string v0, "pairs"

    .line 55
    invoke-static {v6, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6105
    new-instance v0, Ljava/util/HashMap;

    invoke-static {v5}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v6}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 55
    check-cast v0, Ljava/util/Map;

    invoke-static {v3, v0}, Lo/replaceAll;->onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 59
    sget-object v1, Lo/merge;->extraCallback:Lo/merge;

    check-cast v0, Ljava/lang/Throwable;

    const-string/jumbo v1, "throwable"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7023
    sget-object v1, Lo/merge;->onPostMessage:Lo/findSameItem;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lo/findSameItem;->onPostMessage(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
