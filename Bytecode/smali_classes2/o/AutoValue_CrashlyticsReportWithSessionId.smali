.class public abstract Lo/AutoValue_CrashlyticsReportWithSessionId;
.super Lo/getBatteryVelocity;
.source ""

# interfaces
.implements Lo/getBatteryLevel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AutoValue_CrashlyticsReportWithSessionId$asInterface;,
        Lo/AutoValue_CrashlyticsReportWithSessionId$onPostMessage;,
        Lo/AutoValue_CrashlyticsReportWithSessionId$onTransact;,
        Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;,
        Lo/AutoValue_CrashlyticsReportWithSessionId$onRelationshipValidationResult;,
        Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;,
        Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsCallback;,
        Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;,
        Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;,
        Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsCallback$Stub;,
        Lo/AutoValue_CrashlyticsReportWithSessionId$asBinder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lo/getBatteryVelocity;",
        "Lo/getBatteryLevel<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Ljava/util/logging/Logger;

.field private static final extraCallback:Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;

.field private static final onMessageChannelReady:Ljava/lang/Object;

.field private static final onNavigationEvent:Z


# instance fields
.field private volatile asBinder:Ljava/lang/Object;

.field private volatile asInterface:Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;

.field volatile onPostMessage:Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 71
    const-class v0, Lo/AutoValue_CrashlyticsReportWithSessionId;

    const-string v1, "guava.concurrent.generate_cancellation_cause"

    const-string v2, "false"

    .line 73
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lo/AutoValue_CrashlyticsReportWithSessionId;->onNavigationEvent:Z

    .line 123
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lo/AutoValue_CrashlyticsReportWithSessionId;->ICustomTabsCallback:Ljava/util/logging/Logger;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 137
    :try_start_0
    new-instance v3, Lo/AutoValue_CrashlyticsReportWithSessionId$onTransact;

    invoke-direct {v3, v1}, Lo/AutoValue_CrashlyticsReportWithSessionId$onTransact;-><init>(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    move-object v3, v2

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 144
    :try_start_1
    new-instance v10, Lo/AutoValue_CrashlyticsReportWithSessionId$onPostMessage;

    const-class v4, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;

    const-class v5, Ljava/lang/Thread;

    const-string v6, "onNavigationEvent"

    .line 146
    invoke-static {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    const-class v4, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;

    const-class v6, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;

    const-string v7, "ICustomTabsCallback"

    .line 147
    invoke-static {v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    const-class v4, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;

    const-string v7, "onPostMessage"

    .line 148
    invoke-static {v0, v4, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    const-class v4, Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;

    const-string v8, "asInterface"

    .line 149
    invoke-static {v0, v4, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v8

    const-class v4, Ljava/lang/Object;

    const-string v9, "asBinder"

    .line 150
    invoke-static {v0, v4, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v9

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lo/AutoValue_CrashlyticsReportWithSessionId$onPostMessage;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v10

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 157
    new-instance v0, Lo/AutoValue_CrashlyticsReportWithSessionId$asInterface;

    invoke-direct {v0, v1}, Lo/AutoValue_CrashlyticsReportWithSessionId$asInterface;-><init>(B)V

    .line 160
    :goto_0
    sput-object v0, Lo/AutoValue_CrashlyticsReportWithSessionId;->extraCallback:Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;

    if-eqz v2, :cond_0

    .line 170
    sget-object v0, Lo/AutoValue_CrashlyticsReportWithSessionId;->ICustomTabsCallback:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "UnsafeAtomicHelper is broken!"

    invoke-virtual {v0, v1, v4, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    sget-object v0, Lo/AutoValue_CrashlyticsReportWithSessionId;->ICustomTabsCallback:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "SafeAtomicHelper is broken!"

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 267
    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/AutoValue_CrashlyticsReportWithSessionId;->onMessageChannelReady:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 360
    invoke-direct {p0}, Lo/getBatteryVelocity;-><init>()V

    return-void
.end method

.method private static ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 549
    instance-of v0, p0, Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;

    if-nez v0, :cond_2

    .line 551
    instance-of v0, p0, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsCallback;

    if-nez v0, :cond_1

    .line 553
    sget-object v0, Lo/AutoValue_CrashlyticsReportWithSessionId;->onMessageChannelReady:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0

    .line 552
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p0, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsCallback;

    iget-object p0, p0, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/Throwable;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 550
    :cond_2
    check-cast p0, Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;

    iget-object p0, p0, Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/Throwable;

    .line 4350
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task was cancelled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 4351
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 550
    throw v0
.end method

.method static synthetic ICustomTabsCallback()Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;
    .locals 1

    .line 67
    sget-object v0, Lo/AutoValue_CrashlyticsReportWithSessionId;->extraCallback:Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;

    return-object v0
.end method

.method static synthetic ICustomTabsCallback(Lo/AutoValue_CrashlyticsReportWithSessionId;)V
    .locals 0

    const/4 p0, 0x0

    .line 67
    invoke-static {p0}, Lo/AutoValue_CrashlyticsReportWithSessionId;->extraCallback(Lo/AutoValue_CrashlyticsReportWithSessionId;)V

    return-void
.end method

.method static synthetic extraCallback(Lo/AutoValue_CrashlyticsReportWithSessionId;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 67
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReportWithSessionId;->asBinder:Ljava/lang/Object;

    return-object p1
.end method

.method private extraCallback()V
    .locals 3

    .line 1026
    :cond_0
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReportWithSessionId;->onPostMessage:Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;

    .line 1027
    sget-object v1, Lo/AutoValue_CrashlyticsReportWithSessionId;->extraCallback:Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;

    sget-object v2, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;->extraCallback:Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;

    invoke-virtual {v1, p0, v0, v2}, Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;->extraCallback(Lo/AutoValue_CrashlyticsReportWithSessionId;Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    if-eqz v0, :cond_2

    .line 6204
    iget-object v1, v0, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;->onNavigationEvent:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 6206
    iput-object v2, v0, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;->onNavigationEvent:Ljava/lang/Thread;

    .line 6207
    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 1028
    :cond_1
    iget-object v0, v0, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;->ICustomTabsCallback:Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static extraCallback(Lo/AutoValue_CrashlyticsReportWithSessionId;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReportWithSessionId<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    .line 927
    :goto_0
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReportWithSessionId;->extraCallback()V

    .line 935
    invoke-direct {p0, v1}, Lo/AutoValue_CrashlyticsReportWithSessionId;->onNavigationEvent(Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;)Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_3

    .line 939
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;->extraCallback:Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;

    .line 940
    iget-object v2, p0, Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/Runnable;

    .line 941
    instance-of v3, v2, Lo/AutoValue_CrashlyticsReportWithSessionId$onRelationshipValidationResult;

    if-eqz v3, :cond_1

    .line 942
    check-cast v2, Lo/AutoValue_CrashlyticsReportWithSessionId$onRelationshipValidationResult;

    .line 949
    iget-object p0, v0, Lo/AutoValue_CrashlyticsReportWithSessionId;->asBinder:Ljava/lang/Object;

    if-ne p0, v2, :cond_2

    .line 950
    invoke-static {v0}, Lo/AutoValue_CrashlyticsReportWithSessionId;->onNavigationEvent(Lo/getBatteryLevel;)Ljava/lang/Object;

    move-result-object p0

    .line 951
    sget-object v3, Lo/AutoValue_CrashlyticsReportWithSessionId;->extraCallback:Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;

    invoke-virtual {v3, v0, v2, p0}, Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;->onMessageChannelReady(Lo/AutoValue_CrashlyticsReportWithSessionId;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    move-object p0, v0

    goto :goto_0

    .line 957
    :cond_1
    iget-object p0, p0, Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    invoke-static {v2, p0}, Lo/AutoValue_CrashlyticsReportWithSessionId;->onPostMessage(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_2
    :goto_2
    move-object p0, v1

    goto :goto_1

    :cond_3
    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/getBatteryLevel;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    .line 67
    invoke-static {p0}, Lo/AutoValue_CrashlyticsReportWithSessionId;->onNavigationEvent(Lo/getBatteryLevel;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lo/AutoValue_CrashlyticsReportWithSessionId;)Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;
    .locals 0

    .line 67
    iget-object p0, p0, Lo/AutoValue_CrashlyticsReportWithSessionId;->onPostMessage:Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lo/AutoValue_CrashlyticsReportWithSessionId;Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;)Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;
    .locals 0

    .line 67
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReportWithSessionId;->asInterface:Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;

    return-object p1
.end method

.method static synthetic onMessageChannelReady()Z
    .locals 1

    .line 67
    sget-boolean v0, Lo/AutoValue_CrashlyticsReportWithSessionId;->onNavigationEvent:Z

    return v0
.end method

.method private static onNavigationEvent(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 910
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 917
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 919
    :cond_1
    throw p0

    :catch_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic onNavigationEvent(Lo/AutoValue_CrashlyticsReportWithSessionId;)Ljava/lang/Object;
    .locals 0

    .line 67
    iget-object p0, p0, Lo/AutoValue_CrashlyticsReportWithSessionId;->asBinder:Ljava/lang/Object;

    return-object p0
.end method

.method private static onNavigationEvent(Lo/getBatteryLevel;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getBatteryLevel<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "get() did not throw CancellationException, despite reporting isCancelled() == true: "

    .line 832
    instance-of v1, p0, Lo/AutoValue_CrashlyticsReportWithSessionId$asBinder;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 837
    check-cast p0, Lo/AutoValue_CrashlyticsReportWithSessionId;

    iget-object p0, p0, Lo/AutoValue_CrashlyticsReportWithSessionId;->asBinder:Ljava/lang/Object;

    .line 838
    instance-of v0, p0, Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;

    if-eqz v0, :cond_1

    .line 842
    move-object v0, p0

    check-cast v0, Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;

    .line 843
    iget-boolean v1, v0, Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;->extraCallback:Z

    if-eqz v1, :cond_1

    .line 844
    iget-object p0, v0, Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/Throwable;

    if-eqz p0, :cond_0

    new-instance p0, Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;

    iget-object v0, v0, Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/Throwable;

    invoke-direct {p0, v2, v0}, Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;->ICustomTabsCallback:Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;

    :cond_1
    :goto_0
    return-object p0

    .line 852
    :cond_2
    instance-of v1, p0, Lo/getBatteryVelocity;

    if-eqz v1, :cond_3

    .line 853
    move-object v1, p0

    check-cast v1, Lo/getBatteryVelocity;

    .line 6041
    invoke-virtual {v1}, Lo/getBatteryVelocity;->onPostMessage()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 856
    new-instance p0, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsCallback;

    invoke-direct {p0, v1}, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsCallback;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    .line 859
    :cond_3
    invoke-interface {p0}, Lo/getBatteryLevel;->isCancelled()Z

    move-result v1

    .line 861
    sget-boolean v3, Lo/AutoValue_CrashlyticsReportWithSessionId;->onNavigationEvent:Z

    xor-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v1

    if-eqz v3, :cond_4

    .line 862
    sget-object p0, Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;->ICustomTabsCallback:Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;

    return-object p0

    .line 866
    :cond_4
    :try_start_0
    invoke-static {p0}, Lo/AutoValue_CrashlyticsReportWithSessionId;->onNavigationEvent(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v1, :cond_5

    .line 868
    new-instance v3, Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v2, v4}, Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;-><init>(ZLjava/lang/Throwable;)V

    return-object v3

    :cond_5
    if-nez v3, :cond_6

    .line 875
    sget-object p0, Lo/AutoValue_CrashlyticsReportWithSessionId;->onMessageChannelReady:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_6
    return-object v3

    :catchall_0
    move-exception p0

    .line 897
    new-instance v0, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsCallback;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :catch_0
    move-exception v0

    if-nez v1, :cond_7

    .line 889
    new-instance v1, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsCallback;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsCallback;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    .line 895
    :cond_7
    new-instance p0, Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;

    invoke-direct {p0, v2, v0}, Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;-><init>(ZLjava/lang/Throwable;)V

    return-object p0

    :catch_1
    move-exception v3

    if-eqz v1, :cond_8

    .line 878
    new-instance v1, Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2, v4}, Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;-><init>(ZLjava/lang/Throwable;)V

    return-object v1

    .line 886
    :cond_8
    new-instance p0, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsCallback;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsCallback;-><init>(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/AutoValue_CrashlyticsReportWithSessionId;Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;)Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;
    .locals 0

    .line 67
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReportWithSessionId;->onPostMessage:Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;

    return-object p1
.end method

.method private onNavigationEvent(Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;)Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;
    .locals 4

    .line 1046
    :cond_0
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReportWithSessionId;->asInterface:Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;

    .line 1047
    sget-object v1, Lo/AutoValue_CrashlyticsReportWithSessionId;->extraCallback:Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;

    sget-object v2, Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;->onPostMessage:Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;

    invoke-virtual {v1, p0, v0, v2}, Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;->onNavigationEvent(Lo/AutoValue_CrashlyticsReportWithSessionId;Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    :goto_0
    if-eqz p1, :cond_1

    .line 1051
    iget-object v1, p1, Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;->extraCallback:Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;

    .line 1052
    iput-object v0, p1, Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;->extraCallback:Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;

    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private onNavigationEvent(Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;)V
    .locals 4

    const/4 v0, 0x0

    .line 224
    iput-object v0, p1, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;->onNavigationEvent:Ljava/lang/Thread;

    .line 228
    :cond_0
    :goto_0
    iget-object p1, p0, Lo/AutoValue_CrashlyticsReportWithSessionId;->onPostMessage:Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;

    .line 229
    sget-object v1, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;->extraCallback:Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;

    if-ne p1, v1, :cond_1

    return-void

    :cond_1
    move-object v1, v0

    :goto_1
    if-eqz p1, :cond_5

    .line 234
    iget-object v2, p1, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;->ICustomTabsCallback:Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;

    .line 235
    iget-object v3, p1, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;->onNavigationEvent:Ljava/lang/Thread;

    if-eqz v3, :cond_2

    move-object v1, p1

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    .line 238
    iput-object v2, v1, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;->ICustomTabsCallback:Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;

    .line 239
    iget-object p1, v1, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;->onNavigationEvent:Ljava/lang/Thread;

    if-nez p1, :cond_4

    goto :goto_0

    .line 242
    :cond_3
    sget-object v3, Lo/AutoValue_CrashlyticsReportWithSessionId;->extraCallback:Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;

    invoke-virtual {v3, p0, p1, v2}, Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;->extraCallback(Lo/AutoValue_CrashlyticsReportWithSessionId;Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;)Z

    move-result p1

    if-eqz p1, :cond_0

    :cond_4
    :goto_2
    move-object p1, v2

    goto :goto_1

    :cond_5
    return-void
.end method

.method static synthetic onPostMessage(Lo/AutoValue_CrashlyticsReportWithSessionId;)Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;
    .locals 0

    .line 67
    iget-object p0, p0, Lo/AutoValue_CrashlyticsReportWithSessionId;->asInterface:Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;

    return-object p0
.end method

.method private static onPostMessage(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 5

    .line 1138
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1143
    sget-object v1, Lo/AutoValue_CrashlyticsReportWithSessionId;->ICustomTabsCallback:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RuntimeException while executing runnable "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " with executor "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private onPostMessage(Ljava/lang/StringBuilder;)V
    .locals 3

    const-string v0, "]"

    .line 1109
    :try_start_0
    invoke-static {p0}, Lo/AutoValue_CrashlyticsReportWithSessionId;->onNavigationEvent(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SUCCESS, result=["

    .line 1110
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v1, p0, :cond_0

    const-string v1, "this future"

    goto :goto_0

    .line 8129
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1110
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "UNKNOWN, cause=["

    .line 1116
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " thrown from get()]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catch_1
    const-string v0, "CANCELLED"

    .line 1114
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catch_2
    move-exception v1

    const-string v2, "FAILURE, cause=["

    .line 1112
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 6

    .line 590
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReportWithSessionId;->asBinder:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 592
    :goto_0
    instance-of v4, v0, Lo/AutoValue_CrashlyticsReportWithSessionId$onRelationshipValidationResult;

    or-int/2addr v3, v4

    if-eqz v3, :cond_5

    .line 595
    sget-boolean v3, Lo/AutoValue_CrashlyticsReportWithSessionId;->onNavigationEvent:Z

    if-eqz v3, :cond_1

    new-instance v3, Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;

    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string v5, "Future.cancel() was called."

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1, v4}, Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    sget-object v3, Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;->onPostMessage:Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;

    goto :goto_1

    :cond_2
    sget-object v3, Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;->ICustomTabsCallback:Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;

    .line 604
    :cond_3
    :goto_1
    sget-object v4, Lo/AutoValue_CrashlyticsReportWithSessionId;->extraCallback:Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;

    invoke-virtual {v4, p0, v0, v3}, Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;->onMessageChannelReady(Lo/AutoValue_CrashlyticsReportWithSessionId;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 611
    invoke-static {p0}, Lo/AutoValue_CrashlyticsReportWithSessionId;->extraCallback(Lo/AutoValue_CrashlyticsReportWithSessionId;)V

    .line 612
    instance-of v0, v0, Lo/AutoValue_CrashlyticsReportWithSessionId$onRelationshipValidationResult;

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 632
    invoke-interface {v0, p1}, Lo/getBatteryLevel;->cancel(Z)Z

    goto :goto_2

    .line 638
    :cond_4
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReportWithSessionId;->asBinder:Ljava/lang/Object;

    .line 639
    instance-of v4, v0, Lo/AutoValue_CrashlyticsReportWithSessionId$onRelationshipValidationResult;

    if-nez v4, :cond_3

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_2
    return v1
.end method

.method protected extraCallback(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 724
    sget-object p1, Lo/AutoValue_CrashlyticsReportWithSessionId;->onMessageChannelReady:Ljava/lang/Object;

    .line 725
    :cond_0
    sget-object v0, Lo/AutoValue_CrashlyticsReportWithSessionId;->extraCallback:Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;->onMessageChannelReady(Lo/AutoValue_CrashlyticsReportWithSessionId;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 726
    invoke-static {p0}, Lo/AutoValue_CrashlyticsReportWithSessionId;->extraCallback(Lo/AutoValue_CrashlyticsReportWithSessionId;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public get()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 508
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 511
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReportWithSessionId;->asBinder:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 512
    :goto_0
    instance-of v4, v0, Lo/AutoValue_CrashlyticsReportWithSessionId$onRelationshipValidationResult;

    xor-int/2addr v4, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 513
    invoke-static {v0}, Lo/AutoValue_CrashlyticsReportWithSessionId;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 515
    :cond_1
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReportWithSessionId;->onPostMessage:Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;

    .line 516
    sget-object v3, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;->extraCallback:Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;

    if-eq v0, v3, :cond_7

    .line 517
    new-instance v3, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;

    invoke-direct {v3}, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;-><init>()V

    .line 4067
    :cond_2
    sget-object v4, Lo/AutoValue_CrashlyticsReportWithSessionId;->extraCallback:Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;

    .line 3197
    invoke-virtual {v4, v3, v0}, Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;->extraCallback(Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;)V

    .line 520
    sget-object v4, Lo/AutoValue_CrashlyticsReportWithSessionId;->extraCallback:Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;

    invoke-virtual {v4, p0, v0, v3}, Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;->extraCallback(Lo/AutoValue_CrashlyticsReportWithSessionId;Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 523
    :cond_3
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 525
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 531
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReportWithSessionId;->asBinder:Ljava/lang/Object;

    if-eqz v0, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 532
    :goto_1
    instance-of v5, v0, Lo/AutoValue_CrashlyticsReportWithSessionId$onRelationshipValidationResult;

    xor-int/2addr v5, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 533
    invoke-static {v0}, Lo/AutoValue_CrashlyticsReportWithSessionId;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 526
    :cond_5
    invoke-direct {p0, v3}, Lo/AutoValue_CrashlyticsReportWithSessionId;->onNavigationEvent(Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;)V

    .line 527
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 537
    :cond_6
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReportWithSessionId;->onPostMessage:Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;

    .line 538
    sget-object v4, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;->extraCallback:Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;

    if-ne v0, v4, :cond_2

    .line 542
    :cond_7
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReportWithSessionId;->asBinder:Ljava/lang/Object;

    invoke-static {v0}, Lo/AutoValue_CrashlyticsReportWithSessionId;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 509
    :cond_8
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    .line 400
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 402
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_16

    .line 405
    iget-object v6, v0, Lo/AutoValue_CrashlyticsReportWithSessionId;->asBinder:Ljava/lang/Object;

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 406
    :goto_0
    instance-of v10, v6, Lo/AutoValue_CrashlyticsReportWithSessionId$onRelationshipValidationResult;

    xor-int/2addr v10, v8

    and-int/2addr v9, v10

    if-eqz v9, :cond_1

    .line 407
    invoke-static {v6}, Lo/AutoValue_CrashlyticsReportWithSessionId;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_1
    const-wide/16 v9, 0x0

    cmp-long v6, v4, v9

    if-lez v6, :cond_2

    .line 410
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    add-long/2addr v11, v4

    goto :goto_1

    :cond_2
    move-wide v11, v9

    :goto_1
    const-wide/16 v13, 0x3e8

    cmp-long v6, v4, v13

    if-ltz v6, :cond_a

    .line 413
    iget-object v6, v0, Lo/AutoValue_CrashlyticsReportWithSessionId;->onPostMessage:Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;

    .line 414
    sget-object v15, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;->extraCallback:Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;

    if-eq v6, v15, :cond_9

    .line 415
    new-instance v15, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;

    invoke-direct {v15}, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;-><init>()V

    .line 3067
    :cond_3
    sget-object v7, Lo/AutoValue_CrashlyticsReportWithSessionId;->extraCallback:Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;

    .line 2197
    invoke-virtual {v7, v15, v6}, Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;->extraCallback(Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;)V

    .line 418
    sget-object v7, Lo/AutoValue_CrashlyticsReportWithSessionId;->extraCallback:Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;

    invoke-virtual {v7, v0, v6, v15}, Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;->extraCallback(Lo/AutoValue_CrashlyticsReportWithSessionId;Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 420
    :cond_4
    invoke-static {v0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 422
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_7

    .line 429
    iget-object v4, v0, Lo/AutoValue_CrashlyticsReportWithSessionId;->asBinder:Ljava/lang/Object;

    if-eqz v4, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    .line 430
    :goto_2
    instance-of v6, v4, Lo/AutoValue_CrashlyticsReportWithSessionId$onRelationshipValidationResult;

    xor-int/2addr v6, v8

    and-int/2addr v5, v6

    if-eqz v5, :cond_6

    .line 431
    invoke-static {v4}, Lo/AutoValue_CrashlyticsReportWithSessionId;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 435
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    cmp-long v6, v4, v13

    if-gez v6, :cond_4

    .line 438
    invoke-direct {v0, v15}, Lo/AutoValue_CrashlyticsReportWithSessionId;->onNavigationEvent(Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;)V

    goto :goto_3

    .line 423
    :cond_7
    invoke-direct {v0, v15}, Lo/AutoValue_CrashlyticsReportWithSessionId;->onNavigationEvent(Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;)V

    .line 424
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 443
    :cond_8
    iget-object v6, v0, Lo/AutoValue_CrashlyticsReportWithSessionId;->onPostMessage:Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;

    .line 444
    sget-object v7, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;->extraCallback:Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;

    if-ne v6, v7, :cond_3

    .line 448
    :cond_9
    iget-object v1, v0, Lo/AutoValue_CrashlyticsReportWithSessionId;->asBinder:Ljava/lang/Object;

    invoke-static {v1}, Lo/AutoValue_CrashlyticsReportWithSessionId;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_a
    :goto_3
    cmp-long v6, v4, v9

    if-lez v6, :cond_e

    .line 453
    iget-object v4, v0, Lo/AutoValue_CrashlyticsReportWithSessionId;->asBinder:Ljava/lang/Object;

    if-eqz v4, :cond_b

    const/4 v5, 0x1

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    .line 454
    :goto_4
    instance-of v6, v4, Lo/AutoValue_CrashlyticsReportWithSessionId$onRelationshipValidationResult;

    xor-int/2addr v6, v8

    and-int/2addr v5, v6

    if-eqz v5, :cond_c

    .line 455
    invoke-static {v4}, Lo/AutoValue_CrashlyticsReportWithSessionId;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 457
    :cond_c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_d

    .line 460
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    goto :goto_3

    .line 458
    :cond_d
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 463
    :cond_e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 464
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 465
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Waited "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    add-long v11, v4, v13

    cmp-long v15, v11, v9

    if-gez v15, :cond_14

    .line 469
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (plus "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    neg-long v4, v4

    .line 471
    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v11}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v11

    .line 472
    invoke-virtual {v3, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v17

    sub-long v4, v4, v17

    cmp-long v3, v11, v9

    if-eqz v3, :cond_10

    cmp-long v9, v4, v13

    if-lez v9, :cond_f

    goto :goto_5

    :cond_f
    const/16 v16, 0x0

    goto :goto_6

    :cond_10
    :goto_5
    const/16 v16, 0x1

    :goto_6
    if-lez v3, :cond_12

    .line 476
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v16, :cond_11

    .line 478
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 480
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_12
    if-eqz v16, :cond_13

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " nanoseconds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 486
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "delay)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 491
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lo/AutoValue_CrashlyticsReportWithSessionId;->isDone()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 492
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but future completed as timeout expired"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 494
    :cond_15
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 403
    :cond_16
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
.end method

.method public isCancelled()Z
    .locals 1

    .line 570
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReportWithSessionId;->asBinder:Ljava/lang/Object;

    .line 571
    instance-of v0, v0, Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;

    return v0
.end method

.method public isDone()Z
    .locals 3

    .line 564
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReportWithSessionId;->asBinder:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 565
    :goto_0
    instance-of v0, v0, Lo/AutoValue_CrashlyticsReportWithSessionId$onRelationshipValidationResult;

    xor-int/2addr v0, v1

    and-int/2addr v0, v2

    return v0
.end method

.method public onNavigationEvent(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 3

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 692
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReportWithSessionId;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 693
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReportWithSessionId;->asInterface:Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;

    .line 694
    sget-object v1, Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;->onPostMessage:Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;

    if-eq v0, v1, :cond_2

    .line 695
    new-instance v1, Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;

    invoke-direct {v1, p1, p2}, Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 697
    :cond_0
    iput-object v0, v1, Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;->extraCallback:Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;

    .line 698
    sget-object v2, Lo/AutoValue_CrashlyticsReportWithSessionId;->extraCallback:Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;

    invoke-virtual {v2, p0, v0, v1}, Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;->onNavigationEvent(Lo/AutoValue_CrashlyticsReportWithSessionId;Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 701
    :cond_1
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReportWithSessionId;->asInterface:Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;

    .line 702
    sget-object v2, Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;->onPostMessage:Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;

    if-ne v0, v2, :cond_0

    .line 707
    :cond_2
    invoke-static {p1, p2}, Lo/AutoValue_CrashlyticsReportWithSessionId;->onPostMessage(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    .line 5910
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Executor was null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4910
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Runnable was null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPostMessage()Ljava/lang/Throwable;
    .locals 2

    .line 1003
    instance-of v0, p0, Lo/AutoValue_CrashlyticsReportWithSessionId$asBinder;

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReportWithSessionId;->asBinder:Ljava/lang/Object;

    .line 1005
    instance-of v1, v0, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsCallback;

    if-eqz v1, :cond_0

    .line 1006
    check-cast v0, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsCallback;

    iget-object v0, v0, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/Throwable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReportWithSessionId;->isCancelled()Z

    move-result v1

    const-string v2, "]"

    if-eqz v1, :cond_0

    const-string v1, "CANCELLED"

    .line 1063
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1064
    :cond_0
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReportWithSessionId;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1065
    invoke-direct {p0, v0}, Lo/AutoValue_CrashlyticsReportWithSessionId;->onPostMessage(Ljava/lang/StringBuilder;)V

    goto/16 :goto_1

    .line 7096
    :cond_1
    :try_start_0
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReportWithSessionId;->asBinder:Ljava/lang/Object;

    .line 7097
    instance-of v1, v1, Lo/AutoValue_CrashlyticsReportWithSessionId$onRelationshipValidationResult;

    if-eqz v1, :cond_2

    .line 7098
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "setFuture=["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "null"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 7099
    :cond_2
    instance-of v1, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_3

    .line 7100
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "remaining delay=["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, p0

    check-cast v3, Ljava/util/concurrent/ScheduledFuture;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7101
    invoke-interface {v3, v4}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1073
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception thrown from implementation: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_4

    .line 1077
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "PENDING, info=["

    .line 1078
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1079
    :cond_4
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReportWithSessionId;->isDone()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1080
    invoke-direct {p0, v0}, Lo/AutoValue_CrashlyticsReportWithSessionId;->onPostMessage(Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_5
    const-string v1, "PENDING"

    .line 1082
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
