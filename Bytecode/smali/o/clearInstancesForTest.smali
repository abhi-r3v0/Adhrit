.class public final Lo/clearInstancesForTest;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/clearInstancesForTest$extraCallback;,
        Lo/clearInstancesForTest$ICustomTabsCallback;
    }
.end annotation


# static fields
.field public static final DOT_INFO:Lo/LogFileManager;

.field public static final DOT_INFO_AUTHENTICATED:Lo/LogFileManager;

.field public static final DOT_INFO_CONNECTED:Lo/LogFileManager;

.field public static final DOT_INFO_SERVERTIME_OFFSET:Lo/LogFileManager;

.field public static final WIRE_PROTOCOL_VERSION:Ljava/lang/String; = "5"


# instance fields
.field private final arg$1:Ljava/lang/Runnable;

.field private final arg$2:[Ljava/lang/Throwable;

.field private final arg$3:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ".info"

    .line 10021
    invoke-static {v0}, Lo/LogFileManager;->fromString(Ljava/lang/String;)Lo/LogFileManager;

    move-result-object v0

    sput-object v0, Lo/clearInstancesForTest;->DOT_INFO:Lo/LogFileManager;

    const-string/jumbo v0, "serverTimeOffset"

    .line 10022
    invoke-static {v0}, Lo/LogFileManager;->fromString(Ljava/lang/String;)Lo/LogFileManager;

    move-result-object v0

    sput-object v0, Lo/clearInstancesForTest;->DOT_INFO_SERVERTIME_OFFSET:Lo/LogFileManager;

    const-string v0, "authenticated"

    .line 10023
    invoke-static {v0}, Lo/LogFileManager;->fromString(Ljava/lang/String;)Lo/LogFileManager;

    move-result-object v0

    sput-object v0, Lo/clearInstancesForTest;->DOT_INFO_AUTHENTICATED:Lo/LogFileManager;

    const-string v0, "connected"

    .line 10024
    invoke-static {v0}, Lo/LogFileManager;->fromString(Ljava/lang/String;)Lo/LogFileManager;

    move-result-object v0

    sput-object v0, Lo/clearInstancesForTest;->DOT_INFO_CONNECTED:Lo/LogFileManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Runnable;[Ljava/lang/Throwable;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .line 11000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/clearInstancesForTest;->arg$1:Ljava/lang/Runnable;

    iput-object p2, p0, Lo/clearInstancesForTest;->arg$2:[Ljava/lang/Throwable;

    iput-object p3, p0, Lo/clearInstancesForTest;->arg$3:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public static ICustomTabsCallback(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TTResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 4050
    invoke-static {}, Lo/component29;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p0, :cond_3

    if-eqz p3, :cond_2

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {p0}, Lo/clearInstancesForTest;->onMessageChannelReady(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 29
    :cond_0
    new-instance v0, Lo/clearInstancesForTest$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/clearInstancesForTest$ICustomTabsCallback;-><init>(B)V

    .line 6070
    sget-object v1, Lo/initializeAllApis;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback(Ljava/util/concurrent/Executor;Lo/addLifecycleEventListener;)Lcom/google/android/gms/tasks/Task;

    .line 6071
    sget-object v1, Lo/initializeAllApis;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/tasks/Task;->onMessageChannelReady(Ljava/util/concurrent/Executor;Lo/addBackgroundStateChangeListener;)Lcom/google/android/gms/tasks/Task;

    .line 6072
    sget-object v1, Lo/initializeAllApis;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/tasks/Task;->extraCallback(Ljava/util/concurrent/Executor;Lo/notifyBackgroundStateChangeListeners;)Lcom/google/android/gms/tasks/Task;

    .line 7011
    iget-object v0, v0, Lo/clearInstancesForTest$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 33
    invoke-static {p0}, Lo/clearInstancesForTest;->onMessageChannelReady(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 32
    :cond_1
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    const-string p1, "Timed out waiting for Task"

    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6011
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "TimeUnit must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5011
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Task must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4051
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must not be called on the main application thread"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static lambdaFactory$(Ljava/lang/Runnable;[Ljava/lang/Throwable;Ljava/util/concurrent/Semaphore;)Ljava/lang/Runnable;
    .locals 1

    .line 13000
    new-instance v0, Lo/clearInstancesForTest;

    invoke-direct {v0, p0, p1, p2}, Lo/clearInstancesForTest;-><init>(Ljava/lang/Runnable;[Ljava/lang/Throwable;Ljava/util/concurrent/Semaphore;)V

    return-object v0
.end method

.method public static onMessageChannelReady(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lo/getProjectId;

    invoke-direct {v0}, Lo/getProjectId;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static onMessageChannelReady(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;)TTResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->extraCallback()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string v0, "Task is already canceled"

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 69
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->onNavigationEvent()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static onNavigationEvent(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 13
    new-instance v0, Lo/getProjectId;

    invoke-direct {v0}, Lo/getProjectId;-><init>()V

    .line 14
    new-instance v1, Lo/setApiKey;

    invoke-direct {v1, v0, p1}, Lo/setApiKey;-><init>(Lo/getProjectId;Ljava/util/concurrent/Callable;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0

    .line 2011
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1011
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Executor must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onNavigationEvent(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;)TTResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2050
    invoke-static {}, Lo/component29;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p0, :cond_1

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-static {p0}, Lo/clearInstancesForTest;->onMessageChannelReady(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 20
    :cond_0
    new-instance v0, Lo/clearInstancesForTest$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/clearInstancesForTest$ICustomTabsCallback;-><init>(B)V

    .line 3070
    sget-object v1, Lo/initializeAllApis;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback(Ljava/util/concurrent/Executor;Lo/addLifecycleEventListener;)Lcom/google/android/gms/tasks/Task;

    .line 3071
    sget-object v1, Lo/initializeAllApis;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/tasks/Task;->onMessageChannelReady(Ljava/util/concurrent/Executor;Lo/addBackgroundStateChangeListener;)Lcom/google/android/gms/tasks/Task;

    .line 3072
    sget-object v1, Lo/initializeAllApis;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/tasks/Task;->extraCallback(Ljava/util/concurrent/Executor;Lo/notifyBackgroundStateChangeListeners;)Lcom/google/android/gms/tasks/Task;

    .line 4009
    iget-object v0, v0, Lo/clearInstancesForTest$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 23
    invoke-static {p0}, Lo/clearInstancesForTest;->onMessageChannelReady(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3011
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Task must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2051
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Must not be called on the main application thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onPostMessage(Ljava/util/Collection;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/google/android/gms/tasks/Task<",
            "*>;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 34
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 36
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tasks/Task;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 38
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null tasks are not accepted"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 40
    :cond_2
    new-instance v0, Lo/getProjectId;

    invoke-direct {v0}, Lo/getProjectId;-><init>()V

    .line 41
    new-instance v1, Lo/clearInstancesForTest$extraCallback;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lo/clearInstancesForTest$extraCallback;-><init>(ILo/getProjectId;)V

    .line 42
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/tasks/Task;

    .line 8070
    sget-object v3, Lo/initializeAllApis;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback(Ljava/util/concurrent/Executor;Lo/addLifecycleEventListener;)Lcom/google/android/gms/tasks/Task;

    .line 8071
    sget-object v3, Lo/initializeAllApis;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/tasks/Task;->onMessageChannelReady(Ljava/util/concurrent/Executor;Lo/addBackgroundStateChangeListener;)Lcom/google/android/gms/tasks/Task;

    .line 8072
    sget-object v3, Lo/initializeAllApis;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/tasks/Task;->extraCallback(Ljava/util/concurrent/Executor;Lo/notifyBackgroundStateChangeListeners;)Lcom/google/android/gms/tasks/Task;

    goto :goto_1

    :cond_3
    return-object v0

    .line 8001
    :cond_4
    :goto_2
    new-instance p0, Lo/getProjectId;

    invoke-direct {p0}, Lo/getProjectId;-><init>()V

    const/4 v0, 0x0

    .line 8002
    invoke-virtual {p0, v0}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static varargs onPostMessage([Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/tasks/Task<",
            "*>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/tasks/Task<",
            "*>;>;>;"
        }
    .end annotation

    .line 62
    array-length v0, p0

    if-nez v0, :cond_0

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    .line 9001
    new-instance v0, Lo/getProjectId;

    invoke-direct {v0}, Lo/getProjectId;-><init>()V

    .line 9002
    invoke-virtual {v0, p0}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-object v0

    .line 64
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 9057
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 9059
    :cond_1
    invoke-static {p0}, Lo/clearInstancesForTest;->onPostMessage(Ljava/util/Collection;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lo/removeLifecycleEventListener;

    invoke-direct {v1, p0}, Lo/removeLifecycleEventListener;-><init>(Ljava/util/Collection;)V

    .line 9060
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback(Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    .line 9058
    :cond_2
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    .line 10001
    new-instance v0, Lo/getProjectId;

    invoke-direct {v0}, Lo/getProjectId;-><init>()V

    .line 10002
    invoke-virtual {v0, p0}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 12000
    iget-object v0, p0, Lo/clearInstancesForTest;->arg$1:Ljava/lang/Runnable;

    iget-object v1, p0, Lo/clearInstancesForTest;->arg$2:[Ljava/lang/Throwable;

    iget-object v2, p0, Lo/clearInstancesForTest;->arg$3:Ljava/util/concurrent/Semaphore;

    invoke-static {v0, v1, v2}, Lo/CrashlyticsReport$Type;->lambda$runSync$4(Ljava/lang/Runnable;[Ljava/lang/Throwable;Ljava/util/concurrent/Semaphore;)V

    return-void
.end method
