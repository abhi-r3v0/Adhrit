.class public final Lo/parseSession;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/parseNdkPayload;


# static fields
.field private static fcmServiceConn:Lo/access$lambda$1;

.field private static final lock:Ljava/lang/Object;


# instance fields
.field private final context:Landroid/content/Context;

.field private final executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/parseSession;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/parseSession;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lo/parseSession;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private static bindToMessagingService(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Binding to service"

    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "com.google.firebase.MESSAGING_EVENT"

    .line 20
    invoke-static {p0, v0}, Lo/parseSession;->getServiceConnection(Landroid/content/Context;Ljava/lang/String;)Lo/access$lambda$1;

    move-result-object p0

    .line 21
    invoke-virtual {p0, p1}, Lo/access$lambda$1;->sendIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 22
    invoke-static {}, Lo/setIconBitmap;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    sget-object v0, Lo/removeExperimentFromAnalytics;->$instance:Lo/isDefaultApp;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/tasks/Task;->onPostMessage(Ljava/util/concurrent/Executor;Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method private static getServiceConnection(Landroid/content/Context;Ljava/lang/String;)Lo/access$lambda$1;
    .locals 2

    .line 24
    sget-object v0, Lo/parseSession;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lo/parseSession;->fcmServiceConn:Lo/access$lambda$1;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lo/access$lambda$1;

    invoke-direct {v1, p0, p1}, Lo/access$lambda$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lo/parseSession;->fcmServiceConn:Lo/access$lambda$1;

    .line 27
    :cond_0
    sget-object p0, Lo/parseSession;->fcmServiceConn:Lo/access$lambda$1;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 28
    monitor-exit v0

    throw p0
.end method

.method public static final synthetic lambda$bindToMessagingService$3$FcmBroadcastProcessor(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, -0x1

    .line 32
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic lambda$startMessagingService$0$FcmBroadcastProcessor(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    invoke-static {}, Lo/parseArray;->getInstance()Lo/parseArray;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lo/parseArray;->startMessagingService(Landroid/content/Context;Landroid/content/Intent;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic lambda$startMessagingService$1$FcmBroadcastProcessor(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 p0, 0x193

    .line 40
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic lambda$startMessagingService$2$FcmBroadcastProcessor(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2016
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 34
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/16 v1, 0x192

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 36
    :cond_1
    invoke-static {p0, p1}, Lo/parseSession;->bindToMessagingService(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 37
    invoke-static {}, Lo/setIconBitmap;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    sget-object p2, Lo/registerEventNames;->$instance:Lo/isDefaultApp;

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/tasks/Task;->onPostMessage(Ljava/util/concurrent/Executor;Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    return-object p2
.end method

.method public static reset()V
    .locals 2

    .line 29
    sget-object v0, Lo/parseSession;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 30
    :try_start_0
    sput-object v1, Lo/parseSession;->fcmServiceConn:Lo/access$lambda$1;

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final process(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "gcm.rawData64"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 7
    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    const-string v2, "rawData"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 9
    :cond_0
    iget-object v0, p0, Lo/parseSession;->context:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lo/parseSession;->startMessagingService(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final startMessagingService(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1016
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 12
    :goto_1
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v4, 0x10000000

    and-int/2addr v1, v4

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v0, :cond_3

    if-nez v2, :cond_3

    .line 14
    invoke-static {p1, p2}, Lo/parseSession;->bindToMessagingService(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 15
    :cond_3
    iget-object v0, p0, Lo/parseSession;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lo/toStringMap$onTransact;

    invoke-direct {v1, p1, p2}, Lo/toStringMap$onTransact;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 16
    invoke-static {v0, v1}, Lo/clearInstancesForTest;->onNavigationEvent(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lo/parseSession;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lo/toStringMap$onRelationshipValidationResult;

    invoke-direct {v2, p1, p2}, Lo/toStringMap$onRelationshipValidationResult;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->extraCallback(Ljava/util/concurrent/Executor;Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
