.class public Lo/newCachedSingleThreadExecutor;
.super Lo/setSessionActivity;
.source ""

# interfaces
.implements Lo/newTopicsSyncExecutor$onPostMessage;


# static fields
.field private static final ICustomTabsCallback:Ljava/lang/String;

.field private static onPostMessage:Lo/newCachedSingleThreadExecutor;


# instance fields
.field private ICustomTabsCallback$Stub:Z

.field extraCallback:Lo/newTopicsSyncExecutor;

.field public onMessageChannelReady:Landroid/os/Handler;

.field onNavigationEvent:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemFgService"

    .line 42
    invoke-static {v0}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/newCachedSingleThreadExecutor;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v0, 0x0

    .line 45
    sput-object v0, Lo/newCachedSingleThreadExecutor;->onPostMessage:Lo/newCachedSingleThreadExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lo/setSessionActivity;-><init>()V

    return-void
.end method

.method private ICustomTabsCallback()V
    .locals 4

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/newCachedSingleThreadExecutor;->onMessageChannelReady:Landroid/os/Handler;

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lo/newCachedSingleThreadExecutor;->onNavigationEvent:Landroid/app/NotificationManager;

    .line 96
    new-instance v0, Lo/newTopicsSyncExecutor;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/newTopicsSyncExecutor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/newCachedSingleThreadExecutor;->extraCallback:Lo/newTopicsSyncExecutor;

    .line 4189
    iget-object v1, v0, Lo/newTopicsSyncExecutor;->onRelationshipValidationResult:Lo/newTopicsSyncExecutor$onPostMessage;

    if-eqz v1, :cond_0

    .line 4190
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v1, Lo/newTopicsSyncExecutor;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Throwable;

    const-string v3, "A callback already exists."

    invoke-virtual {v0, v1, v3, v2}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void

    .line 4193
    :cond_0
    iput-object p0, v0, Lo/newTopicsSyncExecutor;->onRelationshipValidationResult:Lo/newTopicsSyncExecutor$onPostMessage;

    return-void
.end method

.method public static extraCallback()Lo/newCachedSingleThreadExecutor;
    .locals 1

    .line 170
    sget-object v0, Lo/newCachedSingleThreadExecutor;->onPostMessage:Lo/newCachedSingleThreadExecutor;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(IILandroid/app/Notification;)V
    .locals 2

    .line 133
    iget-object v0, p0, Lo/newCachedSingleThreadExecutor;->onMessageChannelReady:Landroid/os/Handler;

    new-instance v1, Lo/newCachedSingleThreadExecutor$5;

    invoke-direct {v1, p0, p1, p3, p2}, Lo/newCachedSingleThreadExecutor$5;-><init>(Lo/newCachedSingleThreadExecutor;ILandroid/app/Notification;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final extraCallback(ILandroid/app/Notification;)V
    .locals 2

    .line 147
    iget-object v0, p0, Lo/newCachedSingleThreadExecutor;->onMessageChannelReady:Landroid/os/Handler;

    new-instance v1, Lo/newCachedSingleThreadExecutor$2;

    invoke-direct {v1, p0, p1, p2}, Lo/newCachedSingleThreadExecutor$2;-><init>(Lo/newCachedSingleThreadExecutor;ILandroid/app/Notification;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 57
    invoke-super {p0}, Lo/setSessionActivity;->onCreate()V

    .line 58
    sput-object p0, Lo/newCachedSingleThreadExecutor;->onPostMessage:Lo/newCachedSingleThreadExecutor;

    .line 59
    invoke-direct {p0}, Lo/newCachedSingleThreadExecutor;->ICustomTabsCallback()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 87
    invoke-super {p0}, Lo/setSessionActivity;->onDestroy()V

    .line 88
    iget-object v0, p0, Lo/newCachedSingleThreadExecutor;->extraCallback:Lo/newTopicsSyncExecutor;

    invoke-virtual {v0}, Lo/newTopicsSyncExecutor;->ICustomTabsCallback()V

    return-void
.end method

.method public final onNavigationEvent(I)V
    .locals 2

    .line 157
    iget-object v0, p0, Lo/newCachedSingleThreadExecutor;->onMessageChannelReady:Landroid/os/Handler;

    new-instance v1, Lo/newCachedSingleThreadExecutor$1;

    invoke-direct {v1, p0, p1}, Lo/newCachedSingleThreadExecutor$1;-><init>(Lo/newCachedSingleThreadExecutor;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onPostMessage()V
    .locals 5

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lo/newCachedSingleThreadExecutor;->ICustomTabsCallback$Stub:Z

    .line 117
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v1

    sget-object v2, Lo/newCachedSingleThreadExecutor;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Throwable;

    const-string v4, "All commands completed."

    invoke-virtual {v1, v2, v4, v3}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 120
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 121
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 123
    sput-object v0, Lo/newCachedSingleThreadExecutor;->onPostMessage:Lo/newCachedSingleThreadExecutor;

    .line 124
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .line 64
    invoke-super {p0, p1, p2, p3}, Lo/setSessionActivity;->onStartCommand(Landroid/content/Intent;II)I

    .line 65
    iget-boolean p2, p0, Lo/newCachedSingleThreadExecutor;->ICustomTabsCallback$Stub:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 66
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object p2

    sget-object v0, Lo/newCachedSingleThreadExecutor;->ICustomTabsCallback:Ljava/lang/String;

    new-array v1, p3, [Ljava/lang/Throwable;

    const-string v2, "Re-initializing SystemForegroundService after a request to shut-down."

    invoke-virtual {p2, v0, v2, v1}, Lo/setActiveQueueItemId;->extraCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 70
    iget-object p2, p0, Lo/newCachedSingleThreadExecutor;->extraCallback:Lo/newTopicsSyncExecutor;

    invoke-virtual {p2}, Lo/newTopicsSyncExecutor;->ICustomTabsCallback()V

    .line 72
    invoke-direct {p0}, Lo/newCachedSingleThreadExecutor;->ICustomTabsCallback()V

    .line 74
    iput-boolean p3, p0, Lo/newCachedSingleThreadExecutor;->ICustomTabsCallback$Stub:Z

    :cond_0
    if-eqz p1, :cond_3

    .line 78
    iget-object p2, p0, Lo/newCachedSingleThreadExecutor;->extraCallback:Lo/newTopicsSyncExecutor;

    .line 1201
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_START_FOREGROUND"

    .line 1202
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "KEY_WORKSPEC_ID"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 1225
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v1, Lo/newTopicsSyncExecutor;->ICustomTabsCallback:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, p3

    const-string v4, "Started foreground service %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array p3, p3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v3, p3}, Lo/setActiveQueueItemId;->extraCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 1226
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1227
    iget-object v0, p2, Lo/newTopicsSyncExecutor;->onNavigationEvent:Lo/PlaybackStateCompat$RepeatMode;

    .line 1311
    iget-object v0, v0, Lo/PlaybackStateCompat$RepeatMode;->extraCallback:Landroidx/work/impl/WorkDatabase;

    .line 1228
    iget-object v1, p2, Lo/newTopicsSyncExecutor;->onPostMessage:Lo/supportShouldUpRecreateTask;

    new-instance v2, Lo/newTopicsSyncExecutor$4;

    invoke-direct {v2, p2, v0, p3}, Lo/newTopicsSyncExecutor$4;-><init>(Lo/newTopicsSyncExecutor;Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lo/supportShouldUpRecreateTask;->onNavigationEvent(Ljava/lang/Runnable;)V

    .line 1206
    invoke-virtual {p2, p1}, Lo/newTopicsSyncExecutor;->ICustomTabsCallback(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v1, "ACTION_NOTIFY"

    .line 1207
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1208
    invoke-virtual {p2, p1}, Lo/newTopicsSyncExecutor;->ICustomTabsCallback(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v1, "ACTION_CANCEL_WORK"

    .line 1209
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2306
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v1, Lo/newTopicsSyncExecutor;->ICustomTabsCallback:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, p3

    const-string v4, "Stopping foreground work for %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array p3, p3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v3, p3}, Lo/setActiveQueueItemId;->extraCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2307
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2308
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 2309
    iget-object p2, p2, Lo/newTopicsSyncExecutor;->onNavigationEvent:Lo/PlaybackStateCompat$RepeatMode;

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    .line 3116
    new-instance p3, Lo/supportRequestWindowFeature$5;

    invoke-direct {p3, p2, p1}, Lo/supportRequestWindowFeature$5;-><init>(Lo/PlaybackStateCompat$RepeatMode;Ljava/util/UUID;)V

    .line 2438
    iget-object p1, p2, Lo/PlaybackStateCompat$RepeatMode;->onNavigationEvent:Lo/supportShouldUpRecreateTask;

    invoke-interface {p1, p3}, Lo/supportShouldUpRecreateTask;->onNavigationEvent(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    const/4 p1, 0x3

    return p1
.end method
