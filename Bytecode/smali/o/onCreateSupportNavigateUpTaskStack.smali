.class public abstract Lo/onCreateSupportNavigateUpTaskStack;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getBatteryLevel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onCreateSupportNavigateUpTaskStack$onTransact;,
        Lo/onCreateSupportNavigateUpTaskStack$onMessageChannelReady;,
        Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;,
        Lo/onCreateSupportNavigateUpTaskStack$asInterface;,
        Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;,
        Lo/onCreateSupportNavigateUpTaskStack$extraCallback;,
        Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;,
        Lo/onCreateSupportNavigateUpTaskStack$asBinder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/getBatteryLevel<",
        "TV;>;"
    }
.end annotation


# static fields
.field static final ICustomTabsCallback:Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;

.field private static final asBinder:Ljava/util/logging/Logger;

.field static final extraCallback:Z

.field private static final onTransact:Ljava/lang/Object;


# instance fields
.field volatile onMessageChannelReady:Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;

.field volatile onNavigationEvent:Ljava/lang/Object;

.field volatile onPostMessage:Lo/onCreateSupportNavigateUpTaskStack$asBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "onMessageChannelReady"

    .line 70
    const-class v1, Lo/onCreateSupportNavigateUpTaskStack;

    const-string v2, "guava.concurrent.generate_cancellation_cause"

    const-string v3, "false"

    .line 72
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lo/onCreateSupportNavigateUpTaskStack;->extraCallback:Z

    .line 75
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sput-object v2, Lo/onCreateSupportNavigateUpTaskStack;->asBinder:Ljava/util/logging/Logger;

    .line 91
    :try_start_0
    new-instance v2, Lo/onCreateSupportNavigateUpTaskStack$onMessageChannelReady;

    const-class v3, Lo/onCreateSupportNavigateUpTaskStack$asBinder;

    const-class v4, Ljava/lang/Thread;

    .line 93
    invoke-static {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    const-class v3, Lo/onCreateSupportNavigateUpTaskStack$asBinder;

    const-class v5, Lo/onCreateSupportNavigateUpTaskStack$asBinder;

    const-string v6, "ICustomTabsCallback"

    .line 94
    invoke-static {v3, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    const-class v3, Lo/onCreateSupportNavigateUpTaskStack$asBinder;

    const-string v6, "onPostMessage"

    .line 95
    invoke-static {v1, v3, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    const-class v3, Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;

    .line 96
    invoke-static {v1, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    const-class v0, Ljava/lang/Object;

    const-string v3, "onNavigationEvent"

    .line 97
    invoke-static {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v8

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lo/onCreateSupportNavigateUpTaskStack$onMessageChannelReady;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 104
    new-instance v2, Lo/onCreateSupportNavigateUpTaskStack$onTransact;

    invoke-direct {v2}, Lo/onCreateSupportNavigateUpTaskStack$onTransact;-><init>()V

    .line 107
    :goto_0
    sput-object v2, Lo/onCreateSupportNavigateUpTaskStack;->ICustomTabsCallback:Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;

    if-eqz v0, :cond_0

    .line 117
    sget-object v1, Lo/onCreateSupportNavigateUpTaskStack;->asBinder:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "SafeAtomicHelper is broken!"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/onCreateSupportNavigateUpTaskStack;->onTransact:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ICustomTabsCallback(Ljava/lang/StringBuilder;)V
    .locals 3

    const-string v0, "]"

    .line 1021
    :try_start_0
    invoke-static {p0}, Lo/onCreateSupportNavigateUpTaskStack;->onMessageChannelReady(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SUCCESS, result=["

    .line 1022
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v1, p0, :cond_0

    const-string/jumbo v1, "this future"

    goto :goto_0

    .line 9042
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1022
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

    .line 1028
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " thrown from get()]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catch_1
    const-string v0, "CANCELLED"

    .line 1026
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catch_2
    move-exception v1

    const-string v2, "FAILURE, cause=["

    .line 1024
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 1193
    throw p0
.end method

.method private static extraCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 5

    .line 1051
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1056
    sget-object v1, Lo/onCreateSupportNavigateUpTaskStack;->asBinder:Ljava/util/logging/Logger;

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

.method static extraCallback(Lo/onCreateSupportNavigateUpTaskStack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onCreateSupportNavigateUpTaskStack<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 869
    :cond_0
    invoke-direct {p0}, Lo/onCreateSupportNavigateUpTaskStack;->onNavigationEvent()V

    .line 877
    invoke-direct {p0, v0}, Lo/onCreateSupportNavigateUpTaskStack;->onPostMessage(Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;)Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_3

    .line 881
    iget-object v0, p0, Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;->ICustomTabsCallback:Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;

    .line 882
    iget-object v1, p0, Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Runnable;

    .line 883
    instance-of v2, v1, Lo/onCreateSupportNavigateUpTaskStack$asInterface;

    if-eqz v2, :cond_1

    .line 884
    check-cast v1, Lo/onCreateSupportNavigateUpTaskStack$asInterface;

    .line 891
    iget-object p0, v1, Lo/onCreateSupportNavigateUpTaskStack$asInterface;->onPostMessage:Lo/onCreateSupportNavigateUpTaskStack;

    .line 892
    iget-object v2, p0, Lo/onCreateSupportNavigateUpTaskStack;->onNavigationEvent:Ljava/lang/Object;

    if-ne v2, v1, :cond_2

    .line 893
    iget-object v2, v1, Lo/onCreateSupportNavigateUpTaskStack$asInterface;->onNavigationEvent:Lo/getBatteryLevel;

    invoke-static {v2}, Lo/onCreateSupportNavigateUpTaskStack;->onPostMessage(Lo/getBatteryLevel;)Ljava/lang/Object;

    move-result-object v2

    .line 894
    sget-object v3, Lo/onCreateSupportNavigateUpTaskStack;->ICustomTabsCallback:Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;

    invoke-virtual {v3, p0, v1, v2}, Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;->onNavigationEvent(Lo/onCreateSupportNavigateUpTaskStack;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 900
    :cond_1
    iget-object p0, p0, Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;->extraCallback:Ljava/util/concurrent/Executor;

    invoke-static {v1, p0}, Lo/onCreateSupportNavigateUpTaskStack;->extraCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_2
    :goto_1
    move-object p0, v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static onMessageChannelReady(Ljava/util/concurrent/Future;)Ljava/lang/Object;
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

    .line 851
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 858
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

    .line 860
    :cond_1
    throw p0

    :catch_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onNavigationEvent()V
    .locals 3

    .line 937
    :cond_0
    iget-object v0, p0, Lo/onCreateSupportNavigateUpTaskStack;->onPostMessage:Lo/onCreateSupportNavigateUpTaskStack$asBinder;

    .line 938
    sget-object v1, Lo/onCreateSupportNavigateUpTaskStack;->ICustomTabsCallback:Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;

    sget-object v2, Lo/onCreateSupportNavigateUpTaskStack$asBinder;->extraCallback:Lo/onCreateSupportNavigateUpTaskStack$asBinder;

    invoke-virtual {v1, p0, v0, v2}, Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;->onNavigationEvent(Lo/onCreateSupportNavigateUpTaskStack;Lo/onCreateSupportNavigateUpTaskStack$asBinder;Lo/onCreateSupportNavigateUpTaskStack$asBinder;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    if-eqz v0, :cond_2

    .line 7154
    iget-object v1, v0, Lo/onCreateSupportNavigateUpTaskStack$asBinder;->onMessageChannelReady:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 7156
    iput-object v2, v0, Lo/onCreateSupportNavigateUpTaskStack$asBinder;->onMessageChannelReady:Ljava/lang/Thread;

    .line 7157
    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 940
    :cond_1
    iget-object v0, v0, Lo/onCreateSupportNavigateUpTaskStack$asBinder;->ICustomTabsCallback:Lo/onCreateSupportNavigateUpTaskStack$asBinder;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 513
    instance-of v0, p0, Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;

    if-nez v0, :cond_2

    .line 515
    instance-of v0, p0, Lo/onCreateSupportNavigateUpTaskStack$extraCallback;

    if-nez v0, :cond_1

    .line 517
    sget-object v0, Lo/onCreateSupportNavigateUpTaskStack;->onTransact:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0

    .line 516
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p0, Lo/onCreateSupportNavigateUpTaskStack$extraCallback;

    iget-object p0, p0, Lo/onCreateSupportNavigateUpTaskStack$extraCallback;->onMessageChannelReady:Ljava/lang/Throwable;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 514
    :cond_2
    check-cast p0, Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;

    iget-object p0, p0, Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;->extraCallback:Ljava/lang/Throwable;

    .line 3184
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task was cancelled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 3185
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 514
    throw v0
.end method

.method static onPostMessage(Lo/getBatteryLevel;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getBatteryLevel<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 798
    instance-of v0, p0, Lo/onCreateSupportNavigateUpTaskStack;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 804
    check-cast p0, Lo/onCreateSupportNavigateUpTaskStack;

    iget-object p0, p0, Lo/onCreateSupportNavigateUpTaskStack;->onNavigationEvent:Ljava/lang/Object;

    .line 805
    instance-of v0, p0, Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;

    if-eqz v0, :cond_1

    .line 809
    move-object v0, p0

    check-cast v0, Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;

    .line 810
    iget-boolean v2, v0, Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;->onNavigationEvent:Z

    if-eqz v2, :cond_1

    .line 811
    iget-object p0, v0, Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;->extraCallback:Ljava/lang/Throwable;

    if-eqz p0, :cond_0

    new-instance p0, Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;

    iget-object v0, v0, Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;->extraCallback:Ljava/lang/Throwable;

    invoke-direct {p0, v1, v0}, Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_0

    .line 812
    :cond_0
    sget-object p0, Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;->onMessageChannelReady:Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;

    :cond_1
    :goto_0
    return-object p0

    .line 817
    :cond_2
    invoke-interface {p0}, Lo/getBatteryLevel;->isCancelled()Z

    move-result v0

    .line 819
    sget-boolean v2, Lo/onCreateSupportNavigateUpTaskStack;->extraCallback:Z

    xor-int/lit8 v2, v2, 0x1

    and-int/2addr v2, v0

    if-eqz v2, :cond_3

    .line 820
    sget-object p0, Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;->onMessageChannelReady:Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;

    return-object p0

    .line 824
    :cond_3
    :try_start_0
    invoke-static {p0}, Lo/onCreateSupportNavigateUpTaskStack;->onMessageChannelReady(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 825
    sget-object p0, Lo/onCreateSupportNavigateUpTaskStack;->onTransact:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_4
    return-object v2

    :catchall_0
    move-exception p0

    .line 839
    new-instance v0, Lo/onCreateSupportNavigateUpTaskStack$extraCallback;

    invoke-direct {v0, p0}, Lo/onCreateSupportNavigateUpTaskStack$extraCallback;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :catch_0
    move-exception v2

    if-nez v0, :cond_5

    .line 830
    new-instance v0, Lo/onCreateSupportNavigateUpTaskStack$extraCallback;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Lo/onCreateSupportNavigateUpTaskStack$extraCallback;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 837
    :cond_5
    new-instance p0, Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;

    invoke-direct {p0, v1, v2}, Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;-><init>(ZLjava/lang/Throwable;)V

    return-object p0

    :catch_1
    move-exception p0

    .line 827
    new-instance v0, Lo/onCreateSupportNavigateUpTaskStack$extraCallback;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, p0}, Lo/onCreateSupportNavigateUpTaskStack$extraCallback;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private onPostMessage(Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;)Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;
    .locals 4

    .line 958
    :cond_0
    iget-object v0, p0, Lo/onCreateSupportNavigateUpTaskStack;->onMessageChannelReady:Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;

    .line 959
    sget-object v1, Lo/onCreateSupportNavigateUpTaskStack;->ICustomTabsCallback:Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;

    sget-object v2, Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;->onPostMessage:Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;

    invoke-virtual {v1, p0, v0, v2}, Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;->ICustomTabsCallback(Lo/onCreateSupportNavigateUpTaskStack;Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    :goto_0
    if-eqz p1, :cond_1

    .line 963
    iget-object v1, p1, Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;->ICustomTabsCallback:Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;

    .line 964
    iput-object v0, p1, Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;->ICustomTabsCallback:Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;

    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private onPostMessage(Lo/onCreateSupportNavigateUpTaskStack$asBinder;)V
    .locals 4

    const/4 v0, 0x0

    .line 174
    iput-object v0, p1, Lo/onCreateSupportNavigateUpTaskStack$asBinder;->onMessageChannelReady:Ljava/lang/Thread;

    .line 178
    :cond_0
    :goto_0
    iget-object p1, p0, Lo/onCreateSupportNavigateUpTaskStack;->onPostMessage:Lo/onCreateSupportNavigateUpTaskStack$asBinder;

    .line 179
    sget-object v1, Lo/onCreateSupportNavigateUpTaskStack$asBinder;->extraCallback:Lo/onCreateSupportNavigateUpTaskStack$asBinder;

    if-ne p1, v1, :cond_1

    return-void

    :cond_1
    move-object v1, v0

    :goto_1
    if-eqz p1, :cond_5

    .line 184
    iget-object v2, p1, Lo/onCreateSupportNavigateUpTaskStack$asBinder;->ICustomTabsCallback:Lo/onCreateSupportNavigateUpTaskStack$asBinder;

    .line 185
    iget-object v3, p1, Lo/onCreateSupportNavigateUpTaskStack$asBinder;->onMessageChannelReady:Ljava/lang/Thread;

    if-eqz v3, :cond_2

    move-object v1, p1

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    .line 188
    iput-object v2, v1, Lo/onCreateSupportNavigateUpTaskStack$asBinder;->ICustomTabsCallback:Lo/onCreateSupportNavigateUpTaskStack$asBinder;

    .line 189
    iget-object p1, v1, Lo/onCreateSupportNavigateUpTaskStack$asBinder;->onMessageChannelReady:Ljava/lang/Thread;

    if-nez p1, :cond_4

    goto :goto_0

    .line 193
    :cond_3
    sget-object v3, Lo/onCreateSupportNavigateUpTaskStack;->ICustomTabsCallback:Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;

    invoke-virtual {v3, p0, p1, v2}, Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;->onNavigationEvent(Lo/onCreateSupportNavigateUpTaskStack;Lo/onCreateSupportNavigateUpTaskStack$asBinder;Lo/onCreateSupportNavigateUpTaskStack$asBinder;)Z

    move-result p1

    if-eqz p1, :cond_0

    :cond_4
    :goto_2
    move-object p1, v2

    goto :goto_1

    :cond_5
    return-void
.end method


# virtual methods
.method protected ICustomTabsCallback(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 683
    sget-object p1, Lo/onCreateSupportNavigateUpTaskStack;->onTransact:Ljava/lang/Object;

    .line 684
    :cond_0
    sget-object v0, Lo/onCreateSupportNavigateUpTaskStack;->ICustomTabsCallback:Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;->onNavigationEvent(Lo/onCreateSupportNavigateUpTaskStack;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 685
    invoke-static {p0}, Lo/onCreateSupportNavigateUpTaskStack;->extraCallback(Lo/onCreateSupportNavigateUpTaskStack;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final cancel(Z)Z
    .locals 7

    .line 553
    iget-object v0, p0, Lo/onCreateSupportNavigateUpTaskStack;->onNavigationEvent:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 555
    :goto_0
    instance-of v4, v0, Lo/onCreateSupportNavigateUpTaskStack$asInterface;

    or-int/2addr v3, v4

    if-eqz v3, :cond_7

    .line 559
    sget-boolean v3, Lo/onCreateSupportNavigateUpTaskStack;->extraCallback:Z

    if-eqz v3, :cond_1

    .line 560
    new-instance v3, Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;

    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string v5, "Future.cancel() was called."

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1, v4}, Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 564
    sget-object v3, Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;->onPostMessage:Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;

    goto :goto_1

    .line 565
    :cond_2
    sget-object v3, Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;->onMessageChannelReady:Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;

    :goto_1
    const/4 v5, 0x0

    move-object v4, p0

    .line 568
    :cond_3
    :goto_2
    sget-object v6, Lo/onCreateSupportNavigateUpTaskStack;->ICustomTabsCallback:Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;

    invoke-virtual {v6, v4, v0, v3}, Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;->onNavigationEvent(Lo/onCreateSupportNavigateUpTaskStack;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 575
    invoke-static {v4}, Lo/onCreateSupportNavigateUpTaskStack;->extraCallback(Lo/onCreateSupportNavigateUpTaskStack;)V

    .line 576
    instance-of v4, v0, Lo/onCreateSupportNavigateUpTaskStack$asInterface;

    if-eqz v4, :cond_8

    .line 580
    check-cast v0, Lo/onCreateSupportNavigateUpTaskStack$asInterface;

    iget-object v0, v0, Lo/onCreateSupportNavigateUpTaskStack$asInterface;->onNavigationEvent:Lo/getBatteryLevel;

    .line 581
    instance-of v4, v0, Lo/onCreateSupportNavigateUpTaskStack;

    if-eqz v4, :cond_5

    .line 591
    move-object v4, v0

    check-cast v4, Lo/onCreateSupportNavigateUpTaskStack;

    .line 592
    iget-object v0, v4, Lo/onCreateSupportNavigateUpTaskStack;->onNavigationEvent:Ljava/lang/Object;

    if-nez v0, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    .line 593
    :goto_3
    instance-of v6, v0, Lo/onCreateSupportNavigateUpTaskStack$asInterface;

    or-int/2addr v5, v6

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    goto :goto_2

    .line 599
    :cond_5
    invoke-interface {v0, p1}, Lo/getBatteryLevel;->cancel(Z)Z

    goto :goto_4

    .line 605
    :cond_6
    iget-object v0, v4, Lo/onCreateSupportNavigateUpTaskStack;->onNavigationEvent:Ljava/lang/Object;

    .line 606
    instance-of v6, v0, Lo/onCreateSupportNavigateUpTaskStack$asInterface;

    if-nez v6, :cond_3

    move v1, v5

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :cond_8
    :goto_4
    return v1
.end method

.method protected extraCallback(Lo/getBatteryLevel;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getBatteryLevel<",
            "+TV;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 745
    iget-object v1, p0, Lo/onCreateSupportNavigateUpTaskStack;->onNavigationEvent:Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 747
    invoke-interface {p1}, Lo/getBatteryLevel;->isDone()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 748
    invoke-static {p1}, Lo/onCreateSupportNavigateUpTaskStack;->onPostMessage(Lo/getBatteryLevel;)Ljava/lang/Object;

    move-result-object p1

    .line 749
    sget-object v1, Lo/onCreateSupportNavigateUpTaskStack;->ICustomTabsCallback:Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;

    invoke-virtual {v1, p0, v0, p1}, Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;->onNavigationEvent(Lo/onCreateSupportNavigateUpTaskStack;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 750
    invoke-static {p0}, Lo/onCreateSupportNavigateUpTaskStack;->extraCallback(Lo/onCreateSupportNavigateUpTaskStack;)V

    return v3

    :cond_0
    return v2

    .line 755
    :cond_1
    new-instance v1, Lo/onCreateSupportNavigateUpTaskStack$asInterface;

    invoke-direct {v1, p0, p1}, Lo/onCreateSupportNavigateUpTaskStack$asInterface;-><init>(Lo/onCreateSupportNavigateUpTaskStack;Lo/getBatteryLevel;)V

    .line 756
    sget-object v4, Lo/onCreateSupportNavigateUpTaskStack;->ICustomTabsCallback:Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;

    invoke-virtual {v4, p0, v0, v1}, Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;->onNavigationEvent(Lo/onCreateSupportNavigateUpTaskStack;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 761
    :try_start_0
    sget-object v0, Lo/onPrepareSupportNavigateUpTaskStack;->onPostMessage:Lo/onPrepareSupportNavigateUpTaskStack;

    invoke-interface {p1, v1, v0}, Lo/getBatteryLevel;->onNavigationEvent(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 769
    :try_start_1
    new-instance v0, Lo/onCreateSupportNavigateUpTaskStack$extraCallback;

    invoke-direct {v0, p1}, Lo/onCreateSupportNavigateUpTaskStack$extraCallback;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 771
    :catchall_1
    sget-object v0, Lo/onCreateSupportNavigateUpTaskStack$extraCallback;->onNavigationEvent:Lo/onCreateSupportNavigateUpTaskStack$extraCallback;

    .line 775
    :goto_0
    sget-object p1, Lo/onCreateSupportNavigateUpTaskStack;->ICustomTabsCallback:Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;

    invoke-virtual {p1, p0, v1, v0}, Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;->onNavigationEvent(Lo/onCreateSupportNavigateUpTaskStack;Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_1
    return v3

    .line 779
    :cond_2
    iget-object v1, p0, Lo/onCreateSupportNavigateUpTaskStack;->onNavigationEvent:Ljava/lang/Object;

    .line 783
    :cond_3
    instance-of v0, v1, Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;

    if-eqz v0, :cond_4

    .line 785
    check-cast v1, Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;

    iget-boolean v0, v1, Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;->onNavigationEvent:Z

    invoke-interface {p1, v0}, Lo/getBatteryLevel;->cancel(Z)Z

    :cond_4
    return v2

    .line 6193
    :cond_5
    throw v0
.end method

.method public final get()Ljava/lang/Object;
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

    .line 470
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 473
    iget-object v0, p0, Lo/onCreateSupportNavigateUpTaskStack;->onNavigationEvent:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 474
    :goto_0
    instance-of v4, v0, Lo/onCreateSupportNavigateUpTaskStack$asInterface;

    xor-int/2addr v4, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 475
    invoke-static {v0}, Lo/onCreateSupportNavigateUpTaskStack;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 477
    :cond_1
    iget-object v0, p0, Lo/onCreateSupportNavigateUpTaskStack;->onPostMessage:Lo/onCreateSupportNavigateUpTaskStack$asBinder;

    .line 478
    sget-object v3, Lo/onCreateSupportNavigateUpTaskStack$asBinder;->extraCallback:Lo/onCreateSupportNavigateUpTaskStack$asBinder;

    if-eq v0, v3, :cond_7

    .line 479
    new-instance v3, Lo/onCreateSupportNavigateUpTaskStack$asBinder;

    invoke-direct {v3}, Lo/onCreateSupportNavigateUpTaskStack$asBinder;-><init>()V

    .line 3146
    :cond_2
    sget-object v4, Lo/onCreateSupportNavigateUpTaskStack;->ICustomTabsCallback:Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;

    invoke-virtual {v4, v3, v0}, Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;->extraCallback(Lo/onCreateSupportNavigateUpTaskStack$asBinder;Lo/onCreateSupportNavigateUpTaskStack$asBinder;)V

    .line 482
    sget-object v4, Lo/onCreateSupportNavigateUpTaskStack;->ICustomTabsCallback:Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;

    invoke-virtual {v4, p0, v0, v3}, Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;->onNavigationEvent(Lo/onCreateSupportNavigateUpTaskStack;Lo/onCreateSupportNavigateUpTaskStack$asBinder;Lo/onCreateSupportNavigateUpTaskStack$asBinder;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 485
    :cond_3
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 488
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 495
    iget-object v0, p0, Lo/onCreateSupportNavigateUpTaskStack;->onNavigationEvent:Ljava/lang/Object;

    if-eqz v0, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 496
    :goto_1
    instance-of v5, v0, Lo/onCreateSupportNavigateUpTaskStack$asInterface;

    xor-int/2addr v5, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 497
    invoke-static {v0}, Lo/onCreateSupportNavigateUpTaskStack;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 489
    :cond_5
    invoke-direct {p0, v3}, Lo/onCreateSupportNavigateUpTaskStack;->onPostMessage(Lo/onCreateSupportNavigateUpTaskStack$asBinder;)V

    .line 490
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 501
    :cond_6
    iget-object v0, p0, Lo/onCreateSupportNavigateUpTaskStack;->onPostMessage:Lo/onCreateSupportNavigateUpTaskStack$asBinder;

    .line 502
    sget-object v4, Lo/onCreateSupportNavigateUpTaskStack$asBinder;->extraCallback:Lo/onCreateSupportNavigateUpTaskStack$asBinder;

    if-ne v0, v4, :cond_2

    .line 506
    :cond_7
    iget-object v0, p0, Lo/onCreateSupportNavigateUpTaskStack;->onNavigationEvent:Ljava/lang/Object;

    invoke-static {v0}, Lo/onCreateSupportNavigateUpTaskStack;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 471
    :cond_8
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
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

    .line 360
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 362
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_16

    .line 365
    iget-object v6, v0, Lo/onCreateSupportNavigateUpTaskStack;->onNavigationEvent:Ljava/lang/Object;

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 366
    :goto_0
    instance-of v10, v6, Lo/onCreateSupportNavigateUpTaskStack$asInterface;

    xor-int/2addr v10, v8

    and-int/2addr v9, v10

    if-eqz v9, :cond_1

    .line 367
    invoke-static {v6}, Lo/onCreateSupportNavigateUpTaskStack;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_1
    const-wide/16 v9, 0x0

    cmp-long v6, v4, v9

    if-lez v6, :cond_2

    .line 370
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

    .line 373
    iget-object v6, v0, Lo/onCreateSupportNavigateUpTaskStack;->onPostMessage:Lo/onCreateSupportNavigateUpTaskStack$asBinder;

    .line 374
    sget-object v15, Lo/onCreateSupportNavigateUpTaskStack$asBinder;->extraCallback:Lo/onCreateSupportNavigateUpTaskStack$asBinder;

    if-eq v6, v15, :cond_9

    .line 375
    new-instance v15, Lo/onCreateSupportNavigateUpTaskStack$asBinder;

    invoke-direct {v15}, Lo/onCreateSupportNavigateUpTaskStack$asBinder;-><init>()V

    .line 2146
    :cond_3
    sget-object v7, Lo/onCreateSupportNavigateUpTaskStack;->ICustomTabsCallback:Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;

    invoke-virtual {v7, v15, v6}, Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;->extraCallback(Lo/onCreateSupportNavigateUpTaskStack$asBinder;Lo/onCreateSupportNavigateUpTaskStack$asBinder;)V

    .line 378
    sget-object v7, Lo/onCreateSupportNavigateUpTaskStack;->ICustomTabsCallback:Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;

    invoke-virtual {v7, v0, v6, v15}, Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;->onNavigationEvent(Lo/onCreateSupportNavigateUpTaskStack;Lo/onCreateSupportNavigateUpTaskStack$asBinder;Lo/onCreateSupportNavigateUpTaskStack$asBinder;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 380
    :cond_4
    invoke-static {v0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 383
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_7

    .line 390
    iget-object v4, v0, Lo/onCreateSupportNavigateUpTaskStack;->onNavigationEvent:Ljava/lang/Object;

    if-eqz v4, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    .line 391
    :goto_2
    instance-of v6, v4, Lo/onCreateSupportNavigateUpTaskStack$asInterface;

    xor-int/2addr v6, v8

    and-int/2addr v5, v6

    if-eqz v5, :cond_6

    .line 392
    invoke-static {v4}, Lo/onCreateSupportNavigateUpTaskStack;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 396
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    cmp-long v6, v4, v13

    if-gez v6, :cond_4

    .line 400
    invoke-direct {v0, v15}, Lo/onCreateSupportNavigateUpTaskStack;->onPostMessage(Lo/onCreateSupportNavigateUpTaskStack$asBinder;)V

    goto :goto_3

    .line 384
    :cond_7
    invoke-direct {v0, v15}, Lo/onCreateSupportNavigateUpTaskStack;->onPostMessage(Lo/onCreateSupportNavigateUpTaskStack$asBinder;)V

    .line 385
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 405
    :cond_8
    iget-object v6, v0, Lo/onCreateSupportNavigateUpTaskStack;->onPostMessage:Lo/onCreateSupportNavigateUpTaskStack$asBinder;

    .line 406
    sget-object v7, Lo/onCreateSupportNavigateUpTaskStack$asBinder;->extraCallback:Lo/onCreateSupportNavigateUpTaskStack$asBinder;

    if-ne v6, v7, :cond_3

    .line 410
    :cond_9
    iget-object v1, v0, Lo/onCreateSupportNavigateUpTaskStack;->onNavigationEvent:Ljava/lang/Object;

    invoke-static {v1}, Lo/onCreateSupportNavigateUpTaskStack;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_a
    :goto_3
    cmp-long v6, v4, v9

    if-lez v6, :cond_e

    .line 415
    iget-object v4, v0, Lo/onCreateSupportNavigateUpTaskStack;->onNavigationEvent:Ljava/lang/Object;

    if-eqz v4, :cond_b

    const/4 v5, 0x1

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    .line 416
    :goto_4
    instance-of v6, v4, Lo/onCreateSupportNavigateUpTaskStack$asInterface;

    xor-int/2addr v6, v8

    and-int/2addr v5, v6

    if-eqz v5, :cond_c

    .line 417
    invoke-static {v4}, Lo/onCreateSupportNavigateUpTaskStack;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 419
    :cond_c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_d

    .line 422
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    goto :goto_3

    .line 420
    :cond_d
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 425
    :cond_e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 426
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 427
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

    .line 432
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (plus "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    neg-long v4, v4

    .line 434
    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v11}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v11

    .line 435
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

    .line 439
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v16, :cond_11

    .line 441
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 443
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_12
    if-eqz v16, :cond_13

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " nanoseconds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 449
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "delay)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 454
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lo/onCreateSupportNavigateUpTaskStack;->isDone()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 455
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

    .line 457
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

    .line 363
    :cond_16
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
.end method

.method public final isCancelled()Z
    .locals 1

    .line 534
    iget-object v0, p0, Lo/onCreateSupportNavigateUpTaskStack;->onNavigationEvent:Ljava/lang/Object;

    .line 535
    instance-of v0, v0, Lo/onCreateSupportNavigateUpTaskStack$onNavigationEvent;

    return v0
.end method

.method public final isDone()Z
    .locals 3

    .line 528
    iget-object v0, p0, Lo/onCreateSupportNavigateUpTaskStack;->onNavigationEvent:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 529
    :goto_0
    instance-of v0, v0, Lo/onCreateSupportNavigateUpTaskStack$asInterface;

    xor-int/2addr v0, v1

    and-int/2addr v0, v2

    return v0
.end method

.method protected onMessageChannelReady(Ljava/lang/Throwable;)Z
    .locals 2

    .line 708
    new-instance v0, Lo/onCreateSupportNavigateUpTaskStack$extraCallback;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Lo/onCreateSupportNavigateUpTaskStack$extraCallback;-><init>(Ljava/lang/Throwable;)V

    .line 709
    sget-object p1, Lo/onCreateSupportNavigateUpTaskStack;->ICustomTabsCallback:Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;

    invoke-virtual {p1, p0, v1, v0}, Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;->onNavigationEvent(Lo/onCreateSupportNavigateUpTaskStack;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 710
    invoke-static {p0}, Lo/onCreateSupportNavigateUpTaskStack;->extraCallback(Lo/onCreateSupportNavigateUpTaskStack;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 5193
    :cond_1
    throw v1
.end method

.method public final onNavigationEvent(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 653
    iget-object v0, p0, Lo/onCreateSupportNavigateUpTaskStack;->onMessageChannelReady:Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;

    .line 654
    sget-object v1, Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;->onPostMessage:Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;

    if-eq v0, v1, :cond_2

    .line 655
    new-instance v1, Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;

    invoke-direct {v1, p1, p2}, Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 657
    :cond_0
    iput-object v0, v1, Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;->ICustomTabsCallback:Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;

    .line 658
    sget-object v2, Lo/onCreateSupportNavigateUpTaskStack;->ICustomTabsCallback:Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;

    invoke-virtual {v2, p0, v0, v1}, Lo/onCreateSupportNavigateUpTaskStack$onPostMessage;->ICustomTabsCallback(Lo/onCreateSupportNavigateUpTaskStack;Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 661
    :cond_1
    iget-object v0, p0, Lo/onCreateSupportNavigateUpTaskStack;->onMessageChannelReady:Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;

    .line 662
    sget-object v2, Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;->onPostMessage:Lo/onCreateSupportNavigateUpTaskStack$ICustomTabsCallback;

    if-ne v0, v2, :cond_0

    .line 666
    :cond_2
    invoke-static {p1, p2}, Lo/onCreateSupportNavigateUpTaskStack;->extraCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    .line 4193
    :cond_3
    throw v0

    .line 3193
    :cond_4
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    invoke-virtual {p0}, Lo/onCreateSupportNavigateUpTaskStack;->isCancelled()Z

    move-result v1

    const-string v2, "]"

    if-eqz v1, :cond_0

    const-string v1, "CANCELLED"

    .line 975
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 976
    :cond_0
    invoke-virtual {p0}, Lo/onCreateSupportNavigateUpTaskStack;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 977
    invoke-direct {p0, v0}, Lo/onCreateSupportNavigateUpTaskStack;->ICustomTabsCallback(Ljava/lang/StringBuilder;)V

    goto/16 :goto_2

    .line 8008
    :cond_1
    :try_start_0
    iget-object v1, p0, Lo/onCreateSupportNavigateUpTaskStack;->onNavigationEvent:Ljava/lang/Object;

    .line 8009
    instance-of v3, v1, Lo/onCreateSupportNavigateUpTaskStack$asInterface;

    if-eqz v3, :cond_3

    .line 8010
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setFuture=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v1, Lo/onCreateSupportNavigateUpTaskStack$asInterface;

    iget-object v1, v1, Lo/onCreateSupportNavigateUpTaskStack$asInterface;->onNavigationEvent:Lo/getBatteryLevel;

    if-ne v1, p0, :cond_2

    const-string/jumbo v1, "this future"

    goto :goto_0

    .line 8042
    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 8010
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 8011
    :cond_3
    instance-of v1, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_4

    .line 8012
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "remaining delay=["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, p0

    check-cast v3, Ljava/util/concurrent/ScheduledFuture;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8013
    invoke-interface {v3, v4}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 985
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception thrown from implementation: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_5

    .line 989
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "PENDING, info=["

    .line 990
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 991
    :cond_5
    invoke-virtual {p0}, Lo/onCreateSupportNavigateUpTaskStack;->isDone()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 992
    invoke-direct {p0, v0}, Lo/onCreateSupportNavigateUpTaskStack;->ICustomTabsCallback(Ljava/lang/StringBuilder;)V

    goto :goto_2

    :cond_6
    const-string v1, "PENDING"

    .line 994
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
