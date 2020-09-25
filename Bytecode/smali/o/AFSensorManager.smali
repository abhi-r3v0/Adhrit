.class public final Lo/AFSensorManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/facebook/infer/annotation/ThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AFSensorManager$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/AFSensorManager$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AFSensorManager$onNavigationEvent<",
            "TT;>;"
        }
    .end annotation
.end field

.field private extraCallback:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lo/AFSensorManager$onNavigationEvent<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private onNavigationEvent:Lo/AFSensorManager$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AFSensorManager$onNavigationEvent<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lo/AFSensorManager;->extraCallback:Landroid/util/SparseArray;

    return-void
.end method

.method private ICustomTabsCallback(Lo/AFSensorManager$onNavigationEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AFSensorManager$onNavigationEvent<",
            "TT;>;)V"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lo/AFSensorManager;->ICustomTabsCallback:Lo/AFSensorManager$onNavigationEvent;

    if-ne v0, p1, :cond_0

    return-void

    .line 126
    :cond_0
    invoke-direct {p0, p1}, Lo/AFSensorManager;->onNavigationEvent(Lo/AFSensorManager$onNavigationEvent;)V

    .line 128
    iget-object v0, p0, Lo/AFSensorManager;->ICustomTabsCallback:Lo/AFSensorManager$onNavigationEvent;

    if-nez v0, :cond_1

    .line 129
    iput-object p1, p0, Lo/AFSensorManager;->ICustomTabsCallback:Lo/AFSensorManager$onNavigationEvent;

    .line 130
    iput-object p1, p0, Lo/AFSensorManager;->onNavigationEvent:Lo/AFSensorManager$onNavigationEvent;

    return-void

    .line 134
    :cond_1
    iput-object v0, p1, Lo/AFSensorManager$onNavigationEvent;->extraCallback:Lo/AFSensorManager$onNavigationEvent;

    .line 135
    iget-object v0, p0, Lo/AFSensorManager;->ICustomTabsCallback:Lo/AFSensorManager$onNavigationEvent;

    iput-object p1, v0, Lo/AFSensorManager$onNavigationEvent;->onMessageChannelReady:Lo/AFSensorManager$onNavigationEvent;

    .line 136
    iput-object p1, p0, Lo/AFSensorManager;->ICustomTabsCallback:Lo/AFSensorManager$onNavigationEvent;

    return-void
.end method

.method private declared-synchronized onNavigationEvent(Lo/AFSensorManager$onNavigationEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AFSensorManager$onNavigationEvent<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p1, Lo/AFSensorManager$onNavigationEvent;->onMessageChannelReady:Lo/AFSensorManager$onNavigationEvent;

    .line 101
    iget-object v1, p1, Lo/AFSensorManager$onNavigationEvent;->extraCallback:Lo/AFSensorManager$onNavigationEvent;

    if-eqz v0, :cond_0

    .line 103
    iput-object v1, v0, Lo/AFSensorManager$onNavigationEvent;->extraCallback:Lo/AFSensorManager$onNavigationEvent;

    :cond_0
    if-eqz v1, :cond_1

    .line 106
    iput-object v0, v1, Lo/AFSensorManager$onNavigationEvent;->onMessageChannelReady:Lo/AFSensorManager$onNavigationEvent;

    :cond_1
    const/4 v2, 0x0

    .line 109
    iput-object v2, p1, Lo/AFSensorManager$onNavigationEvent;->onMessageChannelReady:Lo/AFSensorManager$onNavigationEvent;

    .line 110
    iput-object v2, p1, Lo/AFSensorManager$onNavigationEvent;->extraCallback:Lo/AFSensorManager$onNavigationEvent;

    .line 112
    iget-object v2, p0, Lo/AFSensorManager;->ICustomTabsCallback:Lo/AFSensorManager$onNavigationEvent;

    if-ne p1, v2, :cond_2

    .line 113
    iput-object v1, p0, Lo/AFSensorManager;->ICustomTabsCallback:Lo/AFSensorManager$onNavigationEvent;

    .line 116
    :cond_2
    iget-object v1, p0, Lo/AFSensorManager;->onNavigationEvent:Lo/AFSensorManager$onNavigationEvent;

    if-ne p1, v1, :cond_3

    .line 117
    iput-object v0, p0, Lo/AFSensorManager;->onNavigationEvent:Lo/AFSensorManager$onNavigationEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized ICustomTabsCallback()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, Lo/AFSensorManager;->onNavigationEvent:Lo/AFSensorManager$onNavigationEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 143
    monitor-exit p0

    return-object v0

    .line 146
    :cond_0
    :try_start_1
    iget-object v1, v0, Lo/AFSensorManager$onNavigationEvent;->onNavigationEvent:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 1152
    iget-object v2, v0, Lo/AFSensorManager$onNavigationEvent;->onNavigationEvent:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1153
    invoke-direct {p0, v0}, Lo/AFSensorManager;->onNavigationEvent(Lo/AFSensorManager$onNavigationEvent;)V

    .line 1154
    iget-object v2, p0, Lo/AFSensorManager;->extraCallback:Landroid/util/SparseArray;

    iget v0, v0, Lo/AFSensorManager$onNavigationEvent;->onPostMessage:I

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized extraCallback(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lo/AFSensorManager;->extraCallback:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/AFSensorManager$onNavigationEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 59
    monitor-exit p0

    return-object p1

    .line 61
    :cond_0
    :try_start_1
    iget-object v0, p1, Lo/AFSensorManager$onNavigationEvent;->onNavigationEvent:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    .line 62
    invoke-direct {p0, p1}, Lo/AFSensorManager;->ICustomTabsCallback(Lo/AFSensorManager$onNavigationEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onPostMessage(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lo/AFSensorManager;->extraCallback:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AFSensorManager$onNavigationEvent;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lo/AFSensorManager$onNavigationEvent;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {v0, p1, v1}, Lo/AFSensorManager$onNavigationEvent;-><init>(ILjava/util/LinkedList;)V

    .line 77
    iget-object v1, p0, Lo/AFSensorManager;->extraCallback:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    :cond_0
    iget-object p1, v0, Lo/AFSensorManager$onNavigationEvent;->onNavigationEvent:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 82
    invoke-direct {p0, v0}, Lo/AFSensorManager;->ICustomTabsCallback(Lo/AFSensorManager$onNavigationEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
