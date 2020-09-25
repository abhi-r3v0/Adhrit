.class public Landroidx/work/impl/workers/DiagnosticsWorker;
.super Landroidx/work/Worker;
.source ""


# static fields
.field private static final extraCallback:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DiagnosticsWrkr"

    .line 49
    invoke-static {v0}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/workers/DiagnosticsWorker;->extraCallback:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method private static extraCallback(Lo/onConfigurationChanged;Lo/findViewById;Lo/setTheme;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onConfigurationChanged;",
            "Lo/findViewById;",
            "Lo/setTheme;",
            "Ljava/util/List<",
            "Lo/onDestroy;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    const-string v1, "Job Id"

    goto :goto_0

    :cond_0
    const-string v1, "Alarm Id"

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "\n Id \t Class Name\t %s\t State\t Unique Name\t Tags\t"

    .line 95
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/onDestroy;

    const/4 v2, 0x0

    .line 100
    iget-object v3, v1, Lo/onDestroy;->extraCallback:Ljava/lang/String;

    invoke-interface {p2, v3}, Lo/setTheme;->extraCallback(Ljava/lang/String;)Lo/getSupportActionBar;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 102
    iget v2, v3, Lo/getSupportActionBar;->onMessageChannelReady:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 104
    :cond_1
    iget-object v3, v1, Lo/onDestroy;->extraCallback:Ljava/lang/String;

    invoke-interface {p0, v3}, Lo/onConfigurationChanged;->onMessageChannelReady(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 105
    iget-object v4, v1, Lo/onDestroy;->extraCallback:Ljava/lang/String;

    invoke-interface {p1, v4}, Lo/findViewById;->extraCallback(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    const-string v5, ","

    .line 108
    invoke-static {v5, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 110
    invoke-static {v5, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 106
    invoke-static {v1, v3, v2, v4}, Landroidx/work/impl/workers/DiagnosticsWorker;->onMessageChannelReady(Lo/onDestroy;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 113
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static onMessageChannelReady(Lo/onDestroy;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 122
    iget-object v1, p0, Lo/onDestroy;->extraCallback:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/onDestroy;->onNavigationEvent:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    iget-object p0, p0, Lo/onDestroy;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    .line 127
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x3

    aput-object p0, v0, p2

    const/4 p0, 0x4

    aput-object p1, v0, p0

    const/4 p0, 0x5

    aput-object p3, v0, p0

    const-string p0, "\n%s\t %s\t %s\t %s\t %s\t %s\t"

    .line 122
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final extraCallback()Landroidx/work/ListenableWorker$ICustomTabsCallback;
    .locals 11

    .line 1098
    iget-object v0, p0, Landroidx/work/ListenableWorker;->onPostMessage:Landroid/content/Context;

    .line 58
    invoke-static {v0}, Lo/PlaybackStateCompat$RepeatMode;->onMessageChannelReady(Landroid/content/Context;)Lo/PlaybackStateCompat$RepeatMode;

    move-result-object v0

    .line 1311
    iget-object v0, v0, Lo/PlaybackStateCompat$RepeatMode;->extraCallback:Landroidx/work/impl/WorkDatabase;

    .line 60
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->asInterface()Lo/onPostResume;

    move-result-object v1

    .line 61
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->warmup()Lo/onConfigurationChanged;

    move-result-object v2

    .line 62
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->onTransact()Lo/findViewById;

    move-result-object v3

    .line 63
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->ICustomTabsCallback$Stub()Lo/setTheme;

    move-result-object v0

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 65
    invoke-interface {v1, v4, v5}, Lo/onPostResume;->onNavigationEvent(J)Ljava/util/List;

    move-result-object v4

    .line 66
    invoke-interface {v1}, Lo/onPostResume;->extraCallback()Ljava/util/List;

    move-result-object v5

    .line 67
    invoke-interface {v1}, Lo/onPostResume;->onNavigationEvent()Ljava/util/List;

    move-result-object v1

    .line 69
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    .line 70
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v6

    sget-object v8, Landroidx/work/impl/workers/DiagnosticsWorker;->extraCallback:Ljava/lang/String;

    new-array v9, v7, [Ljava/lang/Throwable;

    const-string v10, "Recently completed work:\n\n"

    invoke-virtual {v6, v8, v10, v9}, Lo/setActiveQueueItemId;->extraCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 71
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v6

    sget-object v8, Landroidx/work/impl/workers/DiagnosticsWorker;->extraCallback:Ljava/lang/String;

    .line 72
    invoke-static {v2, v3, v0, v4}, Landroidx/work/impl/workers/DiagnosticsWorker;->extraCallback(Lo/onConfigurationChanged;Lo/findViewById;Lo/setTheme;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    new-array v9, v7, [Ljava/lang/Throwable;

    .line 71
    invoke-virtual {v6, v8, v4, v9}, Lo/setActiveQueueItemId;->extraCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 74
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 75
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v4

    sget-object v6, Landroidx/work/impl/workers/DiagnosticsWorker;->extraCallback:Ljava/lang/String;

    new-array v8, v7, [Ljava/lang/Throwable;

    const-string v9, "Running work:\n\n"

    invoke-virtual {v4, v6, v9, v8}, Lo/setActiveQueueItemId;->extraCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 76
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v4

    sget-object v6, Landroidx/work/impl/workers/DiagnosticsWorker;->extraCallback:Ljava/lang/String;

    invoke-static {v2, v3, v0, v5}, Landroidx/work/impl/workers/DiagnosticsWorker;->extraCallback(Lo/onConfigurationChanged;Lo/findViewById;Lo/setTheme;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    new-array v8, v7, [Ljava/lang/Throwable;

    invoke-virtual {v4, v6, v5, v8}, Lo/setActiveQueueItemId;->extraCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 78
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 79
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v4

    sget-object v5, Landroidx/work/impl/workers/DiagnosticsWorker;->extraCallback:Ljava/lang/String;

    new-array v6, v7, [Ljava/lang/Throwable;

    const-string v8, "Enqueued work:\n\n"

    invoke-virtual {v4, v5, v8, v6}, Lo/setActiveQueueItemId;->extraCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 80
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v4

    sget-object v5, Landroidx/work/impl/workers/DiagnosticsWorker;->extraCallback:Ljava/lang/String;

    .line 81
    invoke-static {v2, v3, v0, v1}, Landroidx/work/impl/workers/DiagnosticsWorker;->extraCallback(Lo/onConfigurationChanged;Lo/findViewById;Lo/setTheme;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Throwable;

    .line 80
    invoke-virtual {v4, v5, v0, v1}, Lo/setActiveQueueItemId;->extraCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 1334
    :cond_2
    new-instance v0, Landroidx/work/ListenableWorker$ICustomTabsCallback$ICustomTabsCallback;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$ICustomTabsCallback$ICustomTabsCallback;-><init>()V

    return-object v0
.end method
