.class public final Lo/onListenRevoked;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onListenRevoked$onPostMessage;,
        Lo/onListenRevoked$ICustomTabsCallback;,
        Lo/onListenRevoked$extraCallback;
    }
.end annotation


# static fields
.field private static final onMessageChannelReady:Ljava/util/logging/Logger;

.field private static final onPostMessage:Lo/onListenRevoked$extraCallback;


# instance fields
.field private final ICustomTabsCallback:Ljava/util/concurrent/Executor;

.field private volatile extraCallback:I

.field private final onNavigationEvent:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lo/onListenRevoked;

    .line 38
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lo/onListenRevoked;->onMessageChannelReady:Ljava/util/logging/Logger;

    .line 43
    invoke-static {}, Lo/onListenRevoked;->onPostMessage()Lo/onListenRevoked$extraCallback;

    move-result-object v0

    sput-object v0, Lo/onListenRevoked;->onPostMessage:Lo/onListenRevoked$extraCallback;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lo/onListenRevoked;->onNavigationEvent:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lo/onListenRevoked;->extraCallback:I

    if-eqz p1, :cond_0

    .line 76
    iput-object p1, p0, Lo/onListenRevoked;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    return-void

    .line 1910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'executor\' must not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ICustomTabsCallback(Ljava/lang/Runnable;)V
    .locals 2

    .line 90
    sget-object v0, Lo/onListenRevoked;->onPostMessage:Lo/onListenRevoked$extraCallback;

    invoke-virtual {v0, p0}, Lo/onListenRevoked$extraCallback;->onMessageChannelReady(Lo/onListenRevoked;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :try_start_0
    iget-object v0, p0, Lo/onListenRevoked;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_0

    .line 109
    iget-object v1, p0, Lo/onListenRevoked;->onNavigationEvent:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 111
    :cond_0
    sget-object p1, Lo/onListenRevoked;->onPostMessage:Lo/onListenRevoked$extraCallback;

    invoke-virtual {p1, p0}, Lo/onListenRevoked$extraCallback;->onPostMessage(Lo/onListenRevoked;)V

    throw v0

    :cond_1
    return-void
.end method

.method static synthetic extraCallback(Lo/onListenRevoked;)I
    .locals 0

    .line 36
    iget p0, p0, Lo/onListenRevoked;->extraCallback:I

    return p0
.end method

.method static synthetic onMessageChannelReady(Lo/onListenRevoked;I)I
    .locals 0

    .line 36
    iput p1, p0, Lo/onListenRevoked;->extraCallback:I

    return p1
.end method

.method private static onPostMessage()Lo/onListenRevoked$extraCallback;
    .locals 5

    const/4 v0, 0x0

    .line 48
    :try_start_0
    new-instance v1, Lo/onListenRevoked$ICustomTabsCallback;

    const-class v2, Lo/onListenRevoked;

    const-string v3, "extraCallback"

    .line 50
    invoke-static {v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lo/onListenRevoked$ICustomTabsCallback;-><init>(Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 52
    sget-object v2, Lo/onListenRevoked;->onMessageChannelReady:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "FieldUpdaterAtomicHelper failed"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    new-instance v1, Lo/onListenRevoked$onPostMessage;

    invoke-direct {v1, v0}, Lo/onListenRevoked$onPostMessage;-><init>(B)V

    :goto_0
    return-object v1
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lo/onListenRevoked;->onNavigationEvent:Ljava/util/Queue;

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-direct {p0, p1}, Lo/onListenRevoked;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    return-void

    .line 2910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'r\' must not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final run()V
    .locals 5

    .line 121
    :goto_0
    :try_start_0
    iget-object v0, p0, Lo/onListenRevoked;->onNavigationEvent:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 123
    :try_start_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 126
    :try_start_2
    sget-object v2, Lo/onListenRevoked;->onMessageChannelReady:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "Exception while executing runnable "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 130
    :cond_0
    sget-object v0, Lo/onListenRevoked;->onPostMessage:Lo/onListenRevoked$extraCallback;

    invoke-virtual {v0, p0}, Lo/onListenRevoked$extraCallback;->onPostMessage(Lo/onListenRevoked;)V

    .line 132
    iget-object v0, p0, Lo/onListenRevoked;->onNavigationEvent:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, v0}, Lo/onListenRevoked;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 130
    sget-object v1, Lo/onListenRevoked;->onPostMessage:Lo/onListenRevoked$extraCallback;

    invoke-virtual {v1, p0}, Lo/onListenRevoked$extraCallback;->onPostMessage(Lo/onListenRevoked;)V

    throw v0
.end method
