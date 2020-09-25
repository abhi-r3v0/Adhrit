.class public abstract Lo/isBrowsable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getBatteryLevel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/isBrowsable$asInterface;,
        Lo/isBrowsable$ICustomTabsCallback;,
        Lo/isBrowsable$onMessageChannelReady;,
        Lo/isBrowsable$onRelationshipValidationResult;,
        Lo/isBrowsable$onPostMessage;,
        Lo/isBrowsable$extraCallback;,
        Lo/isBrowsable$onNavigationEvent;,
        Lo/isBrowsable$ICustomTabsCallback$Stub;
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
.field static final ICustomTabsCallback:Z

.field private static final asBinder:Ljava/util/logging/Logger;

.field static final onMessageChannelReady:Lo/isBrowsable$onMessageChannelReady;

.field private static final onTransact:Ljava/lang/Object;


# instance fields
.field volatile extraCallback:Lo/isBrowsable$onNavigationEvent;

.field volatile onNavigationEvent:Ljava/lang/Object;

.field volatile onPostMessage:Lo/isBrowsable$ICustomTabsCallback$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 64
    const-class v0, Lo/isBrowsable;

    const-string v1, "guava.concurrent.generate_cancellation_cause"

    const-string v2, "false"

    .line 66
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lo/isBrowsable;->ICustomTabsCallback:Z

    .line 69
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lo/isBrowsable;->asBinder:Ljava/util/logging/Logger;

    .line 85
    :try_start_0
    new-instance v1, Lo/isBrowsable$ICustomTabsCallback;

    const-class v2, Lo/isBrowsable$ICustomTabsCallback$Stub;

    const-class v3, Ljava/lang/Thread;

    const-string v4, "ICustomTabsCallback"

    .line 87
    invoke-static {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    const-class v2, Lo/isBrowsable$ICustomTabsCallback$Stub;

    const-class v4, Lo/isBrowsable$ICustomTabsCallback$Stub;

    const-string v5, "onMessageChannelReady"

    .line 88
    invoke-static {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    const-class v2, Lo/isBrowsable$ICustomTabsCallback$Stub;

    const-string v5, "onPostMessage"

    .line 89
    invoke-static {v0, v2, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    const-class v2, Lo/isBrowsable$onNavigationEvent;

    const-string v6, "extraCallback"

    .line 90
    invoke-static {v0, v2, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    const-class v2, Ljava/lang/Object;

    const-string v7, "onNavigationEvent"

    .line 94
    invoke-static {v0, v2, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lo/isBrowsable$ICustomTabsCallback;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 101
    new-instance v1, Lo/isBrowsable$asInterface;

    invoke-direct {v1}, Lo/isBrowsable$asInterface;-><init>()V

    .line 104
    :goto_0
    sput-object v1, Lo/isBrowsable;->onMessageChannelReady:Lo/isBrowsable$onMessageChannelReady;

    if-eqz v0, :cond_0

    .line 114
    sget-object v1, Lo/isBrowsable;->asBinder:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "SafeAtomicHelper is broken!"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/isBrowsable;->onTransact:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ICustomTabsCallback(Lo/getBatteryLevel;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getBatteryLevel<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 800
    instance-of v0, p0, Lo/isBrowsable;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 806
    check-cast p0, Lo/isBrowsable;

    iget-object p0, p0, Lo/isBrowsable;->onNavigationEvent:Ljava/lang/Object;

    .line 807
    instance-of v0, p0, Lo/isBrowsable$onPostMessage;

    if-eqz v0, :cond_1

    .line 811
    move-object v0, p0

    check-cast v0, Lo/isBrowsable$onPostMessage;

    .line 812
    iget-boolean v2, v0, Lo/isBrowsable$onPostMessage;->onMessageChannelReady:Z

    if-eqz v2, :cond_1

    .line 813
    iget-object p0, v0, Lo/isBrowsable$onPostMessage;->ICustomTabsCallback:Ljava/lang/Throwable;

    if-eqz p0, :cond_0

    new-instance p0, Lo/isBrowsable$onPostMessage;

    iget-object v0, v0, Lo/isBrowsable$onPostMessage;->ICustomTabsCallback:Ljava/lang/Throwable;

    invoke-direct {p0, v1, v0}, Lo/isBrowsable$onPostMessage;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lo/isBrowsable$onPostMessage;->onNavigationEvent:Lo/isBrowsable$onPostMessage;

    :cond_1
    :goto_0
    return-object p0

    .line 819
    :cond_2
    invoke-interface {p0}, Lo/getBatteryLevel;->isCancelled()Z

    move-result v0

    .line 821
    sget-boolean v2, Lo/isBrowsable;->ICustomTabsCallback:Z

    xor-int/lit8 v2, v2, 0x1

    and-int/2addr v2, v0

    if-eqz v2, :cond_3

    .line 822
    sget-object p0, Lo/isBrowsable$onPostMessage;->onNavigationEvent:Lo/isBrowsable$onPostMessage;

    return-object p0

    .line 826
    :cond_3
    :try_start_0
    invoke-static {p0}, Lo/isBrowsable;->extraCallback(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 827
    sget-object p0, Lo/isBrowsable;->onTransact:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_4
    return-object v2

    :catchall_0
    move-exception p0

    .line 841
    new-instance v0, Lo/isBrowsable$extraCallback;

    invoke-direct {v0, p0}, Lo/isBrowsable$extraCallback;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :catch_0
    move-exception v2

    if-nez v0, :cond_5

    .line 832
    new-instance v0, Lo/isBrowsable$extraCallback;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Lo/isBrowsable$extraCallback;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 839
    :cond_5
    new-instance p0, Lo/isBrowsable$onPostMessage;

    invoke-direct {p0, v1, v2}, Lo/isBrowsable$onPostMessage;-><init>(ZLjava/lang/Throwable;)V

    return-object p0

    :catch_1
    move-exception p0

    .line 829
    new-instance v0, Lo/isBrowsable$extraCallback;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, p0}, Lo/isBrowsable$extraCallback;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private ICustomTabsCallback()V
    .locals 3

    .line 939
    :cond_0
    iget-object v0, p0, Lo/isBrowsable;->onPostMessage:Lo/isBrowsable$ICustomTabsCallback$Stub;

    .line 940
    sget-object v1, Lo/isBrowsable;->onMessageChannelReady:Lo/isBrowsable$onMessageChannelReady;

    sget-object v2, Lo/isBrowsable$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/isBrowsable$ICustomTabsCallback$Stub;

    invoke-virtual {v1, p0, v0, v2}, Lo/isBrowsable$onMessageChannelReady;->extraCallback(Lo/isBrowsable;Lo/isBrowsable$ICustomTabsCallback$Stub;Lo/isBrowsable$ICustomTabsCallback$Stub;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    if-eqz v0, :cond_2

    .line 6151
    iget-object v1, v0, Lo/isBrowsable$ICustomTabsCallback$Stub;->ICustomTabsCallback:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 6153
    iput-object v2, v0, Lo/isBrowsable$ICustomTabsCallback$Stub;->ICustomTabsCallback:Ljava/lang/Thread;

    .line 6154
    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 942
    :cond_1
    iget-object v0, v0, Lo/isBrowsable$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/isBrowsable$ICustomTabsCallback$Stub;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static ICustomTabsCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 5

    .line 1053
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1058
    sget-object v1, Lo/isBrowsable;->asBinder:Ljava/util/logging/Logger;

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

.method private static extraCallback(Ljava/util/concurrent/Future;)Ljava/lang/Object;
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

    .line 853
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 860
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

    .line 862
    :cond_1
    throw p0

    :catch_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static extraCallback(Lo/isBrowsable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isBrowsable<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 871
    :cond_0
    invoke-direct {p0}, Lo/isBrowsable;->ICustomTabsCallback()V

    .line 879
    invoke-direct {p0, v0}, Lo/isBrowsable;->onNavigationEvent(Lo/isBrowsable$onNavigationEvent;)Lo/isBrowsable$onNavigationEvent;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_3

    .line 883
    iget-object v0, p0, Lo/isBrowsable$onNavigationEvent;->onNavigationEvent:Lo/isBrowsable$onNavigationEvent;

    .line 884
    iget-object v1, p0, Lo/isBrowsable$onNavigationEvent;->onPostMessage:Ljava/lang/Runnable;

    .line 885
    instance-of v2, v1, Lo/isBrowsable$onRelationshipValidationResult;

    if-eqz v2, :cond_1

    .line 886
    check-cast v1, Lo/isBrowsable$onRelationshipValidationResult;

    .line 893
    iget-object p0, v1, Lo/isBrowsable$onRelationshipValidationResult;->ICustomTabsCallback:Lo/isBrowsable;

    .line 894
    iget-object v2, p0, Lo/isBrowsable;->onNavigationEvent:Ljava/lang/Object;

    if-ne v2, v1, :cond_2

    .line 895
    iget-object v2, v1, Lo/isBrowsable$onRelationshipValidationResult;->onPostMessage:Lo/getBatteryLevel;

    invoke-static {v2}, Lo/isBrowsable;->ICustomTabsCallback(Lo/getBatteryLevel;)Ljava/lang/Object;

    move-result-object v2

    .line 896
    sget-object v3, Lo/isBrowsable;->onMessageChannelReady:Lo/isBrowsable$onMessageChannelReady;

    invoke-virtual {v3, p0, v1, v2}, Lo/isBrowsable$onMessageChannelReady;->extraCallback(Lo/isBrowsable;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 902
    :cond_1
    iget-object p0, p0, Lo/isBrowsable$onNavigationEvent;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    invoke-static {v1, p0}, Lo/isBrowsable;->ICustomTabsCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_2
    :goto_1
    move-object p0, v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method static onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 1201
    throw p0
.end method

.method private onMessageChannelReady(Ljava/lang/StringBuilder;)V
    .locals 3

    const-string v0, "]"

    .line 1023
    :try_start_0
    invoke-static {p0}, Lo/isBrowsable;->extraCallback(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SUCCESS, result=["

    .line 1024
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v1, p0, :cond_0

    const-string/jumbo v1, "this future"

    goto :goto_0

    .line 8044
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1024
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

    .line 1030
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " thrown from get()]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catch_1
    const-string v0, "CANCELLED"

    .line 1028
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catch_2
    move-exception v1

    const-string v2, "FAILURE, cause=["

    .line 1026
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private onNavigationEvent(Lo/isBrowsable$onNavigationEvent;)Lo/isBrowsable$onNavigationEvent;
    .locals 4

    .line 960
    :cond_0
    iget-object v0, p0, Lo/isBrowsable;->extraCallback:Lo/isBrowsable$onNavigationEvent;

    .line 961
    sget-object v1, Lo/isBrowsable;->onMessageChannelReady:Lo/isBrowsable$onMessageChannelReady;

    sget-object v2, Lo/isBrowsable$onNavigationEvent;->extraCallback:Lo/isBrowsable$onNavigationEvent;

    invoke-virtual {v1, p0, v0, v2}, Lo/isBrowsable$onMessageChannelReady;->ICustomTabsCallback(Lo/isBrowsable;Lo/isBrowsable$onNavigationEvent;Lo/isBrowsable$onNavigationEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    :goto_0
    if-eqz p1, :cond_1

    .line 965
    iget-object v1, p1, Lo/isBrowsable$onNavigationEvent;->onNavigationEvent:Lo/isBrowsable$onNavigationEvent;

    .line 966
    iput-object v0, p1, Lo/isBrowsable$onNavigationEvent;->onNavigationEvent:Lo/isBrowsable$onNavigationEvent;

    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    :cond_1
    return-object v0
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
    instance-of v0, p0, Lo/isBrowsable$onPostMessage;

    if-nez v0, :cond_2

    .line 517
    instance-of v0, p0, Lo/isBrowsable$extraCallback;

    if-nez v0, :cond_1

    .line 519
    sget-object v0, Lo/isBrowsable;->onTransact:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0

    .line 518
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p0, Lo/isBrowsable$extraCallback;

    iget-object p0, p0, Lo/isBrowsable$extraCallback;->onPostMessage:Ljava/lang/Throwable;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 514
    :cond_2
    check-cast p0, Lo/isBrowsable$onPostMessage;

    iget-object p0, p0, Lo/isBrowsable$onPostMessage;->ICustomTabsCallback:Ljava/lang/Throwable;

    .line 3192
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task was cancelled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 3193
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 514
    throw v0
.end method

.method private onPostMessage(Lo/isBrowsable$ICustomTabsCallback$Stub;)V
    .locals 4

    const/4 v0, 0x0

    .line 171
    iput-object v0, p1, Lo/isBrowsable$ICustomTabsCallback$Stub;->ICustomTabsCallback:Ljava/lang/Thread;

    .line 175
    :cond_0
    :goto_0
    iget-object p1, p0, Lo/isBrowsable;->onPostMessage:Lo/isBrowsable$ICustomTabsCallback$Stub;

    .line 176
    sget-object v1, Lo/isBrowsable$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/isBrowsable$ICustomTabsCallback$Stub;

    if-ne p1, v1, :cond_1

    return-void

    :cond_1
    move-object v1, v0

    :goto_1
    if-eqz p1, :cond_5

    .line 181
    iget-object v2, p1, Lo/isBrowsable$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/isBrowsable$ICustomTabsCallback$Stub;

    .line 182
    iget-object v3, p1, Lo/isBrowsable$ICustomTabsCallback$Stub;->ICustomTabsCallback:Ljava/lang/Thread;

    if-eqz v3, :cond_2

    move-object v1, p1

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    .line 185
    iput-object v2, v1, Lo/isBrowsable$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/isBrowsable$ICustomTabsCallback$Stub;

    .line 186
    iget-object p1, v1, Lo/isBrowsable$ICustomTabsCallback$Stub;->ICustomTabsCallback:Ljava/lang/Thread;

    if-nez p1, :cond_4

    goto :goto_0

    .line 190
    :cond_3
    sget-object v3, Lo/isBrowsable;->onMessageChannelReady:Lo/isBrowsable$onMessageChannelReady;

    invoke-virtual {v3, p0, p1, v2}, Lo/isBrowsable$onMessageChannelReady;->extraCallback(Lo/isBrowsable;Lo/isBrowsable$ICustomTabsCallback$Stub;Lo/isBrowsable$ICustomTabsCallback$Stub;)Z

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
.method public final cancel(Z)Z
    .locals 7

    .line 555
    iget-object v0, p0, Lo/isBrowsable;->onNavigationEvent:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 557
    :goto_0
    instance-of v4, v0, Lo/isBrowsable$onRelationshipValidationResult;

    or-int/2addr v3, v4

    if-eqz v3, :cond_7

    .line 560
    sget-boolean v3, Lo/isBrowsable;->ICustomTabsCallback:Z

    if-eqz v3, :cond_1

    new-instance v3, Lo/isBrowsable$onPostMessage;

    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string v5, "Future.cancel() was called."

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1, v4}, Lo/isBrowsable$onPostMessage;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    sget-object v3, Lo/isBrowsable$onPostMessage;->extraCallback:Lo/isBrowsable$onPostMessage;

    goto :goto_1

    :cond_2
    sget-object v3, Lo/isBrowsable$onPostMessage;->onNavigationEvent:Lo/isBrowsable$onPostMessage;

    :goto_1
    const/4 v5, 0x0

    move-object v4, p0

    .line 570
    :cond_3
    :goto_2
    sget-object v6, Lo/isBrowsable;->onMessageChannelReady:Lo/isBrowsable$onMessageChannelReady;

    invoke-virtual {v6, v4, v0, v3}, Lo/isBrowsable$onMessageChannelReady;->extraCallback(Lo/isBrowsable;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 577
    invoke-static {v4}, Lo/isBrowsable;->extraCallback(Lo/isBrowsable;)V

    .line 578
    instance-of v4, v0, Lo/isBrowsable$onRelationshipValidationResult;

    if-eqz v4, :cond_8

    .line 582
    check-cast v0, Lo/isBrowsable$onRelationshipValidationResult;

    iget-object v0, v0, Lo/isBrowsable$onRelationshipValidationResult;->onPostMessage:Lo/getBatteryLevel;

    .line 583
    instance-of v4, v0, Lo/isBrowsable;

    if-eqz v4, :cond_5

    .line 592
    move-object v4, v0

    check-cast v4, Lo/isBrowsable;

    .line 594
    iget-object v0, v4, Lo/isBrowsable;->onNavigationEvent:Ljava/lang/Object;

    if-nez v0, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    .line 595
    :goto_3
    instance-of v6, v0, Lo/isBrowsable$onRelationshipValidationResult;

    or-int/2addr v5, v6

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    goto :goto_2

    .line 601
    :cond_5
    invoke-interface {v0, p1}, Lo/getBatteryLevel;->cancel(Z)Z

    goto :goto_4

    .line 607
    :cond_6
    iget-object v0, v4, Lo/isBrowsable;->onNavigationEvent:Ljava/lang/Object;

    .line 608
    instance-of v6, v0, Lo/isBrowsable$onRelationshipValidationResult;

    if-nez v6, :cond_3

    move v1, v5

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :cond_8
    :goto_4
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

    .line 685
    sget-object p1, Lo/isBrowsable;->onTransact:Ljava/lang/Object;

    .line 686
    :cond_0
    sget-object v0, Lo/isBrowsable;->onMessageChannelReady:Lo/isBrowsable$onMessageChannelReady;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lo/isBrowsable$onMessageChannelReady;->extraCallback(Lo/isBrowsable;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 687
    invoke-static {p0}, Lo/isBrowsable;->extraCallback(Lo/isBrowsable;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
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
    iget-object v0, p0, Lo/isBrowsable;->onNavigationEvent:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 474
    :goto_0
    instance-of v4, v0, Lo/isBrowsable$onRelationshipValidationResult;

    xor-int/2addr v4, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 475
    invoke-static {v0}, Lo/isBrowsable;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 477
    :cond_1
    iget-object v0, p0, Lo/isBrowsable;->onPostMessage:Lo/isBrowsable$ICustomTabsCallback$Stub;

    .line 478
    sget-object v3, Lo/isBrowsable$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/isBrowsable$ICustomTabsCallback$Stub;

    if-eq v0, v3, :cond_7

    .line 479
    new-instance v3, Lo/isBrowsable$ICustomTabsCallback$Stub;

    invoke-direct {v3}, Lo/isBrowsable$ICustomTabsCallback$Stub;-><init>()V

    .line 3143
    :cond_2
    sget-object v4, Lo/isBrowsable;->onMessageChannelReady:Lo/isBrowsable$onMessageChannelReady;

    invoke-virtual {v4, v3, v0}, Lo/isBrowsable$onMessageChannelReady;->extraCallback(Lo/isBrowsable$ICustomTabsCallback$Stub;Lo/isBrowsable$ICustomTabsCallback$Stub;)V

    .line 482
    sget-object v4, Lo/isBrowsable;->onMessageChannelReady:Lo/isBrowsable$onMessageChannelReady;

    invoke-virtual {v4, p0, v0, v3}, Lo/isBrowsable$onMessageChannelReady;->extraCallback(Lo/isBrowsable;Lo/isBrowsable$ICustomTabsCallback$Stub;Lo/isBrowsable$ICustomTabsCallback$Stub;)Z

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
    iget-object v0, p0, Lo/isBrowsable;->onNavigationEvent:Ljava/lang/Object;

    if-eqz v0, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 496
    :goto_1
    instance-of v5, v0, Lo/isBrowsable$onRelationshipValidationResult;

    xor-int/2addr v5, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 497
    invoke-static {v0}, Lo/isBrowsable;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 489
    :cond_5
    invoke-direct {p0, v3}, Lo/isBrowsable;->onPostMessage(Lo/isBrowsable$ICustomTabsCallback$Stub;)V

    .line 490
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 501
    :cond_6
    iget-object v0, p0, Lo/isBrowsable;->onPostMessage:Lo/isBrowsable$ICustomTabsCallback$Stub;

    .line 502
    sget-object v4, Lo/isBrowsable$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/isBrowsable$ICustomTabsCallback$Stub;

    if-ne v0, v4, :cond_2

    .line 506
    :cond_7
    iget-object v0, p0, Lo/isBrowsable;->onNavigationEvent:Ljava/lang/Object;

    invoke-static {v0}, Lo/isBrowsable;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 359
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 361
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_16

    .line 364
    iget-object v6, v0, Lo/isBrowsable;->onNavigationEvent:Ljava/lang/Object;

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 365
    :goto_0
    instance-of v10, v6, Lo/isBrowsable$onRelationshipValidationResult;

    xor-int/2addr v10, v8

    and-int/2addr v9, v10

    if-eqz v9, :cond_1

    .line 366
    invoke-static {v6}, Lo/isBrowsable;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_1
    const-wide/16 v9, 0x0

    cmp-long v6, v4, v9

    if-lez v6, :cond_2

    .line 369
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

    .line 372
    iget-object v6, v0, Lo/isBrowsable;->onPostMessage:Lo/isBrowsable$ICustomTabsCallback$Stub;

    .line 373
    sget-object v15, Lo/isBrowsable$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/isBrowsable$ICustomTabsCallback$Stub;

    if-eq v6, v15, :cond_9

    .line 374
    new-instance v15, Lo/isBrowsable$ICustomTabsCallback$Stub;

    invoke-direct {v15}, Lo/isBrowsable$ICustomTabsCallback$Stub;-><init>()V

    .line 2143
    :cond_3
    sget-object v7, Lo/isBrowsable;->onMessageChannelReady:Lo/isBrowsable$onMessageChannelReady;

    invoke-virtual {v7, v15, v6}, Lo/isBrowsable$onMessageChannelReady;->extraCallback(Lo/isBrowsable$ICustomTabsCallback$Stub;Lo/isBrowsable$ICustomTabsCallback$Stub;)V

    .line 377
    sget-object v7, Lo/isBrowsable;->onMessageChannelReady:Lo/isBrowsable$onMessageChannelReady;

    invoke-virtual {v7, v0, v6, v15}, Lo/isBrowsable$onMessageChannelReady;->extraCallback(Lo/isBrowsable;Lo/isBrowsable$ICustomTabsCallback$Stub;Lo/isBrowsable$ICustomTabsCallback$Stub;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 379
    :cond_4
    invoke-static {v0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 382
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_7

    .line 389
    iget-object v4, v0, Lo/isBrowsable;->onNavigationEvent:Ljava/lang/Object;

    if-eqz v4, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    .line 390
    :goto_2
    instance-of v6, v4, Lo/isBrowsable$onRelationshipValidationResult;

    xor-int/2addr v6, v8

    and-int/2addr v5, v6

    if-eqz v5, :cond_6

    .line 391
    invoke-static {v4}, Lo/isBrowsable;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 395
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    cmp-long v6, v4, v13

    if-gez v6, :cond_4

    .line 399
    invoke-direct {v0, v15}, Lo/isBrowsable;->onPostMessage(Lo/isBrowsable$ICustomTabsCallback$Stub;)V

    goto :goto_3

    .line 383
    :cond_7
    invoke-direct {v0, v15}, Lo/isBrowsable;->onPostMessage(Lo/isBrowsable$ICustomTabsCallback$Stub;)V

    .line 384
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 404
    :cond_8
    iget-object v6, v0, Lo/isBrowsable;->onPostMessage:Lo/isBrowsable$ICustomTabsCallback$Stub;

    .line 405
    sget-object v7, Lo/isBrowsable$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/isBrowsable$ICustomTabsCallback$Stub;

    if-ne v6, v7, :cond_3

    .line 409
    :cond_9
    iget-object v1, v0, Lo/isBrowsable;->onNavigationEvent:Ljava/lang/Object;

    invoke-static {v1}, Lo/isBrowsable;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_a
    :goto_3
    cmp-long v6, v4, v9

    if-lez v6, :cond_e

    .line 414
    iget-object v4, v0, Lo/isBrowsable;->onNavigationEvent:Ljava/lang/Object;

    if-eqz v4, :cond_b

    const/4 v5, 0x1

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    .line 415
    :goto_4
    instance-of v6, v4, Lo/isBrowsable$onRelationshipValidationResult;

    xor-int/2addr v6, v8

    and-int/2addr v5, v6

    if-eqz v5, :cond_c

    .line 416
    invoke-static {v4}, Lo/isBrowsable;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 418
    :cond_c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_d

    .line 421
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    goto :goto_3

    .line 419
    :cond_d
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 424
    :cond_e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 425
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 426
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

    .line 431
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (plus "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    neg-long v4, v4

    .line 433
    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v11}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v11

    .line 434
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

    .line 438
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v16, :cond_11

    .line 440
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 442
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_12
    if-eqz v16, :cond_13

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " nanoseconds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 448
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "delay)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 453
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lo/isBrowsable;->isDone()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 454
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

    .line 456
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

    .line 362
    :cond_16
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
.end method

.method public final isCancelled()Z
    .locals 1

    .line 536
    iget-object v0, p0, Lo/isBrowsable;->onNavigationEvent:Ljava/lang/Object;

    .line 537
    instance-of v0, v0, Lo/isBrowsable$onPostMessage;

    return v0
.end method

.method public final isDone()Z
    .locals 3

    .line 530
    iget-object v0, p0, Lo/isBrowsable;->onNavigationEvent:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 531
    :goto_0
    instance-of v0, v0, Lo/isBrowsable$onRelationshipValidationResult;

    xor-int/2addr v0, v1

    and-int/2addr v0, v2

    return v0
.end method

.method public final onNavigationEvent(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 655
    iget-object v0, p0, Lo/isBrowsable;->extraCallback:Lo/isBrowsable$onNavigationEvent;

    .line 656
    sget-object v1, Lo/isBrowsable$onNavigationEvent;->extraCallback:Lo/isBrowsable$onNavigationEvent;

    if-eq v0, v1, :cond_2

    .line 657
    new-instance v1, Lo/isBrowsable$onNavigationEvent;

    invoke-direct {v1, p1, p2}, Lo/isBrowsable$onNavigationEvent;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 659
    :cond_0
    iput-object v0, v1, Lo/isBrowsable$onNavigationEvent;->onNavigationEvent:Lo/isBrowsable$onNavigationEvent;

    .line 660
    sget-object v2, Lo/isBrowsable;->onMessageChannelReady:Lo/isBrowsable$onMessageChannelReady;

    invoke-virtual {v2, p0, v0, v1}, Lo/isBrowsable$onMessageChannelReady;->ICustomTabsCallback(Lo/isBrowsable;Lo/isBrowsable$onNavigationEvent;Lo/isBrowsable$onNavigationEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 663
    :cond_1
    iget-object v0, p0, Lo/isBrowsable;->extraCallback:Lo/isBrowsable$onNavigationEvent;

    .line 664
    sget-object v2, Lo/isBrowsable$onNavigationEvent;->extraCallback:Lo/isBrowsable$onNavigationEvent;

    if-ne v0, v2, :cond_0

    .line 668
    :cond_2
    invoke-static {p1, p2}, Lo/isBrowsable;->ICustomTabsCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    .line 4201
    :cond_3
    throw v0

    .line 3201
    :cond_4
    throw v0
.end method

.method protected onNavigationEvent(Ljava/lang/Throwable;)Z
    .locals 2

    .line 710
    new-instance v0, Lo/isBrowsable$extraCallback;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Lo/isBrowsable$extraCallback;-><init>(Ljava/lang/Throwable;)V

    .line 711
    sget-object p1, Lo/isBrowsable;->onMessageChannelReady:Lo/isBrowsable$onMessageChannelReady;

    invoke-virtual {p1, p0, v1, v0}, Lo/isBrowsable$onMessageChannelReady;->extraCallback(Lo/isBrowsable;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 712
    invoke-static {p0}, Lo/isBrowsable;->extraCallback(Lo/isBrowsable;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 5201
    :cond_1
    throw v1
.end method

.method protected onPostMessage()Ljava/lang/String;
    .locals 3

    .line 1010
    iget-object v0, p0, Lo/isBrowsable;->onNavigationEvent:Ljava/lang/Object;

    .line 1011
    instance-of v1, v0, Lo/isBrowsable$onRelationshipValidationResult;

    if-eqz v1, :cond_1

    .line 1012
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setFuture=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v0, Lo/isBrowsable$onRelationshipValidationResult;

    iget-object v0, v0, Lo/isBrowsable$onRelationshipValidationResult;->onPostMessage:Lo/getBatteryLevel;

    if-ne v0, p0, :cond_0

    const-string/jumbo v0, "this future"

    goto :goto_0

    .line 7044
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1012
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1013
    :cond_1
    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    .line 1014
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "remaining delay=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Ljava/util/concurrent/ScheduledFuture;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1015
    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    invoke-virtual {p0}, Lo/isBrowsable;->isCancelled()Z

    move-result v1

    const-string v2, "]"

    if-eqz v1, :cond_0

    const-string v1, "CANCELLED"

    .line 977
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 978
    :cond_0
    invoke-virtual {p0}, Lo/isBrowsable;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 979
    invoke-direct {p0, v0}, Lo/isBrowsable;->onMessageChannelReady(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 983
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lo/isBrowsable;->onPostMessage()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 987
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception thrown from implementation: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 991
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "PENDING, info=["

    .line 992
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 993
    :cond_2
    invoke-virtual {p0}, Lo/isBrowsable;->isDone()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 994
    invoke-direct {p0, v0}, Lo/isBrowsable;->onMessageChannelReady(Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_3
    const-string v1, "PENDING"

    .line 996
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
