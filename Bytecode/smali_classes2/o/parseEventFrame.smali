.class public Lo/parseEventFrame;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static appPendingIntent:Landroid/app/PendingIntent;

.field private static requestId:I


# instance fields
.field private final context:Landroid/content/Context;

.field private final metadata:Lo/parseEventSignal;

.field private outgoingMessenger:Landroid/os/Messenger;

.field private outgoingMessengerCompat:Lo/parseApp;

.field private final responseCallbacks:Lo/fromMediaItemList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/fromMediaItemList<",
            "Ljava/lang/String;",
            "Lo/removeBackgroundStateChangeListener<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation
.end field

.field private responseMessenger:Landroid/os/Messenger;

.field private final timeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/parseEventSignal;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lo/fromMediaItemList;

    invoke-direct {v0}, Lo/fromMediaItemList;-><init>()V

    iput-object v0, p0, Lo/parseEventFrame;->responseCallbacks:Lo/fromMediaItemList;

    .line 3
    iput-object p1, p0, Lo/parseEventFrame;->context:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lo/parseEventFrame;->metadata:Lo/parseEventSignal;

    .line 5
    new-instance p1, Landroid/os/Messenger;

    new-instance p2, Lo/parseEventFrame$4;

    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lo/parseEventFrame$4;-><init>(Lo/parseEventFrame;Landroid/os/Looper;)V

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lo/parseEventFrame;->responseMessenger:Landroid/os/Messenger;

    .line 7
    new-instance p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 8
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {p1, v1, v2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 9
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 10
    iput-object p1, p0, Lo/parseEventFrame;->timeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static synthetic access$000(Lo/parseEventFrame;Landroid/os/Message;)V
    .locals 0

    .line 163
    invoke-direct {p0, p1}, Lo/parseEventFrame;->handleIncomingMessage(Landroid/os/Message;)V

    return-void
.end method

.method private static gmsCoreRespondedWithMessenger(Landroid/os/Bundle;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "google.messenger"

    .line 124
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private handleIidResponse(Landroid/content/Intent;)V
    .locals 6

    .line 88
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.REGISTRATION"

    .line 89
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    const-string v3, "FirebaseInstanceId"

    if-nez v1, :cond_2

    .line 90
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Unexpected response action: "

    .line 91
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const-string v0, "registration_id"

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "unregistered"

    .line 95
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    .line 97
    invoke-virtual {p0, p1}, Lo/parseEventFrame;->processError(Landroid/content/Intent;)V

    return-void

    :cond_4
    const-string v4, "\\|ID\\|([^|]+)\\|:?+(.*)"

    .line 99
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 100
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 101
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_7

    .line 102
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "Unexpected response string: "

    .line 103
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_1
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    :cond_7
    const/4 v1, 0x1

    .line 105
    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 106
    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 108
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0, v1, p1}, Lo/parseEventFrame;->setResponse(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private handleIncomingMessage(Landroid/os/Message;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 14
    new-instance v1, Lo/parseApp$onMessageChannelReady;

    invoke-direct {v1}, Lo/parseApp$onMessageChannelReady;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "google.messenger"

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 17
    instance-of v1, v0, Lo/parseApp;

    if-eqz v1, :cond_0

    .line 18
    move-object v1, v0

    check-cast v1, Lo/parseApp;

    iput-object v1, p0, Lo/parseEventFrame;->outgoingMessengerCompat:Lo/parseApp;

    .line 19
    :cond_0
    instance-of v1, v0, Landroid/os/Messenger;

    if-eqz v1, :cond_1

    .line 20
    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lo/parseEventFrame;->outgoingMessenger:Landroid/os/Messenger;

    .line 21
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-direct {p0, p1}, Lo/parseEventFrame;->handleIidResponse(Landroid/content/Intent;)V

    return-void

    :cond_2
    const-string p1, "FirebaseInstanceId"

    const-string v0, "Dropping invalid message"

    .line 23
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final synthetic lambda$registerRpc$0$Rpc(Lcom/google/android/gms/tasks/Task;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->extraCallback()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0

    :cond_0
    const/4 v0, 0x3

    const-string v1, "FirebaseInstanceId"

    .line 160
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->onNavigationEvent()Ljava/lang/Exception;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Error making request: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic lambda$registerRpcInternal$3$Rpc(Lo/removeBackgroundStateChangeListener;)V
    .locals 2

    .line 144
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TIMEOUT"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 5013
    iget-object p0, p0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {p0, v0}, Lo/getProjectId;->ICustomTabsCallback(Ljava/lang/Exception;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "FirebaseInstanceId"

    const-string v0, "No response"

    .line 145
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static final synthetic lambda$registerRpcViaIntent$1$Rpc(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 155
    invoke-static {p0}, Lo/parseEventFrame;->gmsCoreRespondedWithMessenger(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6001
    new-instance p0, Lo/getProjectId;

    invoke-direct {p0}, Lo/getProjectId;-><init>()V

    const/4 v0, 0x0

    .line 6002
    invoke-virtual {p0, v0}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-object p0

    .line 7001
    :cond_0
    new-instance v0, Lo/getProjectId;

    invoke-direct {v0}, Lo/getProjectId;-><init>()V

    .line 7002
    invoke-virtual {v0, p0}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static declared-synchronized nextId()Ljava/lang/String;
    .locals 3

    const-class v0, Lo/parseEventFrame;

    monitor-enter v0

    .line 125
    :try_start_0
    sget v1, Lo/parseEventFrame;->requestId:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lo/parseEventFrame;->requestId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private registerRpcInternal(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 126
    invoke-static {}, Lo/parseEventFrame;->nextId()Ljava/lang/String;

    move-result-object v0

    .line 127
    new-instance v1, Lo/removeBackgroundStateChangeListener;

    invoke-direct {v1}, Lo/removeBackgroundStateChangeListener;-><init>()V

    .line 128
    iget-object v2, p0, Lo/parseEventFrame;->responseCallbacks:Lo/fromMediaItemList;

    monitor-enter v2

    .line 129
    :try_start_0
    iget-object v3, p0, Lo/parseEventFrame;->responseCallbacks:Lo/fromMediaItemList;

    invoke-virtual {v3, v0, v1}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-direct {p0, p1, v0}, Lo/parseEventFrame;->startRegisterRpc(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lo/parseEventFrame;->timeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lo/populateFramesList$onNavigationEvent;

    invoke-direct {v2, v1}, Lo/populateFramesList$onNavigationEvent;-><init>(Lo/removeBackgroundStateChangeListener;)V

    const-wide/16 v3, 0x1e

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 133
    invoke-interface {p1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 3014
    iget-object v2, v1, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    .line 136
    invoke-static {}, Lo/setIconBitmap;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lo/getOsBuildVersionString;

    invoke-direct {v4, p0, v0, p1}, Lo/getOsBuildVersionString;-><init>(Lo/parseEventFrame;Ljava/lang/String;Ljava/util/concurrent/ScheduledFuture;)V

    .line 137
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/tasks/Task;->onMessageChannelReady(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 4014
    iget-object p1, v1, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    return-object p1

    :catchall_0
    move-exception p1

    .line 130
    monitor-exit v2

    throw p1
.end method

.method private registerRpcViaIntent(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lo/parseEventFrame;->metadata:Lo/parseEventSignal;

    invoke-virtual {v0}, Lo/parseEventSignal;->isGmscorePresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    new-instance p1, Ljava/io/IOException;

    const-string v0, "MISSING_INSTANCEID_SERVICE"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 3004
    new-instance v0, Lo/getProjectId;

    invoke-direct {v0}, Lo/getProjectId;-><init>()V

    .line 3005
    invoke-virtual {v0, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-object v0

    .line 120
    :cond_0
    invoke-direct {p0, p1}, Lo/parseEventFrame;->registerRpcInternal(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 121
    invoke-static {}, Lo/setIconBitmap;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lo/populateExecutionData;

    invoke-direct {v2, p0, p1}, Lo/populateExecutionData;-><init>(Lo/parseEventFrame;Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->extraCallback(Ljava/util/concurrent/Executor;Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public static declared-synchronized setPendingIntentExtra(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-class v0, Lo/parseEventFrame;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lo/parseEventFrame;->appPendingIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.google.example.invalidpackage"

    .line 27
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 28
    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    sput-object p0, Lo/parseEventFrame;->appPendingIntent:Landroid/app/PendingIntent;

    :cond_0
    const-string p0, "app"

    .line 29
    sget-object v1, Lo/parseEventFrame;->appPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private setResponse(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 81
    iget-object v0, p0, Lo/parseEventFrame;->responseCallbacks:Lo/fromMediaItemList;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Lo/parseEventFrame;->responseCallbacks:Lo/fromMediaItemList;

    invoke-virtual {v1, p1}, Lo/fromMediaItemList;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/removeBackgroundStateChangeListener;

    if-nez v1, :cond_1

    const-string p2, "FirebaseInstanceId"

    const-string v1, "Missing callback for "

    .line 84
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    monitor-exit v0

    return-void

    .line 2008
    :cond_1
    iget-object p1, v1, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {p1, p2}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    .line 87
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private startRegisterRpc(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    .line 31
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms"

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    iget-object v1, p0, Lo/parseEventFrame;->metadata:Lo/parseEventSignal;

    invoke-virtual {v1}, Lo/parseEventSignal;->getIidImplementation()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "com.google.iid.TOKEN_REQUEST"

    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v1, "com.google.android.c2dm.intent.REGISTER"

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 37
    iget-object p1, p0, Lo/parseEventFrame;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lo/parseEventFrame;->setPendingIntentExtra(Landroid/content/Context;Landroid/content/Intent;)V

    .line 38
    invoke-virtual {p0, v0, p2}, Lo/parseEventFrame;->sendRequest(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$registerRpcInternal$4$Rpc(Ljava/lang/String;Ljava/util/concurrent/ScheduledFuture;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 139
    iget-object p3, p0, Lo/parseEventFrame;->responseCallbacks:Lo/fromMediaItemList;

    monitor-enter p3

    .line 140
    :try_start_0
    iget-object v0, p0, Lo/parseEventFrame;->responseCallbacks:Lo/fromMediaItemList;

    invoke-virtual {v0, p1}, Lo/fromMediaItemList;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 142
    invoke-interface {p2, p1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    return-void

    :catchall_0
    move-exception p1

    .line 141
    monitor-exit p3

    throw p1
.end method

.method public final synthetic lambda$registerRpcViaIntent$2$Rpc(Landroid/os/Bundle;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 147
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    .line 149
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Lo/parseEventFrame;->gmsCoreRespondedWithMessenger(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p2

    .line 151
    :cond_1
    invoke-direct {p0, p1}, Lo/parseEventFrame;->registerRpcInternal(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 152
    invoke-static {}, Lo/setIconBitmap;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    sget-object v0, Lo/Report;->$instance:Lo/getPersistenceKey;

    .line 153
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/tasks/Task;->onNavigationEvent(Ljava/util/concurrent/Executor;Lo/getPersistenceKey;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method processError(Landroid/content/Intent;)V
    .locals 7

    const-string v0, "error"

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x31

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unexpected response, no error or registration id "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FirebaseInstanceId"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x3

    const-string v2, "FirebaseInstanceId"

    .line 62
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Received InstanceID error "

    .line 63
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    const-string v3, "FirebaseInstanceId"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v2, "|"

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "\\|"

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 67
    array-length v3, v2

    const/4 v4, 0x2

    if-le v3, v4, :cond_5

    const/4 v3, 0x1

    aget-object v5, v2, v3

    const-string v6, "ID"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 70
    :cond_3
    aget-object v0, v2, v4

    .line 71
    aget-object v1, v2, v1

    const-string v2, ":"

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 73
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_4
    const-string v2, "error"

    .line 74
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lo/parseEventFrame;->setResponse(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_5
    :goto_1
    const-string p1, "Unexpected structured response "

    .line 68
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_2
    const-string v0, "FirebaseInstanceId"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 76
    :cond_7
    iget-object v0, p0, Lo/parseEventFrame;->responseCallbacks:Lo/fromMediaItemList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 77
    :goto_3
    :try_start_0
    iget-object v2, p0, Lo/parseEventFrame;->responseCallbacks:Lo/fromMediaItemList;

    invoke-virtual {v2}, Lo/fromMediaItemList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 78
    iget-object v2, p0, Lo/parseEventFrame;->responseCallbacks:Lo/fromMediaItemList;

    .line 1390
    iget-object v2, v2, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    .line 78
    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lo/parseEventFrame;->setResponse(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 80
    :cond_8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method registerRpc(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lo/parseEventFrame;->metadata:Lo/parseEventSignal;

    invoke-virtual {v0}, Lo/parseEventSignal;->getGmsVersionCode()I

    move-result v0

    const v1, 0xb71b00

    if-lt v0, v1, :cond_0

    .line 112
    iget-object v0, p0, Lo/parseEventFrame;->context:Landroid/content/Context;

    .line 113
    invoke-static {v0}, Lcom/google/firebase/iid/MessengerIpcClient;->getInstance(Landroid/content/Context;)Lcom/google/firebase/iid/MessengerIpcClient;

    move-result-object v0

    const/4 v1, 0x1

    .line 114
    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/iid/MessengerIpcClient;->sendRequestForResponse(ILandroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 115
    invoke-static {}, Lo/setIconBitmap;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    sget-object v1, Lo/computeUInt64SizeNoTag;->$instance:Lo/isDefaultApp;

    .line 116
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->onPostMessage(Ljava/util/concurrent/Executor;Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 117
    :cond_0
    invoke-direct {p0, p1}, Lo/parseEventFrame;->registerRpcViaIntent(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method protected sendRequest(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 4

    .line 40
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "|ID|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "|"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "kid"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x3

    const-string v0, "FirebaseInstanceId"

    .line 41
    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Sending "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    iget-object v1, p0, Lo/parseEventFrame;->responseMessenger:Landroid/os/Messenger;

    const-string v2, "google.messenger"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 44
    iget-object v1, p0, Lo/parseEventFrame;->outgoingMessenger:Landroid/os/Messenger;

    if-nez v1, :cond_1

    iget-object v1, p0, Lo/parseEventFrame;->outgoingMessengerCompat:Lo/parseApp;

    if-eqz v1, :cond_3

    .line 45
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 46
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 47
    :try_start_0
    iget-object v2, p0, Lo/parseEventFrame;->outgoingMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_2

    .line 48
    iget-object v2, p0, Lo/parseEventFrame;->outgoingMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    return-void

    .line 49
    :cond_2
    iget-object v2, p0, Lo/parseEventFrame;->outgoingMessengerCompat:Lo/parseApp;

    invoke-virtual {v2, v1}, Lo/parseApp;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    .line 52
    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "Messenger failed, fallback to startService"

    .line 53
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_3
    iget-object p2, p0, Lo/parseEventFrame;->metadata:Lo/parseEventSignal;

    invoke-virtual {p2}, Lo/parseEventSignal;->getIidImplementation()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    .line 55
    iget-object p2, p0, Lo/parseEventFrame;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 56
    :cond_4
    iget-object p2, p0, Lo/parseEventFrame;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
