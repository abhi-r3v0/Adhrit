.class public Lo/verifyInsideTransaction;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/verifyInsideTransaction$ICustomTabsCallback;,
        Lo/verifyInsideTransaction$onTransact;,
        Lo/verifyInsideTransaction$onPostMessage;,
        Lo/verifyInsideTransaction$asBinder;,
        Lo/verifyInsideTransaction$onNavigationEvent;,
        Lo/verifyInsideTransaction$onMessageChannelReady;,
        Lo/verifyInsideTransaction$extraCallback;
    }
.end annotation


# static fields
.field private static final extraCallback:Lo/replaceInArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/replaceInArray<",
            "Ljava/lang/Object<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final onNavigationEvent:Lo/verifyInsideTransaction;

.field static final onPostMessage:Ljava/util/logging/Logger;


# instance fields
.field private ICustomTabsCallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/verifyInsideTransaction$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private asInterface:I

.field private onMessageChannelReady:Lo/verifyInsideTransaction$onNavigationEvent;

.field private onTransact:Lo/verifyInsideTransaction$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 100
    const-class v0, Lo/verifyInsideTransaction;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lo/verifyInsideTransaction;->onPostMessage:Ljava/util/logging/Logger;

    .line 102
    new-instance v0, Lo/replaceInArray;

    invoke-direct {v0}, Lo/replaceInArray;-><init>()V

    sput-object v0, Lo/verifyInsideTransaction;->extraCallback:Lo/replaceInArray;

    .line 117
    new-instance v0, Lo/verifyInsideTransaction;

    invoke-direct {v0}, Lo/verifyInsideTransaction;-><init>()V

    sput-object v0, Lo/verifyInsideTransaction;->onNavigationEvent:Lo/verifyInsideTransaction;

    return-void
.end method

.method private constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v0, Lo/verifyInsideTransaction$onTransact;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/verifyInsideTransaction$onTransact;-><init>(Lo/verifyInsideTransaction;B)V

    iput-object v0, p0, Lo/verifyInsideTransaction;->onMessageChannelReady:Lo/verifyInsideTransaction$onNavigationEvent;

    const/4 v0, 0x0

    .line 210
    iput-object v0, p0, Lo/verifyInsideTransaction;->onTransact:Lo/verifyInsideTransaction$onMessageChannelReady;

    .line 212
    iput v1, p0, Lo/verifyInsideTransaction;->asInterface:I

    return-void
.end method

.method public static extraCallback()Lo/verifyInsideTransaction;
    .locals 1

    .line 1121
    sget-object v0, Lo/verifyInsideTransaction$extraCallback;->ICustomTabsCallback:Lo/verifyInsideTransaction$asBinder;

    .line 181
    invoke-virtual {v0}, Lo/verifyInsideTransaction$asBinder;->extraCallback()Lo/verifyInsideTransaction;

    move-result-object v0

    if-nez v0, :cond_0

    .line 183
    sget-object v0, Lo/verifyInsideTransaction;->onNavigationEvent:Lo/verifyInsideTransaction;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public ICustomTabsCallback()Ljava/lang/Throwable;
    .locals 3

    .line 476
    iget-object v0, p0, Lo/verifyInsideTransaction;->onTransact:Lo/verifyInsideTransaction$onMessageChannelReady;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3868
    :cond_0
    invoke-virtual {v0}, Lo/verifyInsideTransaction;->onPostMessage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3869
    iget-object v0, v0, Lo/verifyInsideTransaction$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/Throwable;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public ICustomTabsCallback(Lo/verifyInsideTransaction;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3121
    sget-object v0, Lo/verifyInsideTransaction$extraCallback;->ICustomTabsCallback:Lo/verifyInsideTransaction$asBinder;

    .line 448
    invoke-virtual {v0, p0, p1}, Lo/verifyInsideTransaction$asBinder;->extraCallback(Lo/verifyInsideTransaction;Lo/verifyInsideTransaction;)V

    return-void

    .line 3051
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "toAttach"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final asBinder()V
    .locals 7

    .line 557
    invoke-virtual {p0}, Lo/verifyInsideTransaction;->onMessageChannelReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 561
    :cond_0
    monitor-enter p0

    .line 562
    :try_start_0
    iget-object v0, p0, Lo/verifyInsideTransaction;->ICustomTabsCallback:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 563
    monitor-exit p0

    return-void

    .line 565
    :cond_1
    iget-object v0, p0, Lo/verifyInsideTransaction;->ICustomTabsCallback:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 566
    iput-object v1, p0, Lo/verifyInsideTransaction;->ICustomTabsCallback:Ljava/util/ArrayList;

    .line 567
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 572
    :goto_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 573
    invoke-virtual {v0, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/verifyInsideTransaction$onPostMessage;

    iget-object v3, v3, Lo/verifyInsideTransaction$onPostMessage;->onPostMessage:Lo/verifyInsideTransaction$onNavigationEvent;

    instance-of v3, v3, Lo/verifyInsideTransaction$onTransact;

    if-nez v3, :cond_2

    .line 574
    invoke-virtual {v0, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/verifyInsideTransaction$onPostMessage;

    .line 7024
    :try_start_1
    iget-object v4, v3, Lo/verifyInsideTransaction$onPostMessage;->extraCallback:Ljava/util/concurrent/Executor;

    invoke-interface {v4, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 7026
    sget-object v4, Lo/verifyInsideTransaction;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v6, "Exception notifying context listener"

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 577
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 578
    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/verifyInsideTransaction$onPostMessage;

    iget-object v2, v2, Lo/verifyInsideTransaction$onPostMessage;->onPostMessage:Lo/verifyInsideTransaction$onNavigationEvent;

    instance-of v2, v2, Lo/verifyInsideTransaction$onTransact;

    if-eqz v2, :cond_4

    .line 579
    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/verifyInsideTransaction$onPostMessage;

    .line 8024
    :try_start_2
    iget-object v3, v2, Lo/verifyInsideTransaction$onPostMessage;->extraCallback:Ljava/util/concurrent/Executor;

    invoke-interface {v3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v2

    .line 8026
    sget-object v3, Lo/verifyInsideTransaction;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v5, "Exception notifying context listener"

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 582
    :cond_5
    iget-object v0, p0, Lo/verifyInsideTransaction;->onTransact:Lo/verifyInsideTransaction$onMessageChannelReady;

    if-eqz v0, :cond_6

    .line 583
    iget-object v1, p0, Lo/verifyInsideTransaction;->onMessageChannelReady:Lo/verifyInsideTransaction$onNavigationEvent;

    invoke-virtual {v0, v1}, Lo/verifyInsideTransaction;->extraCallback(Lo/verifyInsideTransaction$onNavigationEvent;)V

    :cond_6
    return-void

    :catchall_2
    move-exception v0

    .line 567
    monitor-exit p0

    throw v0
.end method

.method public final extraCallback(Lo/verifyInsideTransaction$onNavigationEvent;)V
    .locals 2

    .line 528
    invoke-virtual {p0}, Lo/verifyInsideTransaction;->onMessageChannelReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 531
    :cond_0
    monitor-enter p0

    .line 532
    :try_start_0
    iget-object v0, p0, Lo/verifyInsideTransaction;->ICustomTabsCallback:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 533
    iget-object v0, p0, Lo/verifyInsideTransaction;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 534
    iget-object v1, p0, Lo/verifyInsideTransaction;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/verifyInsideTransaction$onPostMessage;

    iget-object v1, v1, Lo/verifyInsideTransaction$onPostMessage;->onPostMessage:Lo/verifyInsideTransaction$onNavigationEvent;

    if-ne v1, p1, :cond_1

    .line 535
    iget-object p1, p0, Lo/verifyInsideTransaction;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 542
    :cond_2
    :goto_1
    iget-object p1, p0, Lo/verifyInsideTransaction;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 543
    iget-object p1, p0, Lo/verifyInsideTransaction;->onTransact:Lo/verifyInsideTransaction$onMessageChannelReady;

    if-eqz p1, :cond_3

    .line 544
    iget-object p1, p0, Lo/verifyInsideTransaction;->onTransact:Lo/verifyInsideTransaction$onMessageChannelReady;

    iget-object v0, p0, Lo/verifyInsideTransaction;->onMessageChannelReady:Lo/verifyInsideTransaction$onNavigationEvent;

    invoke-virtual {p1, v0}, Lo/verifyInsideTransaction;->extraCallback(Lo/verifyInsideTransaction$onNavigationEvent;)V

    :cond_3
    const/4 p1, 0x0

    .line 546
    iput-object p1, p0, Lo/verifyInsideTransaction;->ICustomTabsCallback:Ljava/util/ArrayList;

    .line 549
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method onMessageChannelReady()Z
    .locals 1

    .line 402
    iget-object v0, p0, Lo/verifyInsideTransaction;->onTransact:Lo/verifyInsideTransaction$onMessageChannelReady;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onNavigationEvent()Lo/verifyInsideTransaction;
    .locals 1

    .line 2121
    sget-object v0, Lo/verifyInsideTransaction$extraCallback;->ICustomTabsCallback:Lo/verifyInsideTransaction$asBinder;

    .line 425
    invoke-virtual {v0, p0}, Lo/verifyInsideTransaction$asBinder;->onNavigationEvent(Lo/verifyInsideTransaction;)Lo/verifyInsideTransaction;

    move-result-object v0

    if-nez v0, :cond_0

    .line 427
    sget-object v0, Lo/verifyInsideTransaction;->onNavigationEvent:Lo/verifyInsideTransaction;

    :cond_0
    return-object v0
.end method

.method public final onNavigationEvent(Lo/verifyInsideTransaction$onNavigationEvent;Ljava/util/concurrent/Executor;)V
    .locals 2

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    .line 501
    invoke-virtual {p0}, Lo/verifyInsideTransaction;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 502
    new-instance v0, Lo/verifyInsideTransaction$onPostMessage;

    invoke-direct {v0, p0, p2, p1}, Lo/verifyInsideTransaction$onPostMessage;-><init>(Lo/verifyInsideTransaction;Ljava/util/concurrent/Executor;Lo/verifyInsideTransaction$onNavigationEvent;)V

    .line 504
    monitor-enter p0

    .line 505
    :try_start_0
    invoke-virtual {p0}, Lo/verifyInsideTransaction;->onPostMessage()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    .line 6024
    :try_start_1
    iget-object p1, v0, Lo/verifyInsideTransaction$onPostMessage;->extraCallback:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6026
    :try_start_2
    sget-object p2, Lo/verifyInsideTransaction;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v1, "Exception notifying context listener"

    invoke-virtual {p2, v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 508
    :cond_0
    iget-object p1, p0, Lo/verifyInsideTransaction;->ICustomTabsCallback:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    .line 511
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/verifyInsideTransaction;->ICustomTabsCallback:Ljava/util/ArrayList;

    .line 512
    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 513
    iget-object p1, p0, Lo/verifyInsideTransaction;->onTransact:Lo/verifyInsideTransaction$onMessageChannelReady;

    if-eqz p1, :cond_2

    .line 514
    iget-object p1, p0, Lo/verifyInsideTransaction;->onTransact:Lo/verifyInsideTransaction$onMessageChannelReady;

    iget-object p2, p0, Lo/verifyInsideTransaction;->onMessageChannelReady:Lo/verifyInsideTransaction$onNavigationEvent;

    sget-object v0, Lo/verifyInsideTransaction$ICustomTabsCallback;->extraCallback:Lo/verifyInsideTransaction$ICustomTabsCallback;

    invoke-virtual {p1, p2, v0}, Lo/verifyInsideTransaction;->onNavigationEvent(Lo/verifyInsideTransaction$onNavigationEvent;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 517
    :cond_1
    iget-object p1, p0, Lo/verifyInsideTransaction;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 520
    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_3
    return-void

    .line 5051
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "executor"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4051
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "cancellationListener"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onPostMessage()Z
    .locals 1

    .line 460
    iget-object v0, p0, Lo/verifyInsideTransaction;->onTransact:Lo/verifyInsideTransaction$onMessageChannelReady;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 463
    :cond_0
    invoke-virtual {v0}, Lo/verifyInsideTransaction;->onPostMessage()Z

    move-result v0

    return v0
.end method
