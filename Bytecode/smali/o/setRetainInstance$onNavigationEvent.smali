.class public final Lo/setRetainInstance$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isTrackingStopped;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setRetainInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/helper/stringrepo/FirestoreProvider$Companion;",
        "",
        "()V",
        "COLLECTION",
        "",
        "DEFAULT_COHORT",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final extraCallback:Ljava/util/concurrent/Executor;

.field private final onPostMessage:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 1021
    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lo/setRetainInstance$onNavigationEvent;->extraCallback:Ljava/util/concurrent/Executor;

    .line 1022
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lo/setRetainInstance$onNavigationEvent;->onPostMessage:Ljava/util/Deque;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1215
    throw p1
.end method


# virtual methods
.method public final declared-synchronized extraCallback(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    .line 2030
    :try_start_0
    iget-object v0, p0, Lo/setRetainInstance$onNavigationEvent;->extraCallback:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2032
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onNavigationEvent(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    .line 2054
    :try_start_0
    iget-object v0, p0, Lo/setRetainInstance$onNavigationEvent;->onPostMessage:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2055
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
