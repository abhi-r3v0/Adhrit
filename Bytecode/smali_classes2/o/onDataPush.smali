.class public final Lo/onDataPush;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onDataPush$extraCallback;,
        Lo/onDataPush$onMessageChannelReady;,
        Lo/onDataPush$onNavigationEvent;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/onDataPush;


# instance fields
.field private final onMessageChannelReady:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lo/onDataPush$onNavigationEvent<",
            "*>;",
            "Lo/onDataPush$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/onDataPush$onMessageChannelReady;

.field private onPostMessage:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lo/onDataPush;

    new-instance v1, Lo/onDataPush$3;

    invoke-direct {v1}, Lo/onDataPush$3;-><init>()V

    invoke-direct {v0, v1}, Lo/onDataPush;-><init>(Lo/onDataPush$onMessageChannelReady;)V

    sput-object v0, Lo/onDataPush;->ICustomTabsCallback:Lo/onDataPush;

    return-void
.end method

.method private constructor <init>(Lo/onDataPush$onMessageChannelReady;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lo/onDataPush;->onMessageChannelReady:Ljava/util/IdentityHashMap;

    .line 64
    iput-object p1, p0, Lo/onDataPush;->onNavigationEvent:Lo/onDataPush$onMessageChannelReady;

    return-void
.end method

.method public static ICustomTabsCallback(Lo/onDataPush$onNavigationEvent;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/onDataPush$onNavigationEvent<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 74
    sget-object v0, Lo/onDataPush;->ICustomTabsCallback:Lo/onDataPush;

    invoke-direct {v0, p0}, Lo/onDataPush;->onPostMessage(Lo/onDataPush$onNavigationEvent;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static extraCallback(Lo/onDataPush$onNavigationEvent;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/onDataPush$onNavigationEvent<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 92
    sget-object v0, Lo/onDataPush;->ICustomTabsCallback:Lo/onDataPush;

    invoke-direct {v0, p0, p1}, Lo/onDataPush;->onPostMessage(Lo/onDataPush$onNavigationEvent;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic extraCallback(Lo/onDataPush;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/onDataPush;->onPostMessage:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/onDataPush;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lo/onDataPush;->onPostMessage:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method private declared-synchronized onPostMessage(Lo/onDataPush$onNavigationEvent;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/onDataPush$onNavigationEvent<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 102
    :try_start_0
    iget-object v0, p0, Lo/onDataPush;->onMessageChannelReady:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onDataPush$extraCallback;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lo/onDataPush$extraCallback;

    invoke-interface {p1}, Lo/onDataPush$onNavigationEvent;->extraCallback()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/onDataPush$extraCallback;-><init>(Ljava/lang/Object;)V

    .line 105
    iget-object v1, p0, Lo/onDataPush;->onMessageChannelReady:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_0
    iget-object p1, v0, Lo/onDataPush$extraCallback;->onMessageChannelReady:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_1

    .line 108
    iget-object p1, v0, Lo/onDataPush$extraCallback;->onMessageChannelReady:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 p1, 0x0

    .line 109
    iput-object p1, v0, Lo/onDataPush$extraCallback;->onMessageChannelReady:Ljava/util/concurrent/ScheduledFuture;

    .line 111
    :cond_1
    iget p1, v0, Lo/onDataPush$extraCallback;->ICustomTabsCallback:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lo/onDataPush$extraCallback;->ICustomTabsCallback:I

    .line 112
    iget-object p1, v0, Lo/onDataPush$extraCallback;->extraCallback:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onPostMessage(Lo/onDataPush$onNavigationEvent;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/onDataPush$onNavigationEvent<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lo/onDataPush;->onMessageChannelReady:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onDataPush$extraCallback;

    if-eqz v0, :cond_8

    .line 123
    iget-object v1, v0, Lo/onDataPush$extraCallback;->extraCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "Releasing the wrong instance"

    if-eqz v1, :cond_7

    .line 124
    iget v1, v0, Lo/onDataPush$extraCallback;->ICustomTabsCallback:I

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v4, "Refcount has already reached zero"

    if-eqz v1, :cond_6

    .line 125
    iget v1, v0, Lo/onDataPush$extraCallback;->ICustomTabsCallback:I

    sub-int/2addr v1, v3

    iput v1, v0, Lo/onDataPush$extraCallback;->ICustomTabsCallback:I

    .line 126
    iget v1, v0, Lo/onDataPush$extraCallback;->ICustomTabsCallback:I

    if-nez v1, :cond_5

    .line 127
    iget-object v1, v0, Lo/onDataPush$extraCallback;->onMessageChannelReady:Ljava/util/concurrent/ScheduledFuture;

    if-nez v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    const-string v1, "Destroy task already scheduled"

    if-eqz v2, :cond_4

    .line 129
    iget-object v1, p0, Lo/onDataPush;->onPostMessage:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_3

    .line 130
    iget-object v1, p0, Lo/onDataPush;->onNavigationEvent:Lo/onDataPush$onMessageChannelReady;

    invoke-interface {v1}, Lo/onDataPush$onMessageChannelReady;->onPostMessage()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lo/onDataPush;->onPostMessage:Ljava/util/concurrent/ScheduledExecutorService;

    .line 132
    :cond_3
    iget-object v1, p0, Lo/onDataPush;->onPostMessage:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lo/compareAndPut;

    new-instance v3, Lo/onDataPush$1;

    invoke-direct {v3, p0, v0, p1, p2}, Lo/onDataPush$1;-><init>(Lo/onDataPush;Lo/onDataPush$extraCallback;Lo/onDataPush$onNavigationEvent;Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Lo/compareAndPut;-><init>(Ljava/lang/Runnable;)V

    const-wide/16 p1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, p1, p2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, v0, Lo/onDataPush$extraCallback;->onMessageChannelReady:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_2

    .line 2511
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_2
    const/4 p1, 0x0

    .line 153
    monitor-exit p0

    return-object p1

    .line 1511
    :cond_6
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1142
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_8
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "No cached instance found for "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic onPostMessage(Lo/onDataPush;)Ljava/util/IdentityHashMap;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/onDataPush;->onMessageChannelReady:Ljava/util/IdentityHashMap;

    return-object p0
.end method
