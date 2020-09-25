.class final Lo/createId;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final context:Landroid/content/Context;

.field private final networkIoExecutor:Ljava/util/concurrent/Executor;

.field private final params:Lo/ProcMapEntryParser;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/ProcMapEntryParser;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lo/createId;->networkIoExecutor:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p1, p0, Lo/createId;->context:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lo/createId;->params:Lo/ProcMapEntryParser;

    return-void
.end method

.method private isAppForeground()Z
    .locals 6

    .line 6
    iget-object v0, p0, Lo/createId;->context:Landroid/content/Context;

    const-string v1, "keyguard"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 8
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1012
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const-wide/16 v4, 0xa

    .line 11
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 12
    :cond_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 13
    iget-object v2, p0, Lo/createId;->context:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 14
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 16
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 17
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v0, :cond_3

    .line 18
    iget v0, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-ne v0, v2, :cond_4

    return v3

    :cond_4
    return v1
.end method

.method private showNotification(Lo/NativeFileUtils$extraCallback;)V
    .locals 3

    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x3

    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Showing notification"

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    iget-object v0, p0, Lo/createId;->context:Landroid/content/Context;

    const-string v1, "notification"

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 59
    iget-object v1, p1, Lo/NativeFileUtils$extraCallback;->tag:Ljava/lang/String;

    iget v2, p1, Lo/NativeFileUtils$extraCallback;->id:I

    iget-object p1, p1, Lo/NativeFileUtils$extraCallback;->notificationBuilder:Lo/setSubtitle$ICustomTabsCallback;

    invoke-virtual {p1}, Lo/setSubtitle$ICustomTabsCallback;->extraCallback()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private startImageDownloadInBackground()Lo/getFileSHA;
    .locals 2

    .line 31
    iget-object v0, p0, Lo/createId;->params:Lo/ProcMapEntryParser;

    const-string v1, "gcm.n.image"

    invoke-virtual {v0, v1}, Lo/ProcMapEntryParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {v0}, Lo/getFileSHA;->create(Ljava/lang/String;)Lo/getFileSHA;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v1, p0, Lo/createId;->networkIoExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Lo/getFileSHA;->start(Ljava/util/concurrent/Executor;)V

    :cond_0
    return-object v0
.end method

.method private waitForAndApplyImageDownload(Lo/setSubtitle$ICustomTabsCallback;Lo/getFileSHA;)V
    .locals 5

    const-string v0, "FirebaseMessaging"

    if-nez p2, :cond_0

    return-void

    .line 39
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lo/getFileSHA;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3, v4}, Lo/clearInstancesForTest;->ICustomTabsCallback(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 40
    invoke-virtual {p1, v1}, Lo/setSubtitle$ICustomTabsCallback;->onMessageChannelReady(Landroid/graphics/Bitmap;)Lo/setSubtitle$ICustomTabsCallback;

    .line 41
    new-instance v2, Lo/setSubtitle$onMessageChannelReady;

    invoke-direct {v2}, Lo/setSubtitle$onMessageChannelReady;-><init>()V

    invoke-virtual {v2, v1}, Lo/setSubtitle$onMessageChannelReady;->extraCallback(Landroid/graphics/Bitmap;)Lo/setSubtitle$onMessageChannelReady;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lo/setSubtitle$onMessageChannelReady;->onNavigationEvent(Landroid/graphics/Bitmap;)Lo/setSubtitle$onMessageChannelReady;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/setSubtitle$ICustomTabsCallback;->onMessageChannelReady(Lo/setSubtitle$onTransact;)Lo/setSubtitle$ICustomTabsCallback;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "Failed to download image in time, showing notification without it"

    .line 52
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p2}, Lo/getFileSHA;->close()V

    return-void

    :catch_1
    const-string p1, "Interrupted while downloading image, showing notification without it"

    .line 47
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p2}, Lo/getFileSHA;->close()V

    .line 49
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    return-void

    :catch_2
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x1a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Failed to download image: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method final handleNotification()Z
    .locals 4

    .line 21
    iget-object v0, p0, Lo/createId;->params:Lo/ProcMapEntryParser;

    const-string v1, "gcm.n.noui"

    invoke-virtual {v0, v1}, Lo/ProcMapEntryParser;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 23
    :cond_0
    invoke-direct {p0}, Lo/createId;->isAppForeground()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 25
    :cond_1
    invoke-direct {p0}, Lo/createId;->startImageDownloadInBackground()Lo/getFileSHA;

    move-result-object v0

    .line 26
    iget-object v2, p0, Lo/createId;->context:Landroid/content/Context;

    iget-object v3, p0, Lo/createId;->params:Lo/ProcMapEntryParser;

    .line 27
    invoke-static {v2, v3}, Lo/NativeFileUtils;->createNotificationInfo(Landroid/content/Context;Lo/ProcMapEntryParser;)Lo/NativeFileUtils$extraCallback;

    move-result-object v2

    .line 28
    iget-object v3, v2, Lo/NativeFileUtils$extraCallback;->notificationBuilder:Lo/setSubtitle$ICustomTabsCallback;

    invoke-direct {p0, v3, v0}, Lo/createId;->waitForAndApplyImageDownload(Lo/setSubtitle$ICustomTabsCallback;Lo/getFileSHA;)V

    .line 29
    invoke-direct {p0, v2}, Lo/createId;->showNotification(Lo/NativeFileUtils$extraCallback;)V

    return v1
.end method
